<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="LSM.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mb-4">
        <center><img src="img/icon.png" width="150px" /></center>
        <p class="">
            Learning Management System (LMS) refers to the use of a software application for maintaining and enhancing Educational data. The user interface of LMS is designed for System Admin, Teachers and Students. The functionality of each user profile will differ based on their privileges.
        </p>
        <br />
        <p>
            <b>System Admin -</b> Has login credentials for adding/removing users (Teachers/Students). System Admin can Create classrooms, assess progress of the students, update course content and reset login credentials for the already users
        </p>
        <br />
        <p>
            <b>Teacher -</b> Has login credentials for updating syllabus, uploading course material, practical lists and source code. The Teacher can upload and assign assignments to students alongwith deadline dates, release marks as per the student performance and  assign grades on the overall performance of the student
        </p>
        <br />
        <p>
            <b>Student -</b> Has login credentials for registration, accessing course material and practical experiments. Students will have time limits for uploading assignments and will be able to view their monthly and semester grades. In case of login issues, the students are required to contact the System Admin
        </p>
        <tt>
            In conclusion, LMS streamlines the process of educational content management and provides a virtual solution to the advanced learning process
        </tt>
    </div>
</asp:Content>
