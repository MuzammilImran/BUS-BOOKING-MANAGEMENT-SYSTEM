<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BusBookingProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            
        }

        .container {
            width: 100%;
            margin: 0 auto;
            padding: 20px;
        }

        .centered-form {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .panel {
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 40px;
            width: 400px;
            text-align: center;
        }

        .panel-title {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
            color:black;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-control {
            border-radius: 3px;
            border: 1px solid #ccc;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
        }

        .btn-search {
            background-color: #007bff;
            border: none;
            color: #fff;
            border-radius: 3px;
            padding: 12px 20px;
            font-size: 18px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-search:hover {
            background-color: #0056b3;
        }
    </style>
    <link  rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#txtDate").datepicker();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="centered-form">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Search For Available Buses</h3>
                </div>
                <div class="panel-body">
                    <div id="divMessage" runat="server"></div>
                    <div class="form-group">
                        <label for="ddlOrigin" style="color:black; font-family:'Times New Roman', Times, serif" class="control-label">From</label>
                        <asp:DropDownList ID="ddlOrigin" class="form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="ddlDestination"  style="color:black; font-family:'Times New Roman', Times, serif"style="color:black" class="control-label">To</label>
                        <asp:DropDownList ID="ddlDestination" class="form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtDate"  style="color:black; font-family:'Times New Roman', Times, serif" class="control-label">Travel Date</label>
                        <asp:TextBox ID="txtDate" runat="server" placeholder=" DD/MM/YYYY Format" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnSearch" runat="server" Text="Search Buses" CssClass="btn btn-search" OnClick="btnSearch_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
