<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherDashboard/main.Master" AutoEventWireup="true" CodeBehind="attendence.aspx.cs" Inherits="LMS.TeacherDashboard.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
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
                <label for="ddClass">Class</label>
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
        <div class="col">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddDiv" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddDiv_SelectedIndexChanged">
                    <asp:ListItem>Select Division</asp:ListItem>
                </asp:DropDownList>
                <label for="ddDiv">Division</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3">
            <div class="form-floating mb-3">
                <input type="date" class="form-control" id="dateInput" runat="server" placeholder="Date" />
                <label for="txtSearch">Date</label>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddSearchBy" runat="server" AutoPostBack="true">
                    <asp:ListItem>First name</asp:ListItem>
                    <asp:ListItem>Middle name</asp:ListItem>
                    <asp:ListItem>Last name</asp:ListItem>
                </asp:DropDownList>
                <label for="ddDiv">Search by</label>
            </div>
        </div>
        <div class="col m-0">
            <div class="form-floating mb-3">
                <asp:TextBox CssClass="form-control" ID="txtSearch" runat="server" placeholder="Search"></asp:TextBox>
                <label for="txtSearch">Search</label>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card p-0">
            <div class="card-header text-light d-flex justify-content-between align-items-center bg-success fw-bold">
                Attendence List
				
                    <asp:Button ID="Button2" class="btn btn-outline-light" runat="server" Text="Add New" OnClick="Button2_Click"></asp:Button>
            </div>
            <div class="card-body m-0 p-0">
                <!-- <div class="row g-1" id="datatable"></div> -->
                <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="attandenceId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="attandenceId" HeaderText="attandenceId" InsertVisible="False" ReadOnly="True" SortExpression="attandenceId" />
                        <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="grNo" HeaderText="grNo" SortExpression="grNo" />
                        <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="status" HeaderText="status" SortExpression="status" />
                        <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="staffName" HeaderText="staffName" SortExpression="staffName" />
                        <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate" />
                    </Columns>

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString1 %>" SelectCommand="SELECT * FROM [Tbl_Attandance]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
