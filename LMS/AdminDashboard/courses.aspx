<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="LMS.AdminDashboard.WebForm2" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="row">
			<div class="col mb-2">
				<div class="card text-center">
					<div class="card-header text-light bg-danger fw-bold p-2">Department</div>
					<div class="card-body">
						<div class="row">
							<div class="col gap-1">
								<div class="form-floating mb-3">
									<asp:TextBox CssClass="form-control" ID="txtDepartmentBox" runat="server" placeholder="Department Id"></asp:TextBox>
									<label for="txtDepartmentBox">Department Id</label>
								</div>
								<div class="form-floating mb-3">
									<asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true">
										<asp:ListItem>Select Department</asp:ListItem>
									</asp:DropDownList>
									<label for="ddDepart">Department</label>
								</div>
								<div class="form-floating mb-3">
									<asp:TextBox CssClass="form-control" ID="Cdisc" runat="server" placeholder="Department Name"></asp:TextBox>
									<label for="TextBox2">Department Name</label>
								</div>
								<div class="row form-group ms-5 me-5 gap-1">
									<asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="DepartSubmit" runat="server" Text="Submit" />
									<asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="DepartView" runat="server" Text="View" />
									<asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="DepartDelete" runat="server" Text="Delete" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col mb-2">
				<div class="card text-center">
					<div class="card-header text-light bg-danger fw-bold p-2">Class</div>
					<div class="card-body">
						<div class="row">
							<div class="col gap-1">
								<div class="form-floating mb-3">
									<asp:TextBox CssClass="form-control" ID="txtClassBox" runat="server" placeholder="Class Id"></asp:TextBox>
									<label for="txtClassBox">Class Id</label>
								</div>
								<div class="form-floating mb-3">
									<asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" AutoPostBack="true">
										<asp:ListItem>Select Class</asp:ListItem>
									</asp:DropDownList>
									<label for="ddDepart">Class</label>
								</div>
								<div class="form-floating mb-3">
									<asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Class Name"></asp:TextBox>
									<label for="TextBox2">Class name</label>
								</div>
								<div class="row form-group ms-5 me-5 gap-1">
									<asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="ClassSubmit" runat="server" Text="Submit" />
									<asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="ClassView" runat="server" Text="View" />
									<asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="ClassDelete" runat="server" Text="Delete" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col mb-2">
				<div class="card text-center">
					<div class="card-header text-light bg-danger fw-bold p-2">Department</div>
					<div class="card-body">
						<div class="row">
							<div class="col gap-1">
								<div class="form-floating mb-3">
									<asp:TextBox CssClass="form-control" ID="txtSemBox" runat="server" placeholder="Semester Id"></asp:TextBox>
									<label for="txtSemBox">Semester Id</label>
								</div>
								<div class="form-floating mb-3">
									<asp:DropDownList CssClass="form-control" ID="ddSem" runat="server" AutoPostBack="true">
										<asp:ListItem>Select Semester</asp:ListItem>
									</asp:DropDownList>
									<label for="ddDepart">Semester</label>
								</div>
								<div class="form-floating mb-3">
									<asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Sememter Name"></asp:TextBox>
									<label for="TextBox2">Sememter Name</label>
								</div>
								<div class="row form-group ms-5 me-5 gap-1">
									<asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="SemSubmit" runat="server" Text="Submit" />
									<asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="SemView" runat="server" Text="View" />
									<asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="SemDelete" runat="server" Text="Delete" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<asp:GridView ID="gridView" runat="server"></asp:GridView>
		</div>
	</asp:Content>