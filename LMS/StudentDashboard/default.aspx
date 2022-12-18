<%@ Page Title="" Language="C#" MasterPageFile="~/StudentDashboard/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LMS.StudentDashboard.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header text-light bg-success fw-bold p-2">Present</div>
                <div class="card-body">
                    <asp:Label ID="totalPresent" runat="server"></asp:Label>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-header text-light bg-danger fw-bold p-2">Abesnt</div>
                <div class="card-body">
                    <asp:Label ID="totalAbesnt" runat="server"></asp:Label>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-header text-light bg-primary fw-bold p-2">Leave</div>
                <div class="card-body">
                    <asp:Label ID="totalLeave" runat="server"></asp:Label>
                </div>
            </div>
        </div>
</asp:Content>
