<%@ Page Title="" Language="C#" MasterPageFile="~/TeachersDashboard.Master" AutoEventWireup="true" CodeBehind="defaultTeacher.aspx.cs" Inherits="LSM.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        header{
            display: none;
        }
        .nav .navlist{
            display: none;
        }
    </style>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container mb-4">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row text-center">
                            <h1 class="display-5 fw-bold ls-tight">Login to<br />
                                    <span class="text-success">Dashbord</span>
                                </h1>
                        </div>
                        <asp:Label id="libmsg" CssClass="text-center" runat="server" Visible="false"></asp:Label>
                        <hr />
                        <div class="row">
                            <div class="col gap-1">
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="txtlogusername" runat="server" placeholder="Username"></asp:TextBox>
                                    <label for="txtadminlogusername">Username</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="txtlogpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <label for="txtadminlogpassword">Password</label>
                                </div>
                                <div class="row form-group ms-5 me-5">
                                    <asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
