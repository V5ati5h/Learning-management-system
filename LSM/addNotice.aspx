<%@ Page Title="" Language="C#" MasterPageFile="~/TeachersDashboard.Master" AutoEventWireup="true" CodeBehind="addNotice.aspx.cs" Inherits="LSM.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mb-0">
			<div class="col">
				<div class="form-floating mb-3">
					<asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true">
						<asp:ListItem>Select Department</asp:ListItem>
					</asp:DropDownList>
					<label for="ddDepart">Department</label>
				</div>
			</div>
			<div class="col">
				<div class="form-floating mb-3">
					<asp:DropDownList CssClass="form-control" ID="ddClass" runat="server" AutoPostBack="true">
						<asp:ListItem>Select Class</asp:ListItem>
					</asp:DropDownList>
					<label for="ddClass">Department</label>
				</div>
			</div>
			<div class="col">
				<div class="form-floating mb-3">
					<asp:DropDownList CssClass="form-control" ID="ddSem" runat="server">
						<asp:ListItem>Select Semister</asp:ListItem>
					</asp:DropDownList>
					<label for="ddSem">Semester</label>
				</div>
			</div>
		</div>
    <div class="row">
        <div class="col">
            <div class="form-floating">
                <asp:TextBox CssClass="form-control" ID="txtSearch" runat="server" placeholder="Search"></asp:TextBox>
				<label for="txtSearch">Search</label>
			</div>
        </div>
    </div>
	<div class="row p-3">
		<div class="card p-0">
			<div class="card-header text-light d-flex justify-content-between align-items-center bg-success fw-bold">Notifications
				<asp:Button ID="Button2" class="btn btn-outline-light" runat="server" Text="Add New"></asp:Button>
			</div>
			<div class="card-body m-0">
				<div class="row g-1" id="datatable"></div>
			</div>
		</div>
	</div>
	<script>
        const container = document.getElementById('datatable');
        function createCrad(number) {
			const mainCol = document.createElement('div');
			mainCol.className = "col-lg-2";
            const card = document.createElement('div');
            card.className = "card";
            const cardH = document.createElement('div');
            cardH.className = "card-header";
			cardH.innerText = "Title text ";
			const cardB = document.createElement('div');
			cardB.className = "card-body";
            cardB.innerText = "Kal holyday hai for " + number + " days";
			const ButtonHolder = document.createElement('div');
			ButtonHolder.className = "d-grid gap-1 p-2";
			const ButtonView = document.createElement('button');
            ButtonView.className = "btn btn-primary w-20 btn-block btn-s";
            ButtonView.innerText = "View";
            const ButtonRemove = document.createElement('button');
            ButtonRemove.className = "btn btn-danger w-20 btn-block btn-s";
            ButtonRemove.innerText = "Remove";
            ButtonHolder.appendChild(ButtonView);
            ButtonHolder.appendChild(ButtonRemove);
			card.appendChild(cardH);
			card.appendChild(cardB)
			card.appendChild(ButtonHolder);
			mainCol.append(card);

            return mainCol;
        }

        container.appendChild(createCrad(1));
        container.appendChild(createCrad(2));
        container.appendChild(createCrad(3));
        container.appendChild(createCrad(4));
        container.appendChild(createCrad(5));
        container.appendChild(createCrad(6));
        container.appendChild(createCrad(7));
    </script>
</asp:Content>
