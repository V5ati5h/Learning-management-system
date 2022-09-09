<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LMS.WebForm1" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<!-- imgCarousel starts-->
		<div id="imgCarousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#imgCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#imgCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
			</div>
			<div class="carousel-inner header-carousel">
				<div class="carousel-item owl-carousel-item active"> <img class="img-fluid d-block w-100" src="img/carousel-1.jpg" alt="">
					<div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
						<div class="container">
							<div class="row justify-content-start">
								<div class="col-sm-10 col-lg-8">
									<h5 class="text-primary text-uppercase mb-3 animated slideInDown">Headding 1</h5>
									<h1 class="display-3 text-white animated slideInDown">Title 1</h1>
									<p class="fs-5 text-white mb-4 pb-2">Some text over here..</p> <a href="#" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a> </div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item owl-carousel-item"> <img class="img-fluid d-block w-100" src="img/carousel-2.jpg" alt="">
					<div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
						<div class="container">
							<div class="row justify-content-start">
								<div class="col-sm-10 col-lg-8">
									<h5 class="text-primary text-uppercase mb-3 animated slideInDown">Headding 2</h5>
									<h1 class="display-3 text-white animated slideInDown">Title 2</h1>
									<p class="fs-5 text-white mb-4 pb-2">Some text over here..</p> <a href="#" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a> </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-xxl py-5">
			<div class="container">
				<div class="row g-4">
					<div class="col-lg-3 col-sm-6" data-wow-delay="0.1s">
						<div class="service-item text-center pt-3">
							<div class="p-4"> <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
								<h5 class="mb-3">Skilled Instructors</h5>
								<p>Detail over here</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6" data-wow-delay="0.3s">
						<div class="service-item text-center pt-3">
							<div class="p-4"> <i class="fa fa-3x fa-globe text-primary mb-4"></i>
								<h5 class="mb-3">Online Classes</h5>
								<p>Detail over here</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6" data-wow-delay="0.5s">
						<div class="service-item text-center pt-3">
							<div class="p-4"> <i class="fa fa-3x fa-home text-primary mb-4"></i>
								<h5 class="mb-3">Home Projects</h5>
								<p>Detail over here</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6" data-wow-delay="0.7s">
						<div class="service-item text-center pt-3">
							<div class="p-4"> <i class="fa fa-3x fa-book-open text-primary mb-4"></i>
								<h5 class="mb-3">Book Library</h5>
								<p>Detail over here</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-xxl py-5">
			<div class="container">
				<div class="row g-5">
					<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
						<div class="position-relative h-100"> <img class="img-fluid position-absolute scard w-100 h-100" src="img/carousel-1.jpg" alt="" style="object-fit: cover;"> </div>
					</div>
					<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
						<h6 class="section-title bg-white text-start text-primary pe-3">About Us</h6>
						<h1 class="mb-4">Welcome to eLEARNING</h1>
						<p class="mb-4">Paragraph 1</p>
						<p class="mb-4">Paragraph 2</p>
						<div class="row gy-2 gx-4 mb-4">
							<div class="col-sm-6">
								<p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Skilled Instructors</p>
							</div>
							<div class="col-sm-6">
								<p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Online Classes</p>
							</div>
						</div> <a class="btn btn-primary py-3 px-5 mt-2" href="">Read More</a> </div>
				</div>
			</div>
		</div>
		<div class="container-xxl py-5">
			<div class="container">
				<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
					<h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
					<h1 class="mb-5">Popular Courses</h1> </div>
				<div class="row g-4 justify-content-center">
					<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
						<div class="course-item bg-light scard">
							<div class="position-relative overflow-hidden"> <img class="img-fluid scard" src="img/course-1.jpg" alt="">
								<div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4"> <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a> <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Join Now</a> </div>
							</div>
							<div class="text-center p-4 pb-0">
								<h3 class="mb-0">Bachelor of Science in Information Technology</h3>
								<div class="mb-3"> <small class="fa fa-star text-primary"></small> <small class="fa fa-star text-primary"></small> <small class="fa fa-star text-primary"></small> <small class="fa fa-star text-primary"></small> <small class="fa fa-star text-primary"></small> <small>(123+)</small> </div>
							</div>
							<div class="d-flex border-top"> <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i>3 years</small> <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>60 Students</small> </div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
						<div class="course-item bg-light scard">
							<div class="position-relative overflow-hidden"> <img class="img-fluid scard" src="img/course-2.jpg" alt="">
								<div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4"> <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a> <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Join Now</a> </div>
							</div>
							<div class="text-center p-4 pb-0">
								<h3 class="mb-0">Bachelor of Science in Computer Science</h3>
								<div class="mb-3"> <small class="fa fa-star text-primary"></small> <small class="fa fa-star text-primary"></small> <small class="fa fa-star text-primary"></small> <small class="fa fa-star text-primary"></small> <small class="fa fa-star text-primary"></small> <small>(500+)</small> </div>
							</div>
							<div class="d-flex border-top"> <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i>3 Years</small> <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>120 Students</small> </div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class='container-fluid mx-auto mt-5 mb-5 col-12' style="text-align: center">
			<h1 class="section-title bg-white text-center text-primary">Testimonials</h1>
			<div class="row m-0" style="justify-content: center; gap:1rem;">
				<div class="card col-md-3 col-12">
					<div class="card-content">
						<div class="card-body"> <img class="img " src="img/testimonial-1.jpg" />
							<div class="shadow"></div>
							<div class="card-title">Headding 1</div>
							<div class="card-subtitle">
								<p> <small class="text-muted">text</small> </p>
							</div>
						</div>
					</div>
				</div>
				<div class="card col-md-3 col-12 ml-2">
					<div class="card-content">
						<div class="card-body"> <img class="img" src="img/testimonial-2.jpg" />
							<div class="card-title">Headding 2</div>
							<div class="card-subtitle">
								<p> <small class="text-muted">text</small> </p>
							</div>
						</div>
					</div>
				</div>
				<div class="card col-md-3 col-12 ml-2">
					<div class="card-content">
						<div class="card-body"> <img class="img rck" src="img/testimonial-3.jpg" />
							<div class="card-title">Headding 3</div>
							<div class="card-subtitle">
								<p> <small class="text-muted">text</small> </p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</asp:Content>