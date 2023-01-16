<%@ Page Title="" Language="C#" MasterPageFile="~/StudentDashboard/main.Master" AutoEventWireup="true" CodeBehind="leave.aspx.cs" Inherits="LMS.StudentDashboard.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-3">
            <div class="card text-center">
                <div class="card-header text-light bg-primary fw-bold p-2">Add Department</div>
                <div class="card-body">
                    <div class="text-center">
                        <h4 class="display-5 fw-bold ls-tight text-primary">Apply Leave</h4>
                    </div>
                    <hr />
                        <asp:Label ID="libmsg" runat="server" Visible="false"></asp:Label>
                    <div class="row">
                        <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
                        <div class="col gap-1">
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="txtNoOfDays" runat="server" placeholder="No of days"></asp:TextBox>
                                <label for="txtNoOfDays">No of days</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox CssClass="form-control" ID="txtMess" runat="server" TextMode="MultiLine" Height="100" placeholder="Type Message"></asp:TextBox>
                                <label for="txtMess">Type Message</label>
                            </div>
                            <div class="row form-group ms-5 me-5">
                                <asp:Button CssClass="btn btn-primary w-20 btn-block btn-lg" ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="card p-0">
                <div class="card-header text-light d-flex justify-content-between align-items-center bg-primary fw-bold">
                    Reports
                <asp:DropDownList ID="ddMain" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddMain_SelectedIndexChanged">
                    <asp:ListItem>All Reports</asp:ListItem>
                    <asp:ListItem>Approved</asp:ListItem>
                    <asp:ListItem>Rejected</asp:ListItem>
                </asp:DropDownList>
                </div>
                <div class="card-body p-0">
                    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="leaveId" AllowPaging="True" EmptyDataText="Select from drop down">
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="leaveId" HeaderText="leaveId" InsertVisible="False" ReadOnly="True" SortExpression="leaveId" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="grNo" HeaderText="grNo" SortExpression="grNo" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="fName" HeaderText="fName" SortExpression="fName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="mName" HeaderText="mName" SortExpression="fName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="lName" HeaderText="lName" SortExpression="fName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="divName" HeaderText="divName" SortExpression="divName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="className" HeaderText="className" SortExpression="className" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="semName" HeaderText="semName" SortExpression="semName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="departName" HeaderText="departName" SortExpression="departName" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="message" HeaderText="message" SortExpression="message" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="noDays" HeaderText="noDays" SortExpression="noDays" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="reply" HeaderText="reply" SortExpression="reply" />
                            <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-primary text-capitalize text-light" DataField="editDate" HeaderText="editDate" SortExpression="editDate" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
