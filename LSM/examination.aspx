<%@ Page Title="" Language="C#" MasterPageFile="~/StudentDashboard.Master" AutoEventWireup="true" CodeBehind="examination.aspx.cs" Inherits="LSM.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-9">
            <div class="card text-center">
                <div class="card-header text-light bg-primary fw-bold p-2">Examination center</div>
                <div class="card-body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-pills mb-3" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="completed-tab" data-bs-toggle="tab" data-bs-target="#completed" type="button" role="tab" aria-controls="completed" aria-selected="true">Completed</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="yts-tab" data-bs-toggle="tab" data-bs-target="#yts" type="button" role="tab" aria-controls="yts" aria-selected="false">Yet to start</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="resume-tab" data-bs-toggle="tab" data-bs-target="#resume" type="button" role="tab" aria-controls="resume" aria-selected="false">Resume</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="expired-tab" data-bs-toggle="tab" data-bs-target="#expired" type="button" role="tab" aria-controls="expired" aria-selected="false">Expired</button>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="completed" role="tabpanel" aria-labelledby="completed-tab"><p>Completed</p></div>
                        <div class="tab-pane" id="yts" role="tabpanel" aria-labelledby="yts-tab"><p>Yet to start</p></div>
                        <div class="tab-pane" id="resume" role="tabpanel" aria-labelledby="resume-tab"><p>Resume</p></div>
                        <div class="tab-pane" id="expired" role="tabpanel" aria-labelledby="expired-tab"><p>Expiered</p></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 mb-2">
            <div class="text-center card">
                <div class="card-header text-light bg-primary fw-bold p-2">Timetable</div>
                <ul class="list-group list-group-flush rounded-pill">
                    <li class="list-group-item">Sem1</li>
                    <li class="list-group-item">Sem2</li>
                    <li class="list-group-item">Sem3</li>
                    <li class="list-group-item">Sem4</li>
                    <li class="list-group-item">Sem5</li>
                    <li class="list-group-item">Sem6</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>