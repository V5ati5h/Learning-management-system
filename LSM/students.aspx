<%@ Page Title="" Language="C#" MasterPageFile="~/TeachersDashboard.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="LSM.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mb-0">
			<div class="col">
				<div class="form-floating mb-3">
					<asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true">
						<asp:ListItem>Select Department</asp:ListItem>
					</asp:DropDownList>
					<label for="ddDepart">Department</label>
				</div>
			</div>
			<div class="col">
				<div class="form-floating mb-3">
					<asp:DropDownList CssClass="form-control" ID="ddClass" runat="server" AutoPostBack="true">
						<asp:ListItem>Select Class</asp:ListItem>
					</asp:DropDownList>
					<label for="ddClass">Department</label>
				</div>
			</div>
			<div class="col">
				<div class="form-floating mb-3">
					<asp:DropDownList CssClass="form-control" ID="ddSem" runat="server">
						<asp:ListItem>Select Semister</asp:ListItem>
					</asp:DropDownList>
					<label for="ddSem">Semester</label>
				</div>
			</div>
		</div>
    <div class="row">
        <div class="col">
            <div class="form-floating">
                <asp:TextBox CssClass="form-control" ID="txtSearch" runat="server" placeholder="Search"></asp:TextBox>
				<label for="txtSearch">Search</label>
			</div>
        </div>
    </div>
	<div class="row p-3">
		<div class="card p-0">
			<div class="card-header text-light d-flex justify-content-between align-items-center bg-success fw-bold">Student List
				<asp:Button ID="Button2" class="btn btn-outline-light" runat="server" Text="Add New"></asp:Button>
			</div>
			<div class="card-body m-1" id="datatable"></div>
		</div>
	</div>
</asp:Content>
