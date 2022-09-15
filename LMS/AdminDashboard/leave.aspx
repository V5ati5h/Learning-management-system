﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="leave.aspx.cs" Inherits="LMS.AdminDashboard.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card p-0">
					<div class="card-header text-light d-flex justify-content-between align-items-center bg-danger fw-bold">
                        Leave Report
					</div>
					<div class="card-body p-0">
						<!-- <div class="row g-1" id="datatable"></div> -->
                        <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="leaveId" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                            <Columns>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="leaveId" HeaderText="leaveId" InsertVisible="False" ReadOnly="True" SortExpression="leaveId" />
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="grNo" HeaderText="grNo" SortExpression="grNo" />
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="div" HeaderText="div" SortExpression="div" />
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="classSemName" HeaderText="classSemName" SortExpression="classSemName" />
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="message" HeaderText="message" SortExpression="message" />
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="noDays" HeaderText="noDays" SortExpression="noDays" />
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="reply" HeaderText="reply" SortExpression="reply" />
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate" />
                            </Columns>
                        </asp:GridView>
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString1 %>" SelectCommand="SELECT * FROM [Tbl_Leave]"></asp:SqlDataSource>
					</div>
				</div>
</asp:Content>
