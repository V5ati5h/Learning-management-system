<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherDashboard/main.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="LMS.TeacherDashboard.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        document.getElementById("hadd").style.display = "none";
        document.getElementById("naav").style.display = "none";
        document.getElementById("holdkaar").style.padding = "0";
    </script>
    <div class="card">
        <div class="card-body d-flex flex-column align-items-center justify-content-center">
            <h1 class="text-success">
                Logout Sucessfully
            </h1>
            <p>Please navigate to login page....</p>
            <asp:Button ID="btn" CssClass="btn btn-success fw-bold" runat="server" Text="Go to login page" OnClick="btn_Click" />
        </div>
    </div>
</asp:Content>
