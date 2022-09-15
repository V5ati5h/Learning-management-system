﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="addClass.aspx.cs" Inherits="LMS.AdminDashboard.WebForm9" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="card text-center">
			<div class="card-header text-light bg-danger fw-bold p-2">Add Course</div>
			<div class="card-body">
				<div class="row">
					<div class="col gap-1">
						<asp:label CssClass="text-center" id="libmsg" runat="server" Text="result" Visible="false"></asp:label>
						<div class="form-floating mb-3">
							<asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true">
								<asp:ListItem>Select Department</asp:ListItem>
							</asp:DropDownList>
							<label for="ddDepart">Department</label>
						</div>
						<div class="form-floating mb-3">
							<asp:TextBox CssClass="form-control" ID="CClass" runat="server" placeholder="Class Name"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="CClass"></asp:RequiredFieldValidator>
							<label for="CClass">Class name</label>
						</div>
						<div class="row form-group ms-5 me-5 gap-1">
							<asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="ClassSubmit" runat="server" Text="Save" OnClick="ClassSubmit_Click" /> </div>
					</div>
				</div>
				<asp:GridView ID="GridView" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="classID" DataSourceID="SqlDataSource1" Width="746px">
                    <Columns>
                        <asp:BoundField DataField="classID" HeaderText="classID" InsertVisible="False" ReadOnly="True" SortExpression="classID" />
                        <asp:BoundField DataField="className" HeaderText="className" SortExpression="className" />
                        <asp:BoundField DataField="departmentName" HeaderText="departmentName" SortExpression="departmentName" />
                        <asp:BoundField DataField="editDate" HeaderText="editDate" SortExpression="editDate" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString1 %>" SelectCommand="SELECT * FROM [Tbl_Class]" UpdateCommand="UPDATE [Tbl_Class] SET className=@className, departmentName=@departmentName, editDate=@editDate WHERE classID=@classID" DeleteCommand="DELETE FROM [Tbl_Class] WHERE classID=@classID"></asp:SqlDataSource>
			</div>
		</div>
	</asp:Content>