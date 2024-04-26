<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
         <li><a href='manageVehicle' >Vehicle</a></li>
         <li><a href='adminBookingStatus'>Bookings</a></li>
         <li><a href='logout' >Logout</a></li>
       </ul>
   
     </nav>
	 
	 <h1>Update Vehicle Details</h1>
		<form:form method="post" modelAttribute="vehicle">
		<div class="container register">
			<div class="form-row">
				<div class="form-group col-md-6">
					<form:input type="hidden" class="form-control" path="VehicleId"
						value="${vehicle.vehicleId}" placeholder="Enter Vehicle ID" />
				</div>
				<div class="form-group col-md-6">
					<label for="model">Vehicle Model</label>
					<form:input type="text" class="form-control" path="model"
						placeholder="Enter Model Name" />
					<span class="text-danger small"><form:errors path="model" /></span>
				</div>
				<div class="form-group col-md-6">
					<label for="capacity">Capacity</label>
					<form:input type="number" class="form-control" path="capacity"
						placeholder="Enter seat Capacity " />
					<span class="text-danger small"><form:errors path="capacity" /></span>

				</div>
				<div class="form-group col-md-6">
					<label for="ratePerDay">Rate Per Day</label>
					<form:input type="number" class="form-control" path="ratePerDay"
						placeholder="Enter Per Day Rate" />
					<span class="text-danger small"><form:errors
							path="ratePerDay" /></span>
				</div>
				<div class="form-group col-md-6">
					<label for="licencePlate">License Plate</label>
					<form:input type="text" class="form-control" path="licensePlate"
						placeholder="Enter License Plate number " />
					<span class="text-danger small"><form:errors
							path="licensePlate" /></span>
				</div>
			</div>
			<input type="submit" class="btn btn-success" />
			</div>
		</form:form>
	
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>