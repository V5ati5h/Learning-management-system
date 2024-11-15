﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="addDiv.aspx.cs" Inherits="LMS.AdminDashboard.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-3">
            <div class="col-lg mb-2">
                <div class="card">
                    <div class="card-header text-center text-light bg-danger fw-bold p-2">Course Management</div>
                    <div class="card-body d-grid gap-1">
                        <asp:Button CssClass="btn btn-danger w-auto btn-block btn-lg" ID="AddDepart" runat="server" Text="Add Department" OnClick="AddDepart_Click" />
                        <asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="AddClass" runat="server" Text="Add Class" OnClick="AddClass_Click" />
                        <asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="AddSem" runat="server" Text="Add Semester" OnClick="AddSem_Click" />
                        <asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="AddDiv" runat="server" Text="Add Division" OnClick="AddDiv_Click" />
                    </div>
                </div>
            </div>
            <div class="card text-center">
                <div class="card-header text-light bg-danger fw-bold p-2">Add Department</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col gap-1">
                            <asp:Label CssClass="text-center" ID="libmsg" runat="server" Text="result" Visible="false"></asp:Label>
                            <div class="form-floating mb-3">
                                <asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddDepart_SelectedIndexChanged">
                                    <asp:ListItem>Select Department</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvDepart" runat="server" ControlToValidate="ddDepart"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="Please select a department"></asp:RequiredFieldValidator>
                                <label for="ddDepart">Department</label>
                            </div>

                            <div class="form-floating mb-3">
                                <asp:DropDownList CssClass="form-control" ID="ddClass" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddClass_SelectedIndexChanged">
                                    <asp:ListItem>Select Class</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvClass" runat="server" ControlToValidate="ddClass"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="Please select a class"></asp:RequiredFieldValidator>
                                <label for="ddClass">Class</label>
                            </div>

                            <div class="form-floating mb-3">
                                <asp:DropDownList CssClass="form-control" ID="ddSem" runat="server" AutoPostBack="true">
                                    <asp:ListItem>Select Semester</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvSem" runat="server" ControlToValidate="ddSem"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="Please select a semester"></asp:RequiredFieldValidator>
                                <label for="ddClass">Semester</label>
                            </div>

                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="CDiv" runat="server" placeholder="Division Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvDiv" runat="server" ControlToValidate="CDiv"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter division name"></asp:RequiredFieldValidator>
                                <label for="CDiv">Division Name</label>
                            </div>

                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="CDivSeats" runat="server" placeholder="Division Seats"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvDivSeats" runat="server" ControlToValidate="CDivSeats"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter division seats"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revDivSeats" runat="server" ControlToValidate="CDivSeats"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter a valid number"
                                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                                <label for="CDivSeats">Division Seats</label>
                            </div>

                            <div class="row form-group ms-5 me-5 gap-1">
                                <asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="DivSubmit" runat="server" Text="Save" OnClick="DivSubmit_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="card">
                <div class="card-header text-light bg-danger text-center fw-bold p-2">Complaints</div>
                <div class="card-body p-0">
                    <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AllowPaging="True" OnPageIndexChanging="OnPageIndexChanging" PageSize="25" AutoGenerateColumns="False" DataKeyNames="divId" OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="Select from drop down" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true">
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="divId" HeaderText="divId" InsertVisible="False" ReadOnly="True" SortExpression="divId">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="seats" HeaderText="seats" SortExpression="seats">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="divName" HeaderText="divName" SortExpression="divName">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="semName" HeaderText="semName" SortExpression="semName">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="className" HeaderText="className" SortExpression="classNamw">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="departName" HeaderText="departName" SortExpression="departName">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                        </Columns>

                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
