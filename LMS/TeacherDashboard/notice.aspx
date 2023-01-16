<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherDashboard/main.Master" AutoEventWireup="true" CodeBehind="notice.aspx.cs" Inherits="LMS.TeacherDashboard.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
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
        <div class="col-lg-2">
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
    <div class="row">
        <div class="col-lg-3">
            <div class="card text-center">
                <div class="card-header text-light bg-success fw-bold p-2">Add Notice</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col gap-1">
                            <asp:Label CssClass="text-center" ID="libmsg" runat="server" Text="result" Visible="false"></asp:Label>
                            <div class="form-floating mb-3">
                                <input type="date" class="form-control" id="dateInput" runat="server" placeholder="Date" />
                                <label for="txtSearch">Date</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="title" runat="server" placeholder="Title"></asp:TextBox>
                                <label for="CClass">Title</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="description" runat="server" TextMode="MultiLine" Height="100" placeholder="Description"></asp:TextBox>
                                <label for="CClass">Description</label>
                            </div>
                            <div class="row form-group ms-5 me-5 gap-1">
                                <asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="ClassSubmit" runat="server" Text="Save" OnClick="ClassSubmit_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card p-0">
                <div class="card-header text-light d-flex justify-content-between align-items-center bg-success fw-bold">
                    Student List
                </div>
                <div class="card-body m-0 p-0">
                    <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="noticeID" AllowPaging="True" OnPageIndexChanging="OnPageIndexChanging" PageSize="25" OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="Select from drop down" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true">
                            <Columns>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="noticeID" HeaderText="noticeID" InsertVisible="False" ReadOnly="True" SortExpression="noticeID" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="title" HeaderText="title" SortExpression="title" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="message" HeaderText="message" SortExpression="message" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="divName" HeaderText="divName" SortExpression="divName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="className" HeaderText="className" SortExpression="className" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="semName" HeaderText="semName" SortExpression="semName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="departName" HeaderText="departName" SortExpression="departName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="byStaff" HeaderText="byStaff" SortExpression="byStaff" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
