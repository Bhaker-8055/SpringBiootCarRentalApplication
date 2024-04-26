<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<title>Rent Car</title>
<style>
.account-section {
	background-color: #f8f9fa;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
}

.container{
    color: #727272;
    text-align: justify;
}
.account-details {
	margin-bottom: 20px;
}
 
   * {
  padding: 0;
  margin: 0;
}


body {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: relative;
  min-height: 100vh;
  font-family: Hack, monospace;
}

div {
  color: #727272;
  text-align: center;
}

h1,h3{
text-align:left}
p {
  margin: 16px;
  font-size: 96px;
  color: #ccc;
  text-transform: uppercase;
  font-weight: 600;
  transition: all 1s ease-in-out;
  position: relative;

  &::before {
    content: attr(data-item);
    transition: all 1s ease-in-out;
    color: #8254ff;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    width: 0;
    overflow: hidden;
  }

  &:hover {
    &::before {
      width: 100%;
    }
  }
}

nav {
    position: fixed;
    top: 0;
  background: #8254ff;
  padding: 25px 0;
  width: 100%;
  
  .menuItems {
    width: fit-content;
    margin:auto;
    list-style: none;
    display: flex;
    align-items:center;
    

    .back{
        list-style: none;
    display: flex;
    }

    li {
      margin:0 50px;

      a {
        text-decoration: none;
        color: white;
        font-size: 24px;
        font-weight: 400;
        transition: all 0.1s ease-in-out;
        position: relative;
        text-transform: uppercase;

        &::before {
          content: attr(data-item);
          transition: 0.5s;
          color: black;
          position: absolute;
          top: 0;
          bottom: 0;
          left: 0;
          right: 0;
          width: 0;
          overflow: hidden;
        }

        &:hover {
          &::before {
            width: 100%;
            transition: all 0.5s ease-in-out;
          }
        }
      }
    }
  }
}

footer {
  position: absolute;
  font-size: 12px;
  bottom: 0;
  width: 100%;
  height: 60px;
  line-height: 60px;
  font-size: 14px;
  background-color: #f1f1f1;
  color: #000000;
  text-align: center;

  a {
    text-decoration: none;
    color: inherit;
    border-bottom: 1px solid;

    &:hover {
      border-bottom: 1px transparent;
    }
  }
}

</style>  

</head>
  
 
  <body>
   

      <nav>
       <ul class="menuItems">
         <li><a href='bookingVehicle'>Book Your Wheels</a></li>
         <li><a href='bookings'>See Bookings</a></li>
         <li><a href='userAccount' >Account</a></li>
         <li><a href='logout' >Logout</a></li>
       </ul>
   
     </nav>
	 <div class="container mt-5">
		<h1>Customer Details</h1>
		<div class="account-section">
			<h3 class="mb-4">Account Information</h3>
			<div class="row account-details">
				<div class="col-md-3">Name:</div>
				<div class="col-md-9">${customer.firstname} ${customer.lastname}</div>
			</div>
			<div class="row account-details">
				<div class="col-md-3">Phone No:</div>
				<div class="col-md-9">${customer.phoneNo}</div>
			</div>
			<div class="row account-details">
				<div class="col-md-3">Gender:</div>
				<div class="col-md-9">${customer.gender}</div>
			</div>
			<div class="row account-details">
				<div class="col-md-3">Driving License:</div>
				<div class="col-md-9">${customer.drivingLicenseNo}</div>
			</div>
		</div>
	</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>