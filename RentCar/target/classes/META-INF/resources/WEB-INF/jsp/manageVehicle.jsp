<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  
  <!--Head section-->
  <head>
    <title>Navigation bar</title>
    <meta charset="utf-8">
  <meta name="author" content="anonymous">
  <meta name="generator" content="Sublime text3">
  <meta name="robot" content="index, follow">
  <meta http-equiv="refresh" content="">
  <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
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
  overflow-y:hidden;
}

div {
  color: #727272;
  text-align: center;
}

p {
  margin: 16px;
  font-size: 96px;
  color: #ccc;
  text-transform: uppercase;
  font-weight: 600;
  transition: all 1s ease-in-out;
  position: relative;
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
         <li><a href='manageVehicle' data-item='Vehicle'>Vehicle</a></li>
         <li><a href='adminBookingStatus' data-item='Bookings'>Bookings</a></li>
         <li><a href='logout' data-item='Logout'>Logout</a></li>
       </ul>
       
     </nav>
	 
	 <h1 style="text-align:center">Vehicle Detail</h1>

		<table class="table">
			<thead>
				<th>Id</th>
				<th>Vehicle Model</th>
				<th>Capacity</th>
				<th>Rate Per Day</th>
				<th>License Plate</th>
				<th>Remove Vehicle</th>
				<th>Edit Vehicle</th>
			</thead>
			<c:forEach var="vehicle" items="${vehicles}">
				<tr>
					<td>${vehicle.vehicleId}</td>
					<td>${vehicle.model}</td>
					<td>${vehicle.capacity}</td>
					<td>${vehicle.ratePerDay}</td>
					<td>${vehicle.licensePlate}</td>
					<td><a href="deleteVehicle?id=${vehicle.vehicleId}"
						class="btn btn-warning">Delete</a></td>
					<td><a href="updateVehicle?id=${vehicle.vehicleId}"
						class="btn btn-success">Update</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="addVehicle" class="btn btn-success">Add Vehicle</a>
		
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
