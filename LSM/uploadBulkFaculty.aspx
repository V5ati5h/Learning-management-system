﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="uploadBulkFaculty.aspx.cs" Inherits="LSM.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row gap-2 p-3">
		<div class="col-lg-9">
			<div class="card">
				<div class="card-header fw-bold text-danger">Criteria</div>
				<div class="card-body">
					<ol type="1">
						<li>Your CSV data should be in the formet below, The first line of your CSV file should be the column headers as in the teble example. Also make shoure that your file is UTD-8 to avoid unnecessary encoding problem.</li>
						<li>If the column you are trying to import is date make sure that is formeted in format Y-m-d <b>(2022-04-13)</b>.</li>
						<li>Duplicate Id Numbers ( Must be uniqe ) rows will not be imported.</li>
						<li>Etc...</li>
					</ol>
				</div>
			</div>
		</div>
        <div class="col">
			<div class="card">
				<div class="card-header fw-bold text-danger ls-tight">Upload CSV</div>
				<div class="card-body">
					<asp:FileUpload ID="txt_Upload" runat="server" />
					<asp:Button ID="btnsubmit" Text="Submit" runat="server" OnClick="btnUpload_Click"/>
				</div>
			</div>
        </div>
    </div>
	<asp:Label ID="Responsehu" runat="server" Visible="false" Text="No Response"></asp:Label>
	<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
</asp:Content>
