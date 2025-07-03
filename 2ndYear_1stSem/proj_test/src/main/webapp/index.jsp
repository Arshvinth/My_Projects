<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>eMEDI Dashboard</title>
  <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon.png">
  <link rel="stylesheet" href="styles/header.css">
  <link rel="stylesheet" href="styles/dashboard.css">
  <link rel="stylesheet" href="styles/model.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;500;700&display=swap" rel="stylesheet">
</head>

<body>
  <header>
    <div class="logo-container">
      <img src="assets/logo.png" alt="LOGO">
    </div>
    <div class="navbar">
      <ul class="navbar-list">
        <li><a href="index.html" class="active">Dashboard</a></li>
        <li><a href="new_appointment.jsp">Appointment</a></li>
        <li><a href="doctor_list.jsp">Doctors</a></li>
      </ul>
    </div>
    <div>
      <button class="navbar-login-btn" id="openModalBtn">LOGIN</button>
    </div>
  </header>

  <div id="loginModal" class="modal">
    <div class="modal-content">
      <span class="close-btn">&times;</span>
      <iframe src="login.jsp" style="width:100%; height:600px;" frameborder="0"></iframe>
    </div>
  </div>

  <div class="container">
    <button onclick="window.location.href='new_appointment.jsp'">New Appointment</button>
    <button onclick="window.location.href='doctor_list.jsp'">Doctors</button>
  </div>

  <footer>
    <p class="footer-title">
      Hospital Management System
    </p>
    <p class="footer-body">
      2024 &#169; eMEDI. All rights reserved.
    </p>
  </footer>

  <script src="script/header.js"></script>
  <script src="script/model.js"></script>
</body>

</html>