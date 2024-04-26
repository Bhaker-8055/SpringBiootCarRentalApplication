<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Register</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='' rel='stylesheet'>
<style>
.register {
	background: -webkit-linear-gradient(left, #3931af, #00c6ff);
	margin-top: 3%;
	padding: 3%;
}

.register-left {
	text-align: center;
	color: #fff;
	margin-top: 4%;
}

.register-left input {
	border: none;
	border-radius: 1.5rem;
	padding: 2%;
	width: 60%;
	background: #f8f9fa;
	font-weight: bold;
	color: #383d41;
	margin-top: 30%;
	margin-bottom: 3%;
	cursor: pointer;
}

.register-right {
	background: #f8f9fa;
	border-top-left-radius: 10% 50%;
	border-bottom-left-radius: 10% 50%;
}

.register-left img {
	margin-top: 15%;
	margin-bottom: 5%;
	width: 25%;
	-webkit-animation: mover 2s infinite alternate;
	animation: mover 1s infinite alternate;
}

@
-webkit-keyframes mover { 0% {
	transform: translateY(0);
}

100
%
{
transform
:translateY
(
-20px
)
;


}
}
@
keyframes mover { 0% {
	transform: translateY(0);
}

100
%
{
transform
:translateY
(
-20px
)
;


}
}
.register-left p {
	font-weight: lighter;
	padding: 12%;
	margin-top: -9%;
}

.register .register-form {
	padding: 10%;
	margin-top: 10%;
}

.btnRegister {
	float: right;
	margin-top: 10%;
	border: none;
	border-radius: 1.5rem;
	padding: 2%;
	background: #0062cc;
	color: #fff;
	font-weight: 600;
	width: 50%;
	cursor: pointer;
}

.register .nav-tabs {
	margin-top: 3%;
	border: none;
	background: #0062cc;
	border-radius: 1.5rem;
	width: 28%;
	float: right;
}

.register .nav-tabs .nav-link {
	padding: 2%;
	height: 34px;
	font-weight: 600;
	color: #fff;
	border-top-right-radius: 1.5rem;
	border-bottom-right-radius: 1.5rem;
}

.register .nav-tabs .nav-link:hover {
	border: none;
}

.register .nav-tabs .nav-link.active {
	width: 100px;
	color: #0062cc;
	border: 2px solid #0062cc;
	border-top-left-radius: 1.5rem;
	border-bottom-left-radius: 1.5rem;
}

.register-heading {
	text-align: center;
	margin-top: 8%;
	margin-bottom: -15%;
	color: #495057;
}
</style>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script type='text/javascript'
	src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script type='text/javascript'
	src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
</head>
<body oncontextmenu='return false' class='snippet-body'>
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<h4>R</h4>
				<h4>E</h4>
				<h4>G</h4>
				<h4>I</h4>
				<h4>S</h4>
				<h4>T</h4>
				<h4>E</h4>
				<h4>R</h4>
				<a href="login"> <input type="submit" name="" value="BACK">
				</a>

			</div>
			<div class="col-md-9 register-right">
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">Register</h3>
						<form:form method="post" modelAttribute="customer">
							<div class="row register-form">

								<div class="col-md-6">
									<div class="form-group">
										<label for="firstname">First Name</label>
										<form:input type="text" class="form-control" path="firstname"
											placeholder="Enter your first name" />

										<span class="text-danger small"><form:errors
												path="firstname" /></span>
									</div>
									<div class="form-group">
										<label for="lastname">Last Name</label>
										<form:input type="text" class="form-control" path="lastname"
											placeholder="Enter your last name" />

										<span class="text-danger small"><form:errors
												path="lastname" /></span>
									</div>
									<div class="form-group">
										<label for="username">Username</label> <input type="text"
											class="form-control" name="username"
											placeholder="Enter your username" />
									</div>
									<div class="form-group">
										<label for="password">Password</label> <input type="password"
											class="form-control" name="password"
											placeholder="Enter your password" />
									</div>
								</div>



								<div class="col-md-6">
									<div class="form-group">
										<label for="phoneNo">Phone Number</label>
										<form:input type="tel" class="form-control" path="phoneNo"
											placeholder="Enter your phone number" />

										<span class="text-danger small"><form:errors
												path="phoneNo" /></span>
									</div>
									<div class="form-group">
										<label for="gender">Gender</label>
										<form:select class="form-control" path="gender">
											<option value="Select">Select..</option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
											<option value="Other">Other</option>
										</form:select>
									</div>

									<div class="form-group">
										<label for="drivingLicenseNo">Driving License Number</label>
										<form:input type="text" class="form-control"
											path="drivingLicenseNo"
											placeholder="Enter your driving license number" />

										<span class="text-danger small"><form:errors
												path="drivingLicenseNo" /></span>
									</div>
								</div>


								<div class="col-md-6">
									<button type="submit" class="btn btn-primary btn-block">Sign
										Up</button>
								</div>
							
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type='text/javascript'></script>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>