<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="addSem.aspx.cs" Inherits="LMS.AdminDashboard.WebForm10" %>

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
                                <asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddDepart_SelectedIndexChanged">
                                    <asp:ListItem>Select Department</asp:ListItem>
                                </asp:DropDownList>
                                <label for="ddDepart">Department</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:DropDownList CssClass="form-control" ID="ddClass" runat="server" AutoPostBack="true">
                                    <asp:ListItem>Select Class</asp:ListItem>
                                </asp:DropDownList>
                                <label for="ddClass">Class</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="CSem" runat="server" placeholder="Sememter Name"></asp:TextBox>
                                <label for="CSem">Sememter Name</label>
                            </div>
                            <div class="row form-group ms-5 me-5 gap-1">
                                <asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="SemSubmit" runat="server" Text="Save" OnClick="SemSubmit_Click" />
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
                    <asp:GridView ID="gridview1" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="semId" DataSourceID="SqlDataSource1" AllowPaging="True">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="semId" HeaderText="semId" InsertVisible="False" ReadOnly="True" SortExpression="semId">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="semName" HeaderText="semName" SortExpression="semName">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="className" HeaderText="className" SortExpression="className">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="departNAme" HeaderText="departNAme" SortExpression="departNamw">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate">
                                <HeaderStyle CssClass="text-center bg-danger text-capitalize text-light"></HeaderStyle>

                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                        </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString1 %>" SelectCommand="SELECT * FROM [Tbl_Sem]" UpdateCommand="UPDATE Tbl_Sem SET semName=@semName,className=@className,departName=@departNAme WHERE semID=@semID" DeleteCommand="DELETE Tbl_Sem WHERE semID=@semID"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
