<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherDashboard/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LMS.TeacherDashboard.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <asp:label CssClass="text-center" id="libmsg" runat="server" Text="result"></asp:label>
        <asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="Button2" runat="server" Text="Attandence" OnClick="Button2_Click" />
    </div>
</asp:Content>
