<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.BookingReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 6%; font-family: Arial, sans-serif; padding: 20px; border: 1px solid #ddd; max-width: 800px; background-color: #f9f9f9;">
        <!-- Ticket Report Grid -->
        <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" Width="100%" Font-Size="12" OnRowCommand="gdTicketReport_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Sr.No">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="PNR No" DataField="PNRNo" />
                <asp:BoundField HeaderText="Total Booked Tickets" DataField="TotalTickets" />
                <asp:BoundField HeaderText="Booking Amount" DataField="TotalAmount" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtndownloadTicket" runat="server" CommandName="Download Ticket" CommandArgument='<%# Container.DataItemIndex %>'>Download Ticket</asp:LinkButton>
                        <asp:HiddenField ID="hdnPNRNo" runat="server" Value='<%# Eval("PNRNo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <!-- Ticket Section (Hidden initially) -->
        <div id="ticket" runat="server" visible="false" style="font-family: Arial, sans-serif; padding: 20px; border: 1px solid #ddd; margin-top: 50px; background-color: #ffffff;">
            <!-- Logo and Address -->
            <div style="text-align: center; margin-bottom: 20px;">
                <h2 style="font-weight: bold; margin-bottom: 5px;">Bus Booking Systems</h2>
                <p style="margin: 0;">896 Rigoberto, Gardens Apt. 838, Kuhnstad, BC X5T5C2</p>
                <p style="margin: 0;">(589) 589-965-25</p>
            </div>

            <!-- PNR Details -->
            <div style="margin-bottom: 20px;">
                <p style="font-weight: bold;">PNR No: <span style="font-weight: normal;"><asp:Label ID="lblTransactionNo" runat="server"></asp:Label></span></p>
                <p style="font-weight: bold;">Total Tickets: <span style="font-weight: normal;"><asp:Label ID="lblTotalTickets" runat="server"></asp:Label></span></p>
                <p style="font-weight: bold;">Total Amount: <span style="font-weight: normal;"><asp:Label ID="lblTotalAmount" runat="server"></asp:Label></span></p>
                <p style="font-weight: bold;">Bus Name: <span style="font-weight: normal;"><asp:Label ID="lblBusName" runat="server"></asp:Label></span></p>
            </div>

            <!-- Passenger's Details -->
            <h3 style="font-weight: bold; font-family: Arial, sans-serif; border-top: 1px solid #ddd; padding-top: 10px;">Passenger's Details</h3>
            <asp:GridView ID="gdPaxDetails" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="50" CssClass="table table-hover table-bordered" Style="margin-top: 20px; width: 100%; font-family: Arial, sans-serif;">
                <Columns>
                    <asp:TemplateField HeaderText="Sr.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                        <HeaderStyle CssClass="header-cell" />
                        <ItemStyle CssClass="data-cell" />
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="First Name" DataField="Fname">
                        <HeaderStyle CssClass="header-cell" />
                        <ItemStyle CssClass="data-cell" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Last Name" DataField="Lname">
                        <HeaderStyle CssClass="header-cell" />
                        <ItemStyle CssClass="data-cell" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Contact" DataField="Contact">
                        <HeaderStyle CssClass="header-cell" />
                        <ItemStyle CssClass="data-cell" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Seat No" DataField="SeatNo">
                        <HeaderStyle CssClass="header-cell" />
                        <ItemStyle CssClass="data-cell" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Travel Date" DataField="TravelDate">
                        <HeaderStyle CssClass="header-cell" />
                        <ItemStyle CssClass="data-cell" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="From" DataField="Origin">
                        <HeaderStyle CssClass="header-cell" />
                        <ItemStyle CssClass="data-cell" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="To" DataField="Destination">
                        <HeaderStyle CssClass="header-cell" />
                        <ItemStyle CssClass="data-cell" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Boarding Place" DataField="PlaceName">
                        <HeaderStyle CssClass="header-cell" />
                        <ItemStyle CssClass="data-cell" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>

            <!-- Total Amount Section -->
            <div style="text-align: right; margin-top: 30px;">
                <p><strong>SUBTOTAL:</strong> $XXX.XX</p>
                <p><strong>SALES TAX:</strong> $XX.XX</p>
                <h2><strong>TOTAL: $XXX.XX</strong></h2>
            </div>

            <!-- Footer with Barcode -->
            <div style="text-align: center; margin-top: 50px; border-top: 1px dashed #000; padding-top: 20px;">
                <p>***THANK YOU***</p>
                <div style="margin-top: 20px;">
                    <img src="barcode-placeholder.png" alt="Barcode" style="width: 200px; height: 50px;" />
                </div>
                <p style="margin-top: 20px; font-size: 10pt;">Thank you for booking your ticket. Have a safe journey! ALLAH is always with you :)</p>
            </div>
        </div>
    </div>
</asp:Content>
