<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GotMoney.aspx.cs" Inherits="zachswogger._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="GotMoney.aspx.css" />
    <script type="text/javascript" src="GotMoney.aspx.js"></script>

    <!-- Project Description -->
    <div class="jumbotron">
        <h1 class="display-4">What is GabPay?</h1>
        <p class="lead">GabPay is best described as a virtual wallet. Similar to Cashapp and Venmo, users are able to send and receive money that they have loaded onto their account or straight from their bank accounts.</p>
        <hr class="my-4">
        <p>Some of my work on GabPay includes:</p>
        <ul>
            <li>Assisting with dark mode implementation</li>
            <li>Developing a system to allow administrators to reverse transactions</li>
            <li>Implementing an address validation and archiving system from nothing but concept</li>
            <li>Creating a birth date tracking system for users to meet federal compliance standards</li>
            <li>Countless bug fixes and quality of life improvements</li>
        </ul>
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="https://live.got.money" role="button" target="_blank">Visit GabPay</a>
            <br />
            <p class="disclaimer">Please note, this is a live system and any information you provide will be stored by Green By Phone Inc.</p>
        </p>
    </div>

    <!-- Project images -->

    <div class="slick">
        <div class="slick-card-holder">
            <div class="card-group">
                <div class="card">
                    <img class="card-img-top" src="../Images/GabPayLight.jpg" alt="GabPay Light Mode">
                    <div class="card-body">
                        <h5 class="card-title">Light Mode</h5>
                        <p class="card-text">Prior to my work on the dark mode portion of Gab Pay, this was the only way users could see the application.</p>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="../Images/GabPayDark.jpg" alt="GabPay Dark Mode">
                    <div class="card-body">
                        <h5 class="card-title">Dark Mode</h5>
                        <p class="card-text">After I assisted with the dark mode implementation, we received much praise from users saying the application was much easier on the eyes and nicer to use.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="slick-card-holder">
            <div class="card zoom" style="width: 18rem;">
                <img class="card-img-top" src="../Images/GabPayHomeScreen.jpg" alt="GabPay Home Screen">
                <div class="card-body">
                    <h5 class="card-title">Gab Pay Home Screen</h5>
                    <p class="card-text">Here is the home screen for GabPay. Here, you could load funds, withdraw funds and see recent transactions.</p>
                </div>
            </div>
        </div>
        <div class="slick-card-holder">
            <div class="card zoom" style="width: 18rem;">
                <img class="card-img-top" src="../Images/GabPaySettingsPage.jpg" alt="GabPay Settings Page">
                <div class="card-body">
                    <h5 class="card-title">Gab Pay Settings Page</h5>
                    <p class="card-text">Here is the settings page for GabPay. Here, you can change personal information, add and remove bank accounts, change your password, apply for account upgrades, etc.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
