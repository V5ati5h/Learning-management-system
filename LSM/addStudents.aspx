<%@ Page Title="" Language="C#" MasterPageFile="~/TeachersDashboard.Master" AutoEventWireup="true" CodeBehind="addStudents.aspx.cs" Inherits="LSM.WebForm20" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="row m-3 mb-0">
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
				<div class="card m-3 mt-0">
					<div class="card-body">
						<div class="d-flex justify-content-end">
							<asp:Button ID="Button2" class="btn btn-success" runat="server" Text="Bulk Upload"></asp:Button>
						</div>
						<div class="row text-center">
							<h1 class="display-5 fw-bold ls-tight">Regester New
                                    <span class="text-success"> Student</span>
                                </h1> </div>
						<asp:label CssClass="text-center" id="libmsg" runat="server" Text="result" Visible="false"></asp:label>
						<hr />
						<!-- Nav tabs -->
						<ul class="nav nav-pills mb-3" id="myTab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="nav-link active" id="bacicinfo-tab" data-bs-toggle="tab" data-bs-target="#bacicinfo" type="button" role="tab" aria-controls="basicinfo" aria-selected="true">Basic Infromation</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="parentsdetails-tab" data-bs-toggle="tab" data-bs-target="#parentsdetails" type="button" role="tab" aria-controls="socialmedia" aria-selected="false">Parent/Guardian Details</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="miscellanousdetails-tab" data-bs-toggle="tab" data-bs-target="#miscellanousdetails" type="button" role="tab" aria-controls="miscellanousdetails" aria-selected="true">Miscellanous Details</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="documents-tab" data-bs-toggle="tab" data-bs-target="#documents" type="button" role="tab" aria-controls="documents" aria-selected="false">Documents</button>
							</li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane active" id="bacicinfo" role="tabpanel" aria-labelledby="bacicinfo-tab">
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtAdorGiNo" runat="server" placeholder="Adm/GR No."></asp:TextBox>
											<label for="txtAdorGiNo">Adm/GR No.</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtRollNo" runat="server" placeholder="Roll Number"></asp:TextBox>
											<label for="txtRollNo">Roll Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtClass" runat="server" placeholder="Class"></asp:TextBox>
											<label for="txtClass">Class</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtSection" runat="server" placeholder="Section"></asp:TextBox>
											<label for="txtSection">Section</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
											<label for="txtFirstName">First Name</label>
										</div>
										<div id="textExample1" class="form-text">
											<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtfname" Visible="false" ForeColor="#CC0000"></asp:RequiredFieldValidator>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtMiddeletName" runat="server" placeholder="Middele Name"></asp:TextBox>
											<label for="txtMiddeletName">Middle Name</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
											<label for="txtLastName">Last Name</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtDateOfBirth" runat="server" placeholder="Date Of Birth"></asp:TextBox>
											<label for="txtDateOfBirth">Date Of Birth</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtFirstNameReg" runat="server" placeholder="First Name (Other Language)"></asp:TextBox>
											<label for="txtFirstNameReg">First Name (Other Language)</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtMiddleNameReg" runat="server" placeholder="Father Name (Other Language)"></asp:TextBox>
											<label for="txtMiddleNameReg">Middle Name (Other Language)</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtLastNameReg" runat="server" placeholder="Last Name (Other Language)"></asp:TextBox>
											<label for="txtLastNameReg">Last Name (Other Language)</label>
										</div>
									</div>
									<div class="col"></div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:DropDownList CssClass="form-control" ID="Catagory" runat="server">
												<asp:ListItem>Genral/Open</asp:ListItem>
												<asp:ListItem>SC</asp:ListItem>
												<asp:ListItem>ST</asp:ListItem>
												<asp:ListItem>OBC</asp:ListItem>
											</asp:DropDownList>
											<label for="Catagory">Catagory</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtReligion" runat="server" placeholder="Religion"></asp:TextBox>
											<label for="txtReligion">Religion</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtCast" runat="server" placeholder="Cast"></asp:TextBox>
											<label for="txtCast">Cast</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtSubCast" runat="server" placeholder="Sub-Cast"></asp:TextBox>
											<label for="txtSubCast">Sub-Cast</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtPlaceOfBirthVC" runat="server" placeholder="Place Of Birth (Village/City)"></asp:TextBox>
											<label for="txtPlaceOfBirthVC">Place Of Birth (Village/City)</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtPlaceOfBirthT" runat="server" placeholder="Place Of Birth (Taluka)"></asp:TextBox>
											<label for="txtPlaceOfBirthT">Place Of Birth (Taluka)</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtPlaceOfBirthD" runat="server" placeholder="Place Of Birth (District)"></asp:TextBox>
											<label for="txtPlaceOfBirthD">Place Of Birth (District)</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtPlaceOfBirthS" runat="server" placeholder="Place Of Birth (State)"></asp:TextBox>
											<label for="txtPlaceOfBirthS">Place Of Birth (State)</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtPlaceOfBirthC" runat="server" placeholder="Place Of Birth (Country)"></asp:TextBox>
											<label for="txtPlaceOfBirthC">Place Of Birth (Country)</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtNationality" runat="server" placeholder="Nationality"></asp:TextBox>
											<label for="txtNationality">Nationality</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtMotherTongue" runat="server" placeholder="Mother Tongue"></asp:TextBox>
											<label for="txtMotherTongue">Mother Tongue</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:DropDownList CssClass="form-control" ID="ddBloodGroup" runat="server">
												<asp:ListItem>A+</asp:ListItem>
												<asp:ListItem>A-</asp:ListItem>
												<asp:ListItem>B+</asp:ListItem>
												<asp:ListItem>B-</asp:ListItem>
											</asp:DropDownList>
											<label for="ddBloodGroup">Blood Group</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtHeight" runat="server" placeholder="Height" TextMode="Number"></asp:TextBox>
											<label for="txtHeight">Height</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtWeight" runat="server" placeholder="Weight" TextMode="Number"></asp:TextBox>
											<label for="txtWeight">Weight</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:DropDownList CssClass="form-control" ID="ddGender" runat="server">
												<asp:ListItem>Male</asp:ListItem>
												<asp:ListItem>Female</asp:ListItem>
												<asp:ListItem>Other</asp:ListItem>
											</asp:DropDownList>
											<label for="ddGender">Gender</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtAsOnDate" runat="server" placeholder="As On Date"></asp:TextBox>
											<label for="txtAsOnDate">As On Date</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtAddmissionDate" runat="server" placeholder="Addmission Date"></asp:TextBox>
											<label for="txtAddmissionDate">Addmission Date</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtMobileNo" runat="server" placeholder="Mobile Number" TextMode="Number"></asp:TextBox>
											<label for="txtMobileNo">Mobile Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtEmergencyMobileNumber" runat="server" placeholder="Emergency Contact Number" TextMode="Number"></asp:TextBox>
											<label for="txtEmergencyMobileNumber">Emergency Contact Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtEmailAddress" runat="server" placeholder="Email Address"></asp:TextBox>
											<label for="txtEmailAddress">Email Address</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtCurrentAddress" runat="server" TextMode="MultiLine" Height="100" placeholder="Current Address"></asp:TextBox>
											<label for="txtCurrentAddress">Current Address</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtPermananetAddress" runat="server" TextMode="MultiLine" Height="100" placeholder="Permanenet Address"></asp:TextBox>
											<label for="txtPermananetAddress">Permanenet Address</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
											<label for="txtUsername">Username</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" textmode="password" placeholder="Password"></asp:TextBox>
											<label for="txtPassword">Password</label>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="miscellanousdetails" role="tabpanel" aria-labelledby="miscellanousdetails-tab">
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtBankAccountNumber" runat="server" placeholder="Bank Account Number"></asp:TextBox>
											<label for="txtBankAccountNumber">Bank Account Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtBankName" runat="server" placeholder="Bank Name"></asp:TextBox>
											<label for="txtBankName">Bank Name</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtIFSCCode" runat="server" placeholder="IFSC Code"></asp:TextBox>
											<label for="txtIFSCCode">IFSC Code</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="TxtAAdharNumber" runat="server" placeholder="Aadhar Number"></asp:TextBox>
											<label for="TxtAAdharNumber">Aadhar Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtStudentId" runat="server" placeholder="Student Id"></asp:TextBox>
											<label for="txtStudentId">Student Id</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:DropDownList CssClass="form-control" ID="ddRTE" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddDepart_SelectedIndexChanged">
												<asp:ListItem>Yes</asp:ListItem>
												<asp:ListItem>No</asp:ListItem>
											</asp:DropDownList>
											<label for="ddRTE">RTE</label>
										</div>
									</div>
									<div class="row">
										<div class="col">
											<div class="form-floating mb-3">
												<asp:TextBox CssClass="form-control" ID="txtPrevSchool" runat="server" TextMode="MultiLine" Height="100" placeholder="Previous School Name"></asp:TextBox>
												<label for="txtPrevSchool">Previous School Name</label>
											</div>
										</div>
										<div class="col">
											<div class="form-floating mb-3">
												<asp:TextBox CssClass="form-control" ID="txtNote" runat="server" TextMode="MultiLine" Height="100" placeholder="Note"></asp:TextBox>
												<label for="txtNote">Note</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="parentsdetails" role="tabpanel" aria-labelledby="socialmedia-tab">
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtFatherName" runat="server" placeholder="Account Title"></asp:TextBox>
											<label for="txtFatherName">Father Name</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtFathersPhoneNumber" runat="server" placeholder="Fathers Phone Number"></asp:TextBox>
											<label for="txtFathersPhoneNumber">Fathers Phone Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtFathersOccupation" runat="server" placeholder="Fathers Occupation"></asp:TextBox>
											<label for="txtFathersOccupation">Fathers Occupation</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtMothersName" runat="server" placeholder="Mothers Name"></asp:TextBox>
											<label for="txtMothersName">Mothers Name</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtMothersPhoneNumber" runat="server" placeholder="Mothers Phone Number"></asp:TextBox>
											<label for="txtMothersPhoneNumber">Mothers Phone Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtMothersOccupation" runat="server" placeholder="Mothers Occupation"></asp:TextBox>
											<label for="txtMothersOccupation">Mothers Occupation</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:DropDownList CssClass="form-control" ID="ddEmergencyContact" runat="server" AutoPostBack="true">
												<asp:ListItem>Father</asp:ListItem>
												<asp:ListItem>Mother</asp:ListItem>
												<asp:ListItem>Other</asp:ListItem>
											</asp:DropDownList>
											<label for="ddEmergencyContact">Emergency Contact</label>
										</div>
									</div>
									<div class="col"></div>
									<div class="col"></div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtGuardianName" runat="server" placeholder="Guardian Name"></asp:TextBox>
											<label for="txtGuardianName">Guardian Name</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtGuardianRelation" runat="server" placeholder="Guardian Relation"></asp:TextBox>
											<label for="txtGuardianRelation">Guardian Relation</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtGuardianEmail" runat="server" placeholder="Guardian Email"></asp:TextBox>
											<label for="txtGuardianEmail">Guardian Email</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtGuardianPhoneNumber" runat="server" placeholder="Guardian Phone Number"></asp:TextBox>
											<label for="txtGuardianPhoneNumber">Guardian Phone Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtGuardianOccupation" runat="server" placeholder="Guardian Occupation"></asp:TextBox>
											<label for="txtGuardianOccupation">Guardian Occupation</label>
										</div>
									</div>
									<div class="col"></div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" TextMode="MultiLine" Height="100" placeholder="Current Address"></asp:TextBox>
											<label for="txtCurrentAddress">Current Address</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtPermanenetAddress" runat="server" TextMode="MultiLine" Height="100" placeholder="Permanenet Address"></asp:TextBox>
											<label for="txtPermanenetAddress">Permanenet Address</label>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="documents" role="tabpanel" aria-labelledby="documents-tab">
								<div class="row">
									<div class="col">
										<label>Birth Certificate</label>
									</div>
									<div class="col">
										<label>AadharCard</label>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<label>Other Documents</label>
									</div>
									<div class="col"> </div>
								</div>
							</div>
						</div>
						<div class="row form-group ms-5 me-5">
							<asp:Button CssClass="btn btn-success w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Regester" /> </div>
					</div>
				</div>
			</div>
		</div>
	</asp:Content>