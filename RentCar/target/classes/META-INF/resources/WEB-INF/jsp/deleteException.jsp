<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Vehicle Information</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  body, html {
    height: 100%;
    margin: 0;
    font-family: Arial, sans-serif;
  }

  .bg-image {
    background-image: url('deleteException.jpg');
    background-size: cover;
    background-position: center;
  }

  .overlay {
    background-color: rgba(0, 0, 0, 0.5); /* Black background with opacity */
    color: #f1f1f1;
    position: fixed;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .card {
    background: rgba(0, 0, 0, 0.8); /* Black background with opacity */
    border: none;
    color: white;
    max-width: 500px;
    padding: 20px;
    border-radius: 10px;
  }

  .btn-back {
    background-color: #555;
    color: white;
    padding: 10px 20px;
    margin: 20px 0;
    border: none;
    cursor: pointer;
    opacity: 0.9;
  }

  .btn-back:hover {
    opacity: 1;
  }
</style>
</head>
<body>

<div class="bg-image">
  <div class="overlay">
    <div class="card">
      <h5 class="card-title">Vehicle Deletion Restriction</h5>
      <p class="card-text">**You can't delete this vehicle.**</p>
      <p class="card-text">There is already a booking for this vehicle.</p>
      <a href="/manageVehicle" class="btn btn-secondary">Back</a>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
