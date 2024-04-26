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
 
</style>  
 
</head>

<body>

 
      <nav>
<ul class="menuItems">
<li><a href='manageVehicle' >Vehicle</a></li>
<li><a href='adminBookingStatus' >Bookings</a></li>
<li><a href='logout' >Logout</a></li>
</ul>
</nav>


 <div>
  <img src="Home.jpg" alt="background ">
  
  </div>
	
 
 
 
  </body>

 
</html>

has context menu
Compose