<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BusBookingProject.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Custom styles for the About Us page */
        .about-section {
            padding: 60px 0;
            background-color: #f8f9fa;
            text-align: center;
        }
        .about-section h2 {
            font-size: 42px;
            margin-bottom: 20px;
            color: #343a40;
            font-weight: bold;
        }
        .about-section p {
            font-size: 20px;
            line-height: 1.8;
            margin-bottom: 40px;
            color: #6c757d;
            max-width: 800px;
            margin: 0 auto;
        }
        .team-section {
            padding: 60px 0;
            background-color: #fff;
            text-align: center;
        }
        .team-section .section-title {
            font-size: 42px;
            margin-bottom: 40px;
            color: #343a40;
            font-weight: bold;
        }
        .team-member {
            margin-bottom: 40px;
        }
        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 20px;
            display: block;
            margin: 0 auto;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .team-member strong {
            display: block;
            font-size: 20px;
            margin-bottom: 5px;
            color: #343a40;
        }
        .team-member span {
            font-size: 18px;
            color: #6c757d;
        }
        .section {
            padding: 60px 0;
            background-color: #f8f9fa;
            text-align: center;
        }
        .section .section-title {
            font-size: 42px;
            margin-bottom: 40px;
            color: #343a40;
            font-weight: bold;
        }
        .section p {
            font-size: 20px;
            line-height: 1.8;
            margin-bottom: 40px;
            color: #6c757d;
            max-width: 800px;
            margin: 0 auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="about-section">
        <div class="container">
            <h2>About Us</h2>
            <p>
                Welcome to our Intra Bus Management System! Our system is developed by Abdul Haseeb, Abdul Malik, and Sheikh Muzammil. It is a database management project built using the MVC architecture. All data is retrieved from and stored in a SQL Server database.
            </p>
            <p>
                Our goal is to provide a comprehensive and efficient bus management solution that meets the needs of our users. We aim to streamline the process of bus booking, ensuring a seamless experience for both passengers and administrators.
            </p>
            <p>
                Thank you for choosing our platform. We are committed to continuously improving and enhancing our services to serve you better.
            </p>
        </div>
    </div>

    <div class="team-section">
        <div class="container">
            <h2 class="section-title">Our Team</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="~/img/person-1.jpg" alt="Abdul Haseeb">
                        <strong>Abdul Haseeb</strong>
                        <span>Lead Developer</span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="mateen.jpg" alt="Abdul Malik">
                        <strong>Abdul Malik</strong>
                        <span>Co-developer</span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="mateen.jpg" alt="Sheikh Muzammil">
                        <strong>Sheikh Muzammil</strong>
                        <span>Co-developer</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <h2 class="section-title">Our Mission</h2>
            <p>
                Our mission is to revolutionize the bus management industry by providing innovative solutions that enhance the travel experience for our users.
            </p>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <h2 class="section-title">Our Vision</h2>
            <p>
                Our vision is to become the leading bus management platform globally, recognized for our commitment to excellence, reliability, and customer satisfaction.
            </p>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <h2 class="section-title">Contact Us</h2>
            <p>
                If you have any questions or inquiries, feel free to contact us at <a href="mailto:info@busmanagement.com">info@busmanagement.com</a>.
            </p>
        </div>
    </div>
</asp:Content>
