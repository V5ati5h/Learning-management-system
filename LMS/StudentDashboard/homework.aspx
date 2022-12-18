<%@ Page Title="" Language="C#" MasterPageFile="~/StudentDashboard/main.Master" AutoEventWireup="true" CodeBehind="homework.aspx.cs" Inherits="LMS.StudentDashboard.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <div class="card p-0">
                <div class="card-header text-light d-flex justify-content-between align-items-center bg-primary fw-bold">
                    Assignment
                </div>
                <div class="card-body m-0 p-0">
                    <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="Select from drop down" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="submitId" HeaderText="submitId" SortExpression="submitId" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="files" HeaderText="files" SortExpression="files" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="submitedOn" HeaderText="submitedOn" SortExpression="submitedOn" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="givenBy" HeaderText="givenBy" SortExpression="givenBy" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="grNo" HeaderText="grNo" SortExpression="grNo" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="divName" HeaderText="divName" SortExpression="divName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="className" HeaderText="className" SortExpression="className" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="semName" HeaderText="semName" SortExpression="semName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="departName" HeaderText="departName" SortExpression="departName" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString1 %>" SelectCommand="SELECT * FROM [Tbl_SAssignment]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
