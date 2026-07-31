using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject
{
    public partial class BusBookingSearchDetails : System.Web.UI.Page
    {
        #region Global Variable
         private readonly SqlConnection connString = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString());
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindSearchDetails();
            }
        }

        private void bindSearchDetails()
        {
            try
            {
                DataSet dsGetData = new DataSet();
                using (SqlCommand sqlCmd = new SqlCommand("ispGetAvailableBusDetails", connString))
                {
                    sqlCmd.CommandType = CommandType.StoredProcedure;

                    // Adding the basic search parameters
                    sqlCmd.Parameters.AddWithValue("@Origin", Convert.ToString(Request.QueryString["Origin"]));
                    sqlCmd.Parameters.AddWithValue("@Destination", Convert.ToString(Request.QueryString["Destination"]));
                    sqlCmd.Parameters.AddWithValue("@TravelDate", Convert.ToString(Request.QueryString["TravelDate"]));

                    // Adding additional filter parameters (if any)
                    string busType = Request.QueryString["BusType"];
                    if (!string.IsNullOrEmpty(busType))
                    {
                        sqlCmd.Parameters.AddWithValue("@BusType", busType);
                    }

                    string minFare = Request.QueryString["MinFare"];
                    string maxFare = Request.QueryString["MaxFare"];
                    if (!string.IsNullOrEmpty(minFare) && !string.IsNullOrEmpty(maxFare))
                    {
                        sqlCmd.Parameters.AddWithValue("@MinFare", minFare);
                        sqlCmd.Parameters.AddWithValue("@MaxFare", maxFare);
                    }

                    // Open the connection
                    if (connString.State == ConnectionState.Closed)
                    {
                        connString.Open();
                    }

                    // Fetch the data
                    SqlDataAdapter sda = new SqlDataAdapter(sqlCmd);
                    sda.Fill(dsGetData);

                    // Bind data to GridView if records exist
                    if (dsGetData.Tables[0].Rows.Count > 0)
                    {
                        hlinkSearch.Visible = false;
                        gvBusDetails.DataSource = dsGetData.Tables[0];
                        gvBusDetails.DataBind();
                    }
                    else
                    {
                        ShowNoDataAlert();
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception (or handle it accordingly)
                ShowNoDataAlert();
            }
            finally
            {
                if (connString.State == ConnectionState.Open)
                {
                    connString.Close();
                }
            }
        }

        protected void gvBusDetails_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                HiddenField hdnNewBusID = (HiddenField)e.Row.FindControl("hdnBusID");
                HiddenField hdnNewSeatRow = (HiddenField)e.Row.FindControl("hdnSeatRow");
                HiddenField hdnNewSeatCol = (HiddenField)e.Row.FindControl("hdnSeatColumn");
                HyperLink hlnkSelect = (HyperLink)e.Row.FindControl("hplnkSelect");
                Label lblFare = (Label)e.Row.FindControl("lblFare");

                hlnkSelect.NavigateUrl = $"SeatDetails.aspx?BusID={hdnNewBusID.Value}&Row={hdnNewSeatRow.Value}&Column={hdnNewSeatCol.Value}" +
                                         $"&Origin={Request.QueryString["Origin"]}&Destination={Request.QueryString["Destination"]}" +
                                         $"&TravelDate={Request.QueryString["TravelDate"]}&Fare={lblFare.Text}";
            }
        }

        private void ShowNoDataAlert()
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                "alert('Trip not available, Please search again with different criteria')", true);
            hlinkSearch.Visible = true;
        }
    }
}
