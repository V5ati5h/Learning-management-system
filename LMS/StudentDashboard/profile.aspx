<%@ Page Title="" Language="C#" MasterPageFile="~/StudentDashboard/main.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="LMS.StudentDashboard.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <div class="card m-3">
                <div class="card-body">
                    <div class="row text-center">
                        <h1 class="display-5 fw-bold ls-tight">Welcome
                                   
                            <asp:Label ID="Label1" CssClass="text-sucess" runat="server" Text=""></asp:Label>
                        </h1>
                    </div>
                    <asp:Label CssClass="text-center" ID="libmsg" runat="server" Text="result" Visible="false"></asp:Label>
                    <hr />
                    <!-- Nav tabs -->
                    <ul class="nav nav-pills mb-3" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="bacicinfo-tab" data-bs-toggle="tab" data-bs-target="#bacicinfo" type="button" role="tab" aria-controls="basicinfo" aria-selected="true">Basic Infromation</button>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="bacicinfo" role="tabpanel" aria-labelledby="bacicinfo-tab">
                            <div class="row">
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtGr" runat="server" placeholder="Department Number" Enabled="false"></asp:TextBox>
                                        <label for="txtGr">GrNO</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtRoll" runat="server" placeholder="Department Number" Enabled="false"></asp:TextBox>
                                        <label for="txtRoll">Roll No</label>
                                    </div>
                                </div>
                                <div class="col"></div>
                                <div class="col"></div>
                                </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtfname" runat="server" placeholder="Father Name"></asp:TextBox>
                                        <label for="txtfname">First Name</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtmname" runat="server" placeholder="Mother Name"></asp:TextBox>
                                        <label for="txtmname">Middle Name</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtlname" runat="server" placeholder="Last Name"></asp:TextBox>
                                        <label for="txtlname">Last Name</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="txtDob" runat="server" placeholder="Date of birth" />
                                        <label for="Txtdob">Date of birth</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtDiv" runat="server" placeholder="Department Number" Enabled="false"></asp:TextBox>
                                        <label for="txtdept">Div Name</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtClass" runat="server" placeholder="Department Number" Enabled="false"></asp:TextBox>
                                        <label for="txtdept">Class Name</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtSem" runat="server" placeholder="Department Number" Enabled="false"></asp:TextBox>
                                        <label for="txtdept">Sem Name</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtdept" runat="server" placeholder="Department Name" Enabled="false"></asp:TextBox>
                                        <label for="txtdeptname">Depart Name</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtemailaddress" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                        <label for="txtemailaddress">Email Address</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtmobileno" runat="server" placeholder="Mobile Number" TextMode="Number"></asp:TextBox>
                                        <label for="txtmobileno">Mobile Number</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtusername" runat="server" placeholder="Username" Enabled="false"></asp:TextBox>
                                        <label for="txtusername">Username</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtpassword" runat="server" TextMode="password" placeholder="Password"></asp:TextBox>
                                        <label for="txtpassword">Password</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group ms-5 me-5">
                        <asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="Button1" runat="server" Text="UPDATE" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
