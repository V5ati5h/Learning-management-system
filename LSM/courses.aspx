<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="LSM.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <div class="col-lg-3 mb-2">
            <div class="card text-center">
                <div class="card-header text-light bg-danger fw-bold p-2">Add new courses</div>
                <div class="card-body">
                        <div class="row">
                            <div class="col gap-1">
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="Cid" runat="server" placeholder="Course Id"></asp:TextBox>
                                    <label for="TextBox1">Course Id</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="Cname" runat="server" placeholder="Course Name"></asp:TextBox>
                                    <label for="TextBox2">Course Name</label>
                                </div>
                                 <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="Cdisc" runat="server" placeholder="Course Discription"></asp:TextBox>
                                    <label for="TextBox2">Course Discription</label>
                                </div>
                                <div class="row form-group ms-5 me-5">
                                    <asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Add Course" />
                                </div>
                                <asp:DropDownList runat="server" ID="DDList">
                                    <asp:ListItem>Test</asp:ListItem>
                                    <asp:ListItem>Test2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="card">
                <div class="card-header text-light text-center bg-danger fw-bold p-2">Courses</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card mb-2">
                            <div class="card-header text-danger fw-bold">Id #1</div>
                            <div class="card-body">
                                <blockquote class="blockquote mb-0">
                                    <p>BSC CS</p>
                                    <footer class="blockquote-footer">Discription</footer>
                                </blockquote>
                            </div>
                        </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card mb-2">
                            <div class="card-header text-danger fw-bold">Id #2</div>
                            <div class="card-body">
                                <blockquote class="blockquote mb-0">
                                    <p>BSC IT</p>
                                    <footer class="blockquote-footer">Discription</footer>
                                </blockquote>
                            </div>
                        </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card mb-2">
                            <div class="card-header text-danger fw-bold">Id #2</div>
                            <div class="card-body">
                                <blockquote class="blockquote mb-0">
                                    <p>BSC IT</p>
                                    <footer class="blockquote-footer">Discription</footer>
                                </blockquote>
                            </div>
                        </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card mb-2">
                            <div class="card-header text-danger fw-bold">Id #2</div>
                            <div class="card-body">
                                <blockquote class="blockquote mb-0">
                                    <p>BSC IT</p>
                                    <footer class="blockquote-footer">Discription</footer>
                                </blockquote>
                            </div>
                        </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card mb-2">
                            <div class="card-header text-danger fw-bold">Id #2</div>
                            <div class="card-body">
                                <blockquote class="blockquote mb-0">
                                    <p>BSC IT</p>
                                    <footer class="blockquote-footer">Discription</footer>
                                </blockquote>
                            </div>
                        </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card mb-2">
                            <div class="card-header text-danger fw-bold">Id #2</div>
                            <div class="card-body">
                                <blockquote class="blockquote mb-0">
                                    <p>BSC IT</p>
                                    <footer class="blockquote-footer">Discription</footer>
                                </blockquote>
                            </div>
                        </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card mb-2">
                            <div class="card-header text-danger fw-bold">Id #2</div>
                            <div class="card-body">
                                <blockquote class="blockquote mb-0">
                                    <p>BSC IT</p>
                                    <footer class="blockquote-footer">Discription</footer>
                                </blockquote>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
