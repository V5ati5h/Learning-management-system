<%@ Page Title="" Language="C#" MasterPageFile="~/StudentDashboard/main.Master" AutoEventWireup="true" CodeBehind="homework.aspx.cs" Inherits="LMS.StudentDashboard.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-3">
            <div class="card text-center">
                <div class="card-header text-light bg-primary fw-bold p-2">Submit Assignment</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col gap-1">
                            <asp:Label CssClass="text-center" ID="libmsg" runat="server" Text="result" Visible="false"></asp:Label>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="AssignId" runat="server" placeholder="Assignment Id"></asp:TextBox>
                                <label for="AssignId">Assignment Id</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="txtTitle" runat="server" placeholder="Title"></asp:TextBox>
                                <label for="txtTitle">Title</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="txtDetail" runat="server" placeholder="Detail"></asp:TextBox>
                                <label for="txtDetail">Detail</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:FileUpload ID="fileUpload" runat="server" />
                                <label for="fileUpload">File</label>
                            </div>
                            <div class="row form-group ms-5 me-5 gap-1">
                                <asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="DivSubmit" runat="server" Text="Save" OnClick="DivSubmit_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card p-0">
                <div class="card-header text-light d-flex justify-content-between align-items-center bg-primary fw-bold">
                    Assignment
                </div>
                <div class="card-body m-0 p-0">
                    <asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="NO data found" DataKeyNames="assignemtId">
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="assignemtId" HeaderText="assignemtId" SortExpression="assignemtId" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="title" HeaderText="title" SortExpression="title" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="detail" HeaderText="detail" SortExpression="detail" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="files" HeaderText="files" SortExpression="files" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="submitionDate" HeaderText="submitionDate" SortExpression="submitionDate" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="givenOn" HeaderText="givenOn" SortExpression="givenOn" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="byStaff" HeaderText="byStaff" SortExpression="byStaff" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light"  DataField="editDate" HeaderText="editDate" SortExpression="editDate" />
                            
                        <asp:TemplateField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" HeaderText="View File">
                            <ItemTemplate>
                                <asp:LinkButton ID="fileLink" runat="server" text="Open File" OnClick="fileLink_Click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="card p-0">
                <div class="card-header text-light d-flex justify-content-between align-items-center bg-primary fw-bold">
                    Submits
                </div>
                <div class="card-body m-0 p-0">
                    <asp:GridView ID="gridview1" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="NO data found" DataSourceID="SqlDataSource1" DataKeyNames="submitId">
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="submitId" HeaderText="submitId" SortExpression="submitId" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="title" HeaderText="title" SortExpression="title" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="details" HeaderText="details" SortExpression="details" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="files" HeaderText="files" SortExpression="files" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="submitedOn" HeaderText="submitedOn" SortExpression="submitedOn" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="givenBy" HeaderText="givenBy" SortExpression="givenBy" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="reply" HeaderText="reply" SortExpression="reply" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate" />
                            <asp:TemplateField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" HeaderText="View File">
                            <ItemTemplate>
                                <asp:LinkButton ID="sfileLink" runat="server" text="Open File" OnClick="fileLink_Click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString1 %>" SelectCommand="SELECT [submitId], [title], [details], [files], [submitedOn], [givenBy], [reply], [editDate] FROM [Tbl_SAssignment] WHERE ([grNo] = @grNo)">
                        <SelectParameters>
                            <asp:SessionParameter Name="grNo" SessionField="gr" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
