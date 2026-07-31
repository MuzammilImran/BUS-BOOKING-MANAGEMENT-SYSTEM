<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BusBookingProject.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    /* Enhanced styles for the page */
.welcome-section {
    margin-top: 50.5px;
    padding: 120px 0;
    background: linear-gradient(to bottom, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), 
                url('/img/img2.jpg') no-repeat center center/cover;
    text-align: center;
    color: white;
    background-size: cover;
    
}
.welcome-section h1 {
    font-size: 50px; 
    margin-bottom: 20px;
    font-weight: bold;
    color: #fff;
    text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.7); 
}
.welcome-section p {
    font-size: 20px;
    line-height: 1.8;
    margin-bottom: 40px;
    color: #ddd;
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
}
.cta-button {
    display: inline-block;
    padding: 18px 36px;
    background-color: #ff6600;
    color: #fff;
    text-decoration: none;
    font-size: 20px;
    font-weight: bold;
    border-radius: 8px;
    transition: background-color 0.3s ease, transform 0.3s ease;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}
.cta-button:hover {
    background-color: #ff3300;
    color: #fff;
    transform: translateY(-3px);
}
.features-services-section {
    padding: 60px 0;
}
.features-section, .services-section {
    background-color: #f4f4f4;
    padding: 30px;
}
.features-section h2, .services-section h2 {
    font-size: 36px;
    margin-bottom: 30px;
    color: #333;
    font-weight: bold;
}
.features-section .feature-list, .services-section .service-list {
    list-style: none;
    padding: 0;
    margin: 0;
}
.features-section .feature-list li, .services-section .service-list li {
    font-size: 18px;
    margin-bottom: 20px;
    color: #555;
    padding-left: 50px;
    position: relative;
    text-align: left;
}
.features-section .feature-list li:before, .services-section .service-list li:before {
    content: url('images/check-icon.png'); 
    position: absolute;
    left: 10px;
    top: 50%;
    transform: translateY(-50%);
}

/* Testimonials Section */
.testimonials-section {
    background-color: #f4f4f4;
    padding: 30px;
    text-align: center;
}
.testimonials-section h2 {
    font-size: 36px;
    margin-bottom: 30px;
    color: #333;
    font-weight: bold;
}
.testimonials-section ul {
    list-style: none;
    padding: 0;
    margin: 0;
}
.testimonials-section li {
    font-size: 18px;
    margin-bottom: 20px;
    color: #555;
    padding-left: 50px;
    position: relative;
    text-align: left;
}
.testimonials-section li:before {
    content: url('images/check-icon.png'); 
    position: absolute;
    left: 10px;
    top: 50%;
    transform: translateY(-50%);
}

/* Contact Us Section */
.contact-section {
    background-color: #f4f4f4;
    padding: 30px;
    text-align: left;
    color:black;
}
.contact-section h2 {
    font-size: 36px;
    margin-bottom: 30px;
    color: black;
    font-weight: bold;
    
}
.contact-section .contact-form {
    max-width: 600px;
    margin: 0 auto;
    color:black;
    text-align: left;
}
.contact-section .contact-form input, 
.contact-section .contact-form textarea {
    width: calc(100% - 22px);
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 4px;
    border-color:black;
    color:black;
    
}
.contact-section .contact-form button {
    padding: 15px 30px;
    background-color: #ff6600;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    border-color:black
        color:black;
}
.contact-section .contact-form button:hover {
    background-color: #ff3300;
}

/* Popular Routes Section */
.routes-section {
    background-color: #f4f4f4;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    margin-bottom: 30px;
}

.routes-section h2 {
    font-size: 36px;
    margin-bottom: 30px;
    color: #333;
    font-weight: bold;
    text-align: center;
}

.routes-section ul {
    list-style: none;
    padding-left: 0;
}

.routes-section li {
    font-size: 18px;
    margin-bottom: 20px;
    color: #555;
    padding-left: 50px;
    position: relative;
}

.routes-section li:before {
    content: url('images/check-icon.png'); /* Replace with your icon URL */
    position: absolute;
    left: 10px;
    top: 50%;
    transform: translateY(-50%);
}

/* Latest News Section */
.news-section {
    background-color: #f4f4f4;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    margin-bottom: 30px;
}

.news-section h2 {
    font-size: 36px;
    margin-bottom: 30px;
    color: #333;
    font-weight: bold;
    text-align: center;
}

.news-section ul {
    list-style: none;
    padding-left: 0;
}

.news-section li {
    font-size: 18px;
    margin-bottom: 20px;
    color: #555;
    padding-left: 50px;
    position: relative;
}

.news-section li:before {
    content: url('images/check-icon.png'); /* Replace with your icon URL */
    position: absolute;
    left: 10px;
    top: 50%;
    transform: translateY(-50%);
}
}
        </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Welcome Section -->
    <div class="container welcome-section">
        <div class="row">
            <div class="col-lg-12">
                <h1>Welcome to our Bus Booking System</h1>
                <p>
                    Conveniently book bus tickets from anywhere, anytime with our easy-to-use online platform.
                </p>
                <a href="Home.aspx" class="cta-button">Book Now</a>
            </div>
        </div>
    </div>

    <!-- Features & Services Section -->
    <div class="container features-services-section">
        <div class="row">
            <div class="col-lg-6">
                <div class="features-section">
                    <h2>Key Features</h2>
                    <ul class="feature-list">
                        <li>Fast & Easy Booking Process</li>
                        <li>No Booking Fees - Transparent Pricing</li>
                        <li>Secure Payment Options</li>
                        <li>User-friendly Interface</li>
                        <li>24/7 Customer Support</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="services-section">
                    <h2>Our Services</h2>
                    <ul class="service-list">
                        <li>Luxury Bus Travel</li>
                        <li>Bus Charter Services</li>
                        <li>Airport Transfers</li>
                        <li>Corporate Travel Solutions</li>
                        <li>Local Travel Solutions</li>

                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Testimonials & Contact Us Section -->
    <div class="container testimonials-contact-section">
        <div class="row">
            <div class="col-lg-6">
                <h2>Customer Testimonials</h2>
                <ul class="testimonial-list">
                    <li>"The booking process was seamless and the bus was very comfortable!" - John Doe</li>
                    <li>"Great service and friendly staff. Highly recommend!" - Jane Smith</li>
                    <li>"The best bus travel experience I've had. Will use again!" - Emily Johnson</li>
                </ul>
            </div>
            <div class="col-lg-6">
                <div class="contact-section">
                    <h2>Contact Us</h2>
                    <form class="contact-form" action="/submit-form" method="post">
                        <input type="text" name="name" placeholder="Your Name" required />
                        <input type="email" name="email" placeholder="Your Email" required />
                        <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
                        <button type="submit">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Popular Routes & Latest News Section -->
    <div class="container routes-news-section">
        <div class="row">
            <div class="col-lg-6">
                <h2>Popular Routes</h2>
                <ul class="route-list">
                    <li>Karachi to Islamabad - 12 hours</li>
                    <li>Lahore to Karachi - 10 hours</li>
                    <li>Islamabad to Skardu - 15 hours</li>
                    <li>Islamabad to Kashmir - 14 hours</li>
                </ul>
            </div>
            <div class="col-lg-6">
                <h2>Latest News</h2>
                <ul class="news-list">
                    <li>New Routes Added to Our Network - August 2024</li>
                    <li>Special Discounts for Summer Travel - July 2024</li>
                    <li>Enhanced Safety Measures for COVID-19 - June 2024</li>
                </ul>
            </div>
        </div>
    </div>
    <br /><br /><br />
</asp:Content>
