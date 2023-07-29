<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GotMoney.aspx.cs" Inherits="zachswogger._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
</asp:Content>
