<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<title>Rent Car</title>
  
<style>
   
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
.container{
	margin-top:7rem;
}

div {
  color: #727272;
  text-align: center;
}

p {
  margin: 16px;
  font-size: 30px;
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
  z-index:10;
  
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

.vehicle-card {
	border-radius: 10px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
}

.vehicle-image {
	width: 100%;
	height: 200px;
	object-fit: cover;
	border-radius: 10px 10px 0 0;
}

.vehicle-details {
	padding: 1rem;
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
         <li><a href='bookingVehicle' >Book Your Wheels</a></li>
         <li><a href='bookings' >See Booking</a></li>
         <li><a href='userAccount' >Account</a></li>
         <li><a href='logout' >Logout</a></li>
       </ul>
       <!-- <ul class="menuItems">
           <li><a href='#' data-item='BACK'>BACK</a></li>
         </ul> -->
     </nav>
	 
	 
	 <div class="container">
		<h1 class="mb-4">Select a Vehicle for Booking</h1>
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<!-- Repeat this vehicle card for each vehicle in the database -->
			<c:forEach var="vehicle" items="${vehicleList}">
			<div class="col">
				<div class="card vehicle-card">
					<img src="carImage.jpg" class="card-img-top vehicle-image"
						alt="Vehicle Image">
					<div class="card-body vehicle-details">
						<h5 class="card-title">${vehicle.model}</h5>
						<p class="card-text">Seat Capacity: ${vehicle.capacity}</p>
						<p class="card-text">Rate Per Day: ${vehicle.ratePerDay}</p>
						<a href="bookingVehicleNextPage?id=${vehicle.vehicleId }" class="btn btn-primary">Book Now</a>
					</div>
				</div>
			</div>
			</c:forEach>
			<!-- End of vehicle card -->
		</div>
	</div>
	 





 <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>

</html>
