<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="addDept.aspx.cs" Inherits="LMS.AdminDashboard.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-3">
            <div class="card text-center">
                <div class="card-header text-light bg-danger fw-bold p-2">Add Department</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col gap-1">
                            <asp:Label CssClass="text-center" ID="libmsg" runat="server" Text="result" Visible="false"></asp:Label>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="Cdisc" runat="server" placeholder="Department Name"></asp:TextBox>
                                <label for="Cdisc">Department Name</label>
                            </div>
                            <div class="row form-group ms-5 me-5 gap-1">
                                <asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="DepartSubmit" runat="server" Text="Save" OnClick="DepartSubmit_Click" />
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
                    <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="departmentId" DataSourceID="SqlDataSource2" AllowPaging="True">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="departmentId" HeaderText="departmentId" InsertVisible="False" ReadOnly="True" SortExpression="departmentId">
<HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="departmentName" HeaderText="departmentName" SortExpression="departmentName">
<HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate">
<HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                        </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString1 %>" SelectCommand="SELECT * FROM [Tbl_Department]" DeleteCommand="DELETE FROM Tbl_Department WHERE departmentId=@departmentId" UpdateCommand="UPDATE Tbl_Department set departmentName=@departmentName where departmentId=@departmentId"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
