<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="superAdminDashbord.aspx.cs" Inherits="LSM.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-4 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                         <h1>100</h1>
                        <i class="fa-solid fa-person-chalkboard" id="iconh" style="font-size: 3rem;"></i>
                    </div>
                </div>
                <div class="card-footer bg-danger fw-bold text-center text-white">Total Staff</div>
            </div>
        </div>
        <div class="col-lg-4 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                         <h1>100</h1>
                        <i class="fa-solid fa-graduation-cap" id="iconh" style="font-size: 3rem;"></i>
                    </div>
                </div>
                <div class="card-footer bg-danger fw-bold text-center text-white">Total Staff</div>
            </div>
        </div>
        <div class="col-lg-4 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                         <h1>100</h1>
                        <i class="fa-solid fa-book" id="iconh" style="font-size: 3rem;"></i>
                    </div>
                </div>
                <div class="card-footer bg-danger fw-bold text-center text-white">Total Staff</div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header text-light bg-danger text-center fw-bold p-2">Contact Requests</div>
                <div class="card-body">
                </div>
            </div>
        </div>
    </div>
</asp:Content>