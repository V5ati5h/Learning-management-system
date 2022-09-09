<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherDashboard/main.Master" AutoEventWireup="true" CodeBehind="uploadBulk.aspx.cs" Inherits="LMS.TeacherDashboard.WebForm6" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
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
		</div>
		<div class="row gap-2">
			<div class="col-lg-9">
				<div class="card">
					<div class="card-header fw-bold text-success">Criteria</div>
					<div class="card-body">
						<ol type="1">
							<li>Your CSV data should be in the formet below, The first line of your CSV file should be the column headers as in the teble example. Also make shoure that your file is UTD-8 to avoid unnecessary encoding problem.</li>
							<li>If the column you are trying to import is date make sure that is formeted in format Y-m-d <b>(2022-04-13)</b>.</li>
							<li>Duplicate Id Numbers ( Must be uniqe ) rows will not be imported.</li>
							<li>Etc...</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-header fw-bold text-success ls-tight">Upload CSV</div>
					<div class="card-body d-flex justify-content-between align-items-center">
						<asp:FileUpload ID="txt_Upload" runat="server" />
						<asp:Button ID="btnsubmit" Text="Submit" runat="server" OnClick="btnUpload_Click" /> </div>
				</div>
			</div>
		</div>
		<div class="row p-3">
			<div class="card p-0">
				<div class="card-header text-light d-flex justify-content-between align-items-center bg-success fw-bold">Data List
					<asp:Label ID="Responsehu" runat="server" Visible="false" Text="No Response"></asp:Label>
				</div>
				<div class="card-body m-1" id="datatable">
					<asp:GridView ID="GridView1" runat="server"></asp:GridView>
				</div>
			</div>
		</div>
	</asp:Content>