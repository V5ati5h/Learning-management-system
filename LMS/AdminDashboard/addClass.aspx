<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="addClass.aspx.cs" Inherits="LMS.AdminDashboard.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-3">
            <div class="card text-center">
                <div class="card-header text-light bg-danger fw-bold p-2">Add Course</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col gap-1">
                            <asp:Label CssClass="text-center" ID="libmsg" runat="server" Text="result" Visible="false"></asp:Label>
                            <div class="form-floating mb-3">
                                <asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true">
                                    <asp:ListItem>Select Department</asp:ListItem>
                                </asp:DropDownList>
                                <label for="ddDepart">Department</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="CClass" runat="server" placeholder="Class Name"></asp:TextBox>
                                <label for="CClass">Class name</label>
                            </div>
                            <div class="row form-group ms-5 me-5 gap-1">
                                <asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="ClassSubmit" runat="server" Text="Save" OnClick="ClassSubmit_Click" />
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
                    <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="classID" DataSourceID="SqlDataSource1" AllowPaging="True">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="classID" HeaderText="classID" InsertVisible="False" ReadOnly="True" SortExpression="classID">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="className" HeaderText="className" SortExpression="className">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="departName" HeaderText="departName" SortExpression="departmentName">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                        </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString1 %>" SelectCommand="SELECT * FROM [Tbl_Class]" UpdateCommand="UPDATE Tbl_Class SET className=@className, departName=@departName WHERE classID=@classID" DeleteCommand="DELETE FROM Tbl_Class WHERE classID=@classID"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
