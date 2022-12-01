<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="leave.aspx.cs" Inherits="LMS.AdminDashboard.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col mb-2">
            <div class="card p-0">
                <div class="card-header text-light d-flex justify-content-between align-items-center bg-danger fw-bold">
                    Reports
                <asp:DropDownList ID="ddMain" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddMain_SelectedIndexChanged">
                    <asp:ListItem>All Reports</asp:ListItem>
                    <asp:ListItem>Approved</asp:ListItem>
                    <asp:ListItem>Rejected</asp:ListItem>
                </asp:DropDownList>
                </div>
                <div class="card-body p-0">
                    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="leaveId">
                        <columns>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="leaveId" HeaderText="leaveId" InsertVisible="False" ReadOnly="True" SortExpression="leaveId" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="grNo" HeaderText="grNo" SortExpression="grNo" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="div" HeaderText="div" SortExpression="div" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="classSemName" HeaderText="classSemName" SortExpression="classSemName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="message" HeaderText="message" SortExpression="message" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="noDays" HeaderText="noDays" SortExpression="noDays" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="reply" HeaderText="reply" SortExpression="reply" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate" />
                        </columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
