<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="superAdminRegester.aspx.cs" Inherits="LSM.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <style>
        header{
            display: none;
            color: red;
        }
        .nav .navlist{
            display: none;
        }
    </style>
    <div class="container mb-4">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row text-center">
                            <h1 class="display-5 fw-bold ls-tight text-primary">Admin regester</h1>
                        </div>
                        <asp:label CssClass="text-center" id="libmsg" runat="server" Text="result" Visible="false"></asp:label>
                        <hr />
                        <div class="row">
                            <div class="col gap-1">
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="txtadminusername" runat="server" placeholder="Username"></asp:TextBox>
                                    <label for="txtadminusername">Username</label>
                                </div>
                                <div class="form-floating mb-3">
                                     <asp:TextBox  CssClass="form-control" ID="txtadminpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <label for="txtadminpassword">Password</label>
                                </div>
                                <div class="row form-group ms-5 me-5">
                                    <asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="SAButtonreg" runat="server" Text="Regester" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
