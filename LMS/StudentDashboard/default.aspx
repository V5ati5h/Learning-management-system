<%@ Page Title="" Language="C#" MasterPageFile="~/StudentDashboard/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LMS.StudentDashboard.WebForm1" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="row">
			<div class="col-lg-3 mb-2">
				<div class="text-center card">
					<div class="card-header text-light bg-primary fw-bold p-2">Timetable</div>
					<div class="card-body p-1">
						<ul class="list-group list-group-flush rounded-pill">
							<li class="list-group-item">Monday</li>
							<li class="list-group-item">Tuesday</li>
							<li class="list-group-item">Wednesday</li>
							<li class="list-group-item">Thursday</li>
							<li class="list-group-item">Friday</li>
							<li class="list-group-item">Saturday</li>
							<li class="list-group-item">Sunday</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="card text-center">
					<div class="card-header text-light bg-primary fw-bold p-2">Download center</div>
					<div class="card-body">
						<!-- Nav tabs -->
						<ul class="nav nav-pills mb-3" id="myTab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="nav-link active" id="assignment-tab" data-bs-toggle="tab" data-bs-target="#assignment" type="button" role="tab" aria-controls="assignment" aria-selected="true">Assignment</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="studnymaterial-tab" data-bs-toggle="tab" data-bs-target="#studnymaterial" type="button" role="tab" aria-controls="studnymaterial" aria-selected="false">Study material</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="syllabus-tab" data-bs-toggle="tab" data-bs-target="#syllabus" type="button" role="tab" aria-controls="syllabus" aria-selected="false">Syllibus</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="others-tab" data-bs-toggle="tab" data-bs-target="#others" type="button" role="tab" aria-controls="others" aria-selected="false">Other</button>
							</li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane active" id="assignment" role="tabpanel" aria-labelledby="assignment-tab">
								<p>Test</p>
							</div>
							<div class="tab-pane" id="studnymaterial" role="tabpanel" aria-labelledby="studnymaterial-tab">
								<p>Test2</p>
							</div>
							<div class="tab-pane" id="syllabus" role="tabpanel" aria-labelledby="syllabus-tab">
								<p>Test3</p>
							</div>
							<div class="tab-pane" id="others" role="tabpanel" aria-labelledby="others-tab">
								<p>Test4</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</asp:Content>