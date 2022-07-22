<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="LSM.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mb-4">
        <div class="row justify-content-center">
            <div class="col-md-6 mx-auto">
                <div class="card mb-2">
                    <div class="card-body">
                        <div class="row text-center">
                            <h1 class="display-5 fw-bold ls-tight text-primary">Contact us</h1>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col gap-1">
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="TextBox1" runat="server" placeholder="Your name"></asp:TextBox>
                                    <label for="TextBox1">Your name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="TextBox2" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    <label for="TextBox2">Email</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox  CssClass="form-control" ID="TextBox3" runat="server" placeholder="Subject"></asp:TextBox>
                                    <label for="TextBox3">Subject</label>
                                </div>
                                <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" TextMode="MultiLine" Height="100" placeholder="Type Message"></asp:TextBox>
                                    <label for="TextBox4">Type Message</label>
                                </div>
                                <div class="row form-group ms-5 me-5">
                                    <asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Submit" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container col-lg-5 d-flex justify-content-center map">
                <iframe style="border-radius:1rem; width:35rem; height:25rem;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15073.28491145565!2d72.9656099!3d19.1811671!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfa357dc16a5da26f!2sSatish%20Pradhan%20Dnyansadhna%20College!5e0!3m2!1sen!2sin!4v1658495714319!5m2!1sen!2sin"></iframe>
            </div>
        </div>

</asp:Content>
