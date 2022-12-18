<%@ Page Title="" Language="C#" MasterPageFile="~/StudentDashboard/main.Master" AutoEventWireup="true" CodeBehind="notice.aspx.cs" Inherits="LMS.StudentDashboard.WebForm4" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="row mb-0">
			<div class="col">
            <div class="card p-0">
                <div class="card-header text-light d-flex justify-content-between align-items-center bg-primary fw-bold">
                    Student List
                </div>
                <div class="card-body m-0 p-0">
                    <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="noticeID" AllowPaging="True" EmptyDataText="Select from drop down">
                            <Columns>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="noticeID" HeaderText="noticeID" InsertVisible="False" ReadOnly="True" SortExpression="noticeID" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="title" HeaderText="title" SortExpression="title" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="message" HeaderText="message" SortExpression="message" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="divName" HeaderText="divName" SortExpression="divName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="className" HeaderText="className" SortExpression="className" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="semName" HeaderText="semName" SortExpression="semName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="departName" HeaderText="departName" SortExpression="departName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="byStaff" HeaderText="byStaff" SortExpression="byStaff" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
		</div>
	</asp:Content>