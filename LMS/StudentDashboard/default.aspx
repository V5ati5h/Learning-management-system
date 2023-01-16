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
    </div>
    <div class="row">
        <div class="col">
            <div class="card m-2">
                <div class="card-body">
                    <div class="text-center">
                        <h4 class="display-5 fw-bold ls-tight text-primary">Send Feedback</h4>
                    </div>
                    <hr />
                    <div class="row">
                        <asp:Label ID="libmsg" runat="server" Visible="false"></asp:Label>
                        <div class="col gap-1">
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="txtSub" runat="server" placeholder="Subject"></asp:TextBox>
                                <label for="TextBox1">Subject</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="txtMsg" runat="server" TextMode="MultiLine" Height="100" placeholder="Message"></asp:TextBox>
                                <label for="TextBox4">Message</label>
                            </div>
                            <div class="row form-group ms-5 me-5">
                                <asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
