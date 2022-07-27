<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="superAdminDashbord.aspx.cs" Inherits="LSM.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
            <img src="img/avatar.png" class="avatarIcon">
            <label class="card-body display-7 fw-bold ls-tight">
                Good morning,<br /><span class="text-primary"> Admin</span>
            </label>
        </header>
        <navbar class="nav">
            <ul class="navlist">
                <li class="navitem" id="umm">
                    <a href="#" id="ana">
                        <img src="img/avatar.png" class="avatarIcon">
                    </a>
                </li>
                <li class="navitem">
                    <a href="home.aspx" id="ana">
                        <i class="fa-solid fa-house" id="iconh"></i>
                        <p class="navitemlabel" id="iconh">Home</p>
                    </a>
                </li>
                <li class="navitem">
                    <a href="homework.aspx" id="ana">
                        <i class="fa-solid fa-laptop-file"></i>
                        <p class="navitemlabel" id="iconh">Homework</p>
                    </a>
                </li>
                <li class="navitem">
                    <a href="fees.aspx" id="ana">
                        <i class="fa-solid fa-money-bills"></i>
                        <p class="navitemlabel" id="iconh">Fees</p>
                    </a>
                </li>
                <li class="navitem">
                    <a href="notice.aspx" id="ana">
                        <i class="fa-solid fa-circle-exclamation"></i>
                        <p class="navitemlabel" id="iconh">Notice</p>
                    </a>
                </li>
                <li class="navitem">
                    <a href="examination.aspx" id="ana">
                        <i class="fa-solid fa-flask-vial"></i>
                        <p class="navitemlabel" id="iconh">Examination</p>
                    </a>
                </li>
                <li class="navitem" id="umm">
                    <a href="default3.aspx" id="ana">
                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                        <p class="navitemlabel" id="iconh">Log out</p>
                    </a>
                </li>
            </ul>
        </navbar>
</asp:Content>