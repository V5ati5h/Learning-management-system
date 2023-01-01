<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherDashboard/main.Master" AutoEventWireup="true" CodeBehind="addAssignment.aspx.cs" Inherits="LMS.TeacherDashboard.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mb-0">
        <div class="col">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddDepart_SelectedIndexChanged">
                    <asp:ListItem>Select Department</asp:ListItem>
                </asp:DropDownList>
                <label for="ddDepart">Department</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddClass" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddClass_SelectedIndexChanged">
                    <asp:ListItem>Select Class</asp:ListItem>
                </asp:DropDownList>
                <label for="ddClass">Department</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddSem" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddSem_SelectedIndexChanged">
                    <asp:ListItem>Select Semister</asp:ListItem>
                </asp:DropDownList>
                <label for="ddSem">Semester</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddDiv" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddDiv_SelectedIndexChanged">
                    <asp:ListItem>Select Division</asp:ListItem>
                </asp:DropDownList>
                <label for="ddDiv">Division</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="card mt-0">
                <div class="card-body">
                    <div class="row text-center">
                        <h1 class="display-5 fw-bold ls-tight">New
                            <span class="text-success">Assignment</span>
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
                                <div class="col-lg-6">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox CssClass="form-control" ID="txtAdorGiNo" runat="server" placeholder="Title"></asp:TextBox>
                                        <label for="txtAdorGiNo">Title</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <asp:FileUpload class="form-control" ID="fileUpload" runat="server" placeholder="upload file" />
                                        <label for="fileUpload">Upload file</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                <div class="form-floating mb-3">
                                    <asp:TextBox CssClass="form-control" ID="description" runat="server" TextMode="MultiLine" Height="100" placeholder="Description"></asp:TextBox>
                                    <label for="description">Description</label>
                                </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <input type="date" class="form-control" id="assignDate" runat="server" placeholder="Assigned Date" />
                                        <label for="txtSearch">Assigned Date</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-floating mb-3">
                                        <input type="date" class="form-control" id="endDate" runat="server" placeholder="End Date" />
                                        <label for="txtSearch">End Date</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group ms-5 me-5">
                            <asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="insertData" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
