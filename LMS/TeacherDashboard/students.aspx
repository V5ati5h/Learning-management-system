<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherDashboard/main.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="LMS.TeacherDashboard.WebForm2" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="row mb-0">
        <div class="col">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddDepart" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddDepart_SelectedIndexChanged">
                    <asp:ListItem>Select Department</asp:ListItem>
                </asp:DropDownList>
                <label for="ddDepart">Department</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddClass" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddClass_SelectedIndexChanged">
                    <asp:ListItem>Select Class</asp:ListItem>
                </asp:DropDownList>
                <label for="ddClass">Class</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddSem" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddSem_SelectedIndexChanged">
                    <asp:ListItem>Select Semister</asp:ListItem>
                </asp:DropDownList>
                <label for="ddSem">Semester</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <asp:DropDownList CssClass="form-control" ID="ddDiv" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddDiv_SelectedIndexChanged">
                    <asp:ListItem>Select Division</asp:ListItem>
                </asp:DropDownList>
                <label for="ddDiv">Division</label>
            </div>
        </div>
        </div>
        <div class="row">
            <div class="col-lg-2">
                <div class="form-floating mb-3">
                    <asp:DropDownList CssClass="form-control" ID="ddSearchBy" runat="server" AutoPostBack="true">
                        <asp:ListItem>First name</asp:ListItem>
                        <asp:ListItem>Middle name</asp:ListItem>
                        <asp:ListItem>Last name</asp:ListItem>
                    </asp:DropDownList>
                    <label for="ddDiv">Search by</label>
                </div>
            </div>
            <div class="col m-0">
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="txtSearch" runat="server" placeholder="Search"></asp:TextBox>
                    <label for="txtSearch">Search</label>
                </div>
            </div>
        </div>
        <div class="col">
			<div class="card p-0">
				<div class="card-header text-light d-flex justify-content-between align-items-center bg-success fw-bold">Student List
					<asp:Button ID="Button2" class="btn btn-outline-light" runat="server" Text="Add New" OnClick="Button2_Click"></asp:Button>
				</div>
				<div class="card-body m-0 p-0">
					<!-- <div class="row g-1" id="datatable"></div> -->
					<asp:GridView ID="gridview" CssClass="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="studentId" DataSourceID="SqlDataSource1" AllowPaging="True">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="studentId" HeaderText="studentId" InsertVisible="False" ReadOnly="True" SortExpression="studentId" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="grNo" HeaderText="grNo" SortExpression="grNo" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="rollNo" HeaderText="rollNo" SortExpression="rollNo" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="image" HeaderText="image" SortExpression="image" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="firstName" HeaderText="firstName" SortExpression="firstName" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="middleName" HeaderText="middleName" SortExpression="middleName" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="lastName" HeaderText="lastName" SortExpression="lastName" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="department" HeaderText="department" SortExpression="department" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="semName" HeaderText="semName" SortExpression="semName" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="className" HeaderText="className" SortExpression="className" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="divName" HeaderText="divName" SortExpression="divName" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="email" HeaderText="email" SortExpression="email" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="mobile" HeaderText="mobile" SortExpression="mobile" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="dateOfBirth" HeaderText="dateOfBirth" SortExpression="dateOfBirth" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="username" HeaderText="username" SortExpression="username" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="password" HeaderText="password" SortExpression="password" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center bg-success text-capitalize text-light" DataField="createdDate" HeaderText="createdDate" SortExpression="createdDate" >
<HeaderStyle CssClass="text-center bg-success text-capitalize text-light"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                                </asp:BoundField>
                            </Columns>

						</asp:GridView>
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LSMConnectionString1 %>" SelectCommand="SELECT * FROM [Tbl_Student]" UpdateCommand="UPDATE Tbl_Student SET grNo=@grNo,rollNo=@rollNo,image=@image,firstName=@firstName,middleName=@middleName,lastName=@lastName,department=@department,semName=@semName,className=@className,divName=@divName,email=@email,mobile=@mobile,dateOfBirth=@dateOfBirth,username=@username,password=@password WHERE studentId=@studentId" DeleteCommand="DELETE FROM Tbl_Student WHERE studentId=@studentId"></asp:SqlDataSource>
				</div>
			</div>
		</div>
		<!-- <script>
            const container = document.getElementById('datatable');

            function createCrad(number) {
                const mainCol = document.createElement('div');
                mainCol.className = "col-lg-2";
                const card = document.createElement('div');
                card.className = "card";
                const cardH = document.createElement('div');
                cardH.className = "card-header";
                cardH.innerText = "Gi: " + number;
                const cardImg = document.createElement('img');
                cardImg.className = "card-img-top img-thumbnail";
                cardImg.src = "../img/icon.png";
                const cardB = document.createElement('div');
                cardB.className = "card-body";
                cardB.innerText = "Name: " + "VSatish\n" + "Roll no: " + number + "\nMobile no: " + number;
                const ButtonHolder = document.createElement('div');
                ButtonHolder.className = "d-grid gap-1 p-2";
                const ButtonEdit = document.createElement('button');
                ButtonEdit.className = "btn btn-primary w-20 btn-block btn-s";
                ButtonEdit.innerText = "Edit";
                const ButtonView = document.createElement('button');
                ButtonView.className = "btn btn-success w-20 btn-block btn-s";
                ButtonView.innerText = "View";
                ButtonHolder.appendChild(ButtonEdit);
                ButtonHolder.appendChild(ButtonView);
                card.appendChild(cardH);
                card.appendChild(cardImg);
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
		</script> -->
	</asp:Content>