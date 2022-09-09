<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LMS.WebForm4" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="container mb-4">
			<div class="row">
				<div class="col-md-6 mx-auto">
					<div class="card">
						<div class="card-body">
							<div class="row text-center">
								<h1 class="display-5 fw-bold ls-tight">Login to<br />
                                    <span class="text-primary">get started..</span>
                                </h1>
							<asp:Label id="libmsg" CssClass="text-center" runat="server" Visible="false"></asp:Label>
							</div>
							<hr />
							<div class="row">
								<div class="col gap-1">
									<div class="form-floating mb-3">
										<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email"></asp:TextBox>
										<label for="TextBox1">Email address</label>
									</div>
									<div class="form-floating mb-3">
										<asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
										<label for="TextBox2">Password</label>
									</div>
									<!--
                                <div class="row align-content-center mb-2">
                                    <div class="col d-flex justify-content-center">
                                        <!-- Checkbox -/->
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="RememberME" checked />
                                            <label class="form-check-label" for="RememberME"> Remember me </label>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <!-- Simple link -/->
                                        <a href="#!">Forgot password?</a>
                                    </div>
                                </div>
                                -->
									<div class="row form-group ms-5 me-5">
										<asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /> </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</asp:Content>