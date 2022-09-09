<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard/main.Master" AutoEventWireup="true" CodeBehind="addFaculty.aspx.cs" Inherits="LMS.AdminDashboard.WebForm5" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="row">
			<div class="col">
				<div class="card m-3">
					<div class="card-body">
						<div class="d-flex justify-content-end">
							<asp:Button ID="Button2" class="btn btn-danger" runat="server" Text="Bulk Upload" OnClick="Button2_Click"></asp:Button>
						</div>
						<div class="row text-center">
							<h1 class="display-5 fw-bold ls-tight">Regester New
                                    <span class="text-danger"> Faculty</span>
                                </h1> </div>
						<asp:label CssClass="text-center" id="libmsg" runat="server" Text="result" Visible="false"></asp:label>
						<hr />
						<!-- Nav tabs -->
						<ul class="nav nav-pills mb-3" id="myTab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="nav-link active" id="bacicinfo-tab" data-bs-toggle="tab" data-bs-target="#bacicinfo" type="button" role="tab" aria-controls="basicinfo" aria-selected="true">Basic Infromation</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="miscellanousdetails-tab" data-bs-toggle="tab" data-bs-target="#miscellanousdetails" type="button" role="tab" aria-controls="miscellanousdetails" aria-selected="true">Miscellanous Details</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="bankdetails-tab" data-bs-toggle="tab" data-bs-target="#bankdetails" type="button" role="tab" aria-controls="bankdetails" aria-selected="false">Bank Details</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="socialmedia-tab" data-bs-toggle="tab" data-bs-target="#socialmedia" type="button" role="tab" aria-controls="socialmedia" aria-selected="false">Social Links</button>
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
											<asp:DropDownList CssClass="form-control" ID="ddRole" runat="server" AutoPostBack="true">
												<asp:ListItem>Select Role</asp:ListItem>
												<asp:ListItem>Admin</asp:ListItem>
												<asp:ListItem>Teaching</asp:ListItem>
												<asp:ListItem>Non-teaching</asp:ListItem>
											</asp:DropDownList>
											<label for="ddRole">Role</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtdept" runat="server" placeholder="Department Number"></asp:TextBox>
											<label for="txtdept">Department no</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtdeptname" runat="server" placeholder="Department Name"></asp:TextBox>
											<label for="txtdeptname">Department Name</label>
										</div>
									</div>
									<div class="col"></div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtfirstname" runat="server" placeholder="First Name"></asp:TextBox>
											<label for="txtfirstname">First Name</label>
										</div>
										<div id="textExample1" class="form-text">
											<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtfname" Visible="false" ForeColor="#CC0000"></asp:RequiredFieldValidator>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtlname" runat="server" placeholder="Last Name"></asp:TextBox>
											<label for="txtlname">Last Name</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtfname" runat="server" placeholder="Father Name"></asp:TextBox>
											<label for="txtfname">Father Name</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtmname" runat="server" placeholder="Mother Name"></asp:TextBox>
											<label for="txtmname">Mother Name</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Visible="false" ErrorMessage="Invallid email" ControlToValidate="txtemailaddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
											<asp:TextBox CssClass="form-control" ID="txtemailaddress" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
											<label for="txtemailaddress">Email Address</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtgender" runat="server" placeholder="Gender"></asp:TextBox>
											<label for="txtgender">Gender</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtdateofbirth" runat="server" placeholder="Date Of Birth"></asp:TextBox>
											<label for="txtdateofbirth">Date Of Birth</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtdateofjoining" runat="server" placeholder="Date Of Joining"></asp:TextBox>
											<label for="txtdateofjoining">Date Of Joining</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtmobileno" runat="server" placeholder="Mobile Number" TextMode="Number"></asp:TextBox>
											<label for="txtmobileno">Mobile Number</label>
											<div class="form-helper">
												<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Visible="false" ControlToValidate="txtmobileno" ForeColor="#CC0000"></asp:RequiredFieldValidator>
												<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="10 digits required" Visible="false" ControlToValidate="txtmobileno" ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
											</div>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtemergencymobilenumber" runat="server" placeholder="Emergency Contact Number" TextMode="Number"></asp:TextBox>
											<label for="txtemergencymobilenumber">Emergency Contact Number</label>
											<div class="form-helper">
												<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Visible="false" ControlToValidate="txtemergencymobilenumber" ForeColor="#CC0000"></asp:RequiredFieldValidator>
												<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="10 digits required" Visible="false" ControlToValidate="txtemergencymobilenumber" ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
											</div>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtmarritalststus" runat="server" placeholder="Marrital Status"></asp:TextBox>
											<label for="txtmarritalststus">Marrital Status</label>
										</div>
									</div>
									<div class="col align-content-center">
										<div class="input-group">
											<div class="custom-file">
												<asp:FileUpload ID="FileUpload2" runat="server" CssClass="custom-file-input" aria-describedby="inputGroupFileAddon01" placeholder="Upload Image" /> </div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtcurrentaddress" runat="server" TextMode="MultiLine" Height="100" placeholder="Current Address"></asp:TextBox>
											<label for="txtcurrentaddress">Current Address</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtpermananetaddress" runat="server" TextMode="MultiLine" Height="100" placeholder="Permanenet Address"></asp:TextBox>
											<label for="txtpermananetaddress">Permanenet Address</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtqualification" runat="server" placeholder="Qualification"></asp:TextBox>
											<label for="txtqualification">Qualification</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtworkexperiance" runat="server" textmode="password" placeholder="Work Experiance"></asp:TextBox>
											<label for="txtworkexperiance">Work Experiance</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtnote" runat="server" textmode="password" placeholder="Note"></asp:TextBox>
											<label for="txtnote">Note</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtusername" runat="server" placeholder="Username"></asp:TextBox>
											<label for="txtusername">Username</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="txtpassword" runat="server" textmode="password" placeholder="Password"></asp:TextBox>
											<label for="txtpassword">Password</label>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="miscellanousdetails" role="tabpanel" aria-labelledby="miscellanousdetails-tab">
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="epfnumber" runat="server" placeholder="EPF Number"></asp:TextBox>
											<label for="epfnumber">EPF Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="basicsalary" runat="server" placeholder="Basic Salary"></asp:TextBox>
											<label for="basicsalary">Basic Salary</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="contracttype" runat="server" placeholder="Contract Type"></asp:TextBox>
											<label for="contracttype">Contract Type</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="workshift" runat="server" placeholder="Work Shift"></asp:TextBox>
											<label for="workshift">Work Shift</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="location" runat="server" placeholder="Location"></asp:TextBox>
											<label for="location">Location</label>
										</div>
									</div>
									<div class="col"></div>
								</div>
							</div>
							<div class="tab-pane" id="bankdetails" role="tabpanel" aria-labelledby="bankdetails-tab">
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="accountTitle" runat="server" placeholder="Account Title"></asp:TextBox>
											<label for="accountTitle">Account Title</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="bankAccountNumber" runat="server" placeholder="Bank Account Number"></asp:TextBox>
											<label for="bankAccountNumber">Bank Account Number</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="bankName" runat="server" placeholder="Bank Name"></asp:TextBox>
											<label for="bankName">Bank Name</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="ifscCode" runat="server" placeholder="IFSC Code"></asp:TextBox>
											<label for="ifscCode">IFSC Code</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="bankBranchName" runat="server" placeholder="Bank Branch Name"></asp:TextBox>
											<label for="bankBranchName">Bank Branch Name</label>
										</div>
									</div>
									<div class="col"></div>
								</div>
							</div>
							<div class="tab-pane" id="socialmedia" role="tabpanel" aria-labelledby="socialmedia-tab">
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="facebookLink" runat="server" placeholder="Facebook URL"></asp:TextBox>
											<label for="facebookLink">Facebook URL</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="twitterLink" runat="server" placeholder="Twitter URL"></asp:TextBox>
											<label for="twitterLink">Twitter URL</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="linkedinLink" runat="server" placeholder="Linkedin URL"></asp:TextBox>
											<label for="twitterLink">Linkedin URL</label>
										</div>
									</div>
									<div class="col">
										<div class="form-floating mb-3">
											<asp:TextBox CssClass="form-control" ID="instagramLink" runat="server" placeholder="Instagram URL"></asp:TextBox>
											<label for="instagramLink">Instagram URL</label>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="documents" role="tabpanel" aria-labelledby="documents-tab">
								<div class="row">
									<div class="col">
										<label>Resume</label>
									</div>
									<div class="col">
										<label>Joinging Letterd</label>
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
							<asp:Button CssClass="btn btn-danger w-20 btn-block btn-lg" ID="Button1" runat="server" Text="Regester" OnClick="Button1_Click" /> </div>
					</div>
				</div>
			</div>
		</div>
	</asp:Content>