<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="addFacultyMain.aspx.cs" Inherits="LSM.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mb-4">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row text-center">
                            <h1 class="display-5 fw-bold ls-tight">Regester new<br />
                                    <span class="text-primary"> faculty</span>
                                </h1>
                        </div>
                        <asp:label CssClass="text-center" id="libmsg" runat="server" Text="result" Visible="false"></asp:label>
                        <hr />
                        <div class="row">
                            <div class="col gap-1">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-floating mb-3">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtfname" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                            <asp:TextBox  CssClass="form-control" ID="txtfname" runat="server" placeholder="First name"></asp:TextBox>
                                            <label for="txtfname">First name</label>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-floating mb-3">
                                            <asp:TextBox  CssClass="form-control" ID="txtmname" runat="server" placeholder="Middle name"></asp:TextBox>
                                            <label for="txtmname">Middle name</label>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-floating mb-3">
                                            <asp:TextBox  CssClass="form-control" ID="txtlname" runat="server" placeholder="Last name"></asp:TextBox>
                                            <label for="txtlname">Last name</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtmobileno" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="10 digits required" ControlToValidate="txtmobileno" ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    <asp:TextBox  CssClass="form-control" ID="txtmobileno" runat="server" placeholder="Mobile no" TextMode="Number"></asp:TextBox>
                                    <label for="txtmobileno">Mobile no</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invallid email" ControlToValidate="txtemailaddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <asp:TextBox  CssClass="form-control" ID="txtemailaddress" runat="server" placeholder="Email addresse" TextMode="Email"></asp:TextBox>
                                    <label for="txtemailaddress">Email address</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="txtdept" runat="server" placeholder="Department no"></asp:TextBox>
                                    <label for="txtdept">Department no</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="txtdeptname" runat="server" placeholder="Department no"></asp:TextBox>
                                    <label for="txtdeptname">Department name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="txtusername" runat="server" placeholder="Username"></asp:TextBox>
                                    <label for="txtusername">Username</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="txtpassword" runat="server" textmode="password"  placeholder="Password"></asp:TextBox>
                                    <label for="txtpassword">Password</label>
                                </div>
                                <div class="row form-group ms-5 me-5">
                                    <asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Regester" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
