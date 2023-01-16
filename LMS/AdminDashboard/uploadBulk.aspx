<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="uploadBulk.aspx.cs" Inherits="LMS.AdminDashboard.WebForm6" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="row gap-2">
			<div class="col-lg-9">
				<div class="card">
					<div class="card-header fw-bold text-danger">Criteria</div>
					<div class="card-body">
						<ol type="1">
							<li>Your CSV data should be in the formet below, The first line of your CSV file should be the column headers as in the teble example. Also make shoure that your file is UTD-8 to avoid unnecessary encoding problem.</li>
							<li>If the column you are trying to import is date make sure that is formeted in format Y-m-d <b>(2022-04-13)</b>.</li>
							<li>Duplicate Id Numbers ( Must be uniqe ) rows will not be imported.</li>
							<li>Etc...</li>
							<li>Download sample <a href="format/StaffUploadFormet.csv" target="_blank">
					<asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/AdminDashboard/img/xlsx.png" Width="50px" />
				</a></li>
						</ol>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<div class="card-header fw-bold text-danger ls-tight">Upload CSV</div>
					<div class="card-body">
						<asp:FileUpload ID="fileUpload" runat="server" />
						<asp:Button ID="btnsubmit" Text="Submit" runat="server" OnClick="btnUpload_Click" /> </div>
				</div>
			</div>
		</div>
		<div class="row p-3">
			<div class="card p-0">
				<div class="card-header text-light d-flex justify-content-between align-items-center bg-danger fw-bold">Data List
					<asp:Label ID="Responsehu" runat="server" Visible="false" Text="No Response"></asp:Label>
				</div>
				<div class="card-body m-0 p-0" id="datatable">
					<asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="false" >
						<Columns>
							<asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="firstName" HeaderText="firstName" />
							<asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="middleName" HeaderText="middleName" />
							<asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="lastName" HeaderText="lastName" />
							<asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="mobile" HeaderText="mobile" />
							<asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="email" HeaderText="email" />
							<asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="username" HeaderText="username" />
							<asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="departId" HeaderText="departId" />
							<asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-danger text-capitalize text-light" DataField="departName" HeaderText="departName" />
						</Columns>
					</asp:GridView>
				</div>
				<div class="card-footer">
					<asp:Button ID="UtDb" CssClass="btn align-content-lg-center btn-danger" runat="server" Visible="false" Enabled="false" text="Upload Now!!" OnClick="UtDb_Click"/>
				</div>
			</div>
		</div>
	</asp:Content>