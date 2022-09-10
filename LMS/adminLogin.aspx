<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="LMS.WebForm5" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<style>
		header {
			display: none;
			color: #dc3545;
		}
		
		.nav .navlist {
			display: none;
		}
		</style>
		<div class="container mb-4">
			<div class="row">
				<div class="col-md-6 mx-auto">
					<div class="card">
						<div class="card-body">
							<div class="row text-center">
								<h1 class="display-5 fw-bold ls-tight">Login to<br />
                                    <span class="text-danger">Dashbord</span>
                                </h1>
							<asp:Label id="libmsg" CssClass="text-center" runat="server" Visible="false"></asp:Label>
							</div>
							<hr />
							<div class="row">
								<div class="col gap-1">
									<div class="form-floating mb-3">
										<asp:TextBox CssClass="form-control" ID="txtadminlogusername" runat="server" placeholder="Username"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtfname"> </asp:RequiredFieldValidator>
										<label for="txtadminlogusername">Username</label>
									</div>
									<div class="form-floating mb-3">
										<asp:TextBox CssClass="form-control" ID="txtadminlogpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtfname"> </asp:RequiredFieldValidator>
										<label for="txtadminlogpassword">Password</label>
									</div>
									<div class="row form-group ms-5 me-5">
										<asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /> </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</asp:Content>