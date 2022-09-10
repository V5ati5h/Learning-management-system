<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LMS.AdminDashboard.WebForm1" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="row">
			<div class="col-lg-3">
				<div class="card">
					<div class="card-header text-center text-light bg-danger fw-bold p-2">Course Management</div>
					<div class="card-body d-grid gap-1">
						<asp:Button CssClass="btn btn-danger w-auto btn-block btn-lg" ID="AddDepart" runat="server" Text="Add Department" OnClick="AddDepart_Click" />
						<asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="AddClass" runat="server" Text="Add Class" OnClick="AddClass_Click" />
						<asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="AddSem" runat="server" Text="Add Semester" OnClick="AddSem_Click" />
						<asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="AddAcadYear" runat="server" Text="Add Acadmic Year" />
					</div>
				</div>
			</div>
		</div>
		
		<!-- <div class="row">
			<div class="col-lg-4 mb-2">
				<div class="card">
					<div class="card-body">
						<div class="d-flex justify-content-between">
							<h1>100</h1> <i class="fa-solid fa-person-chalkboard" id="iconh" style="font-size: 3rem;"></i> </div>
					</div>
					<div class="card-footer bg-danger fw-bold text-center text-white">Total Staff</div>
				</div>
			</div>
			<div class="col-lg-4 mb-2">
				<div class="card">
					<div class="card-body">
						<div class="d-flex justify-content-between">
							<h1>100</h1> <i class="fa-solid fa-graduation-cap" id="iconh" style="font-size: 3rem;"></i> </div>
					</div>
					<div class="card-footer bg-danger fw-bold text-center text-white">Total Staff</div>
				</div>
			</div>
			<div class="col-lg-4 mb-2">
				<div class="card">
					<div class="card-body">
						<div class="d-flex justify-content-between">
							<h1>100</h1> <i class="fa-solid fa-book" id="iconh" style="font-size: 3rem;"></i> </div>
					</div>
					<div class="card-footer bg-danger fw-bold text-center text-white">Total Staff</div>
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col">
				<div class="card">
					<div class="card-header text-light bg-danger text-center fw-bold p-2">Contact Requests</div>
					<div class="card-body"> </div>
				</div>
			</div>
		</div> -->
	</asp:Content>