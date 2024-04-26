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

</style>  

</head>
  
 
  <body>
   

      <nav>
       <ul class="menuItems">
         <li><a href='bookingVehicle' data-item='Book Your Wheels'>Book Your Wheels</a></li>
         <li><a href='bookings' data-item='See Booking'>See Booking</a></li>
         <li><a href='userAccount' data-item='Account'>Account</a></li>
         <li><a href='logout' data-item='Logout'>Logout</a></li>
       </ul>
       
     </nav>

  
  <div>
  <img src="Home.jpg" alt="background ">
  
  </div>
  
  





  </body>
  

</html>
