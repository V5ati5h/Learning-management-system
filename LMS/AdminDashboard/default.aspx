﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LMS.AdminDashboard.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-3 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <asp:Label ID="totalStud" runat="server" Text="--" />
                        <i class="fa-solid fa-person-chalkboard" id="iconh" style="font-size: 3rem;"></i>
                    </div>
                </div>
                <div class="card-footer bg-danger fw-bold text-center text-white">Total Students</div>
            </div>
        </div>
        <div class="col-lg-3 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <asp:Label ID="totalStaf" runat="server" Text="--" />
                        <i class="fa-solid fa-person-chalkboard" id="iconh" style="font-size: 3rem;"></i>
                    </div>
                </div>
                <div class="card-footer bg-danger fw-bold text-center text-white">Total Staff</div>
            </div>
        </div>
        <div class="col-lg-3 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <asp:Label ID="totalComp" runat="server" Text="--" />
                        <i class="fa-solid fa-graduation-cap" id="iconh" style="font-size: 3rem;"></i>
                    </div>
                </div>
                <div class="card-footer bg-danger fw-bold text-center text-white">Total Complaints</div>
            </div>
        </div>
        <div class="col-lg-3 mb-2">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <asp:Label ID="totalFeed" runat="server" Text="--" />
                        <i class="fa-solid fa-book" id="iconh" style="font-size: 3rem;"></i>
                    </div>
                </div>
                <div class="card-footer bg-danger fw-bold text-center text-white">Total Feedbacks</div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-3">
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
        <div class="col-lg-9">
            <div class="card">
                <div class="card-header text-light bg-danger text-center fw-bold p-2">Complaints</div>
                <div class="card-body p-0">
                    <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="complainId"  AllowPaging="True" OnPageIndexChanging="OnPageIndexChanging" PageSize="25" OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="Table is empty" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true">
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="complainId" HeaderText="complainId" InsertVisible="False" ReadOnly="True" SortExpression="complainId">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="grNo" HeaderText="grNo" SortExpression="grNo">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="name" HeaderText="name" SortExpression="name">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="subject" HeaderText="subject" SortExpression="subject">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="message" HeaderText="message" SortExpression="message">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="reply" HeaderText="reply" SortExpression="reply">
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
</asp:Content>
