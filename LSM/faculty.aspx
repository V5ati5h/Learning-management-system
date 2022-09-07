<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="faculty.aspx.cs" Inherits="LSM.WebForm17" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="row mb-0">
			<div class="row">
				<div class="card p-0">
					<div class="card-header text-light d-flex justify-content-between align-items-center bg-danger fw-bold">Faculty List
						<asp:Button ID="Button4" class="btn btn-outline-light" runat="server" Text="Add New"></asp:Button>
					</div>
					<div class="card-body m-0">
						<div class="row g-1" id="datatable"></div>
					</div>
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
                cardH.innerText = "Name: " + number;
                const cardImg = document.createElement('img');
                cardImg.className = "card-img-top img-thumbnail";
                cardImg.src = "img/icon.png";
                const cardB = document.createElement('div');
                cardB.className = "card-body d-grid gap-1";
                const ButtonEdit = document.createElement('button');
                ButtonEdit.className = "btn btn-primary w-20 btn-block btn-s";
                ButtonEdit.innerText = "Edit";
                const ButtonView = document.createElement('button');
                ButtonView.className = "btn btn-success w-20 btn-block btn-s";
                ButtonView.innerText = "View";
                const ButtonRemove = document.createElement('button');
                ButtonRemove.className = "btn btn-danger w-20 btn-block btn-s";
                ButtonRemove.innerText = "Remove";
                cardB.appendChild(ButtonEdit);
                cardB.appendChild(ButtonView);
                cardB.appendChild(ButtonRemove);
                card.appendChild(cardH);
                card.appendChild(cardImg);
                card.appendChild(cardB)
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