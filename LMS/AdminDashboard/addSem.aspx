﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="addSem.aspx.cs" Inherits="LMS.AdminDashboard.WebForm10" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="card text-center">
			<div class="card-header text-light bg-danger fw-bold p-2">Add Semester</div>
			<div class="card-body">
				<div class="row">
					<div class="col gap-1">
						<asp:label CssClass="text-center" id="libmsg" runat="server" Text="result" Visible="false"></asp:label>
						<div class="form-floating mb-3">
							<asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddDepart_SelectedIndexChanged">
								<asp:ListItem>Select Department</asp:ListItem>
							</asp:DropDownList>
							<label for="ddDepart">Department</label>
						</div>
						<div class="form-floating mb-3">
							<asp:DropDownList CssClass="form-control" ID="ddClass" runat="server" AutoPostBack="true">
								<asp:ListItem>Select Class</asp:ListItem>
							</asp:DropDownList>
							<label for="ddClass">Class</label>
						</div>
						<div class="form-floating mb-3">
							<asp:TextBox CssClass="form-control" ID="CSem" runat="server" placeholder="Sememter Name"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="CSem"></asp:RequiredFieldValidator>
							<label for="CSem">Sememter Name</label>
						</div>
						<div class="row form-group ms-5 me-5 gap-1">
							<asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="SemSubmit" runat="server" Text="Save" OnClick="SemSubmit_Click" /> </div>
					</div>
				</div>
			</div>
		</div>
		<asp:GridView ID="Gird" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1002px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
			<AlternatingRowStyle BackColor="White" />
			<Columns>
				<asp:BoundField DataField="semID" HeaderText="semID" InsertVisible="False" ReadOnly="True" SortExpression="semID" />
				<asp:BoundField DataField="semName" HeaderText="semName" SortExpression="semName" />
				<asp:BoundField DataField="classID" HeaderText="classID" SortExpression="classID" />
				<asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" SortExpression="CreatedDate" /> </Columns>
			<EditRowStyle BackColor="#7C6F57" />
			<FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
			<HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
			<RowStyle BackColor="#E3EAEB" />
			<SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
			<SortedAscendingCellStyle BackColor="#F8FAFA" />
			<SortedAscendingHeaderStyle BackColor="#246B61" />
			<SortedDescendingCellStyle BackColor="#D4DFE1" />
			<SortedDescendingHeaderStyle BackColor="#15524A" /> </asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Sem]" UpdateCommand="UPDATE [Tbl_Class] SET [Tbl_Sem]=@semName, [classID]=@classID, [CreatedDate]=@CreatedDate WHERE [semID]=@semID" DeleteCommand="DELETE [Tbl_Sem] WHERE [semID]=@semID"></asp:SqlDataSource>
	</asp:Content>