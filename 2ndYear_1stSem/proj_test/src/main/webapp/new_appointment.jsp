<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>eMEDI Appointment</title>
  <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon.png">
  <link rel="stylesheet" href="styles/model.css">
  <link rel="stylesheet" href="styles/appointment.css">
  <link rel="stylesheet" href="styles/header.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;500;700&display=swap" rel="stylesheet">
</head>

<body>
  <header>
    <div class="logo-container">
      <img src="assets/logo.png" alt="LOGO">
    </div>
    <div class="navbar">
      <ul class="navbar-list">
        <li><a href="index.jsp">Dashboard</a></li>
        <li><a href="new_appointment.jsp" class="active">Appointments</a></li>
        <li id="navScrollBtn">My Appoinments</li>
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

  <div class="appointment-container">
    <div class="appointment-header">
      <p>New Appointment</p>
      <hr>
    </div>
    <div class="appointment-body">
      <form action="#">
        <div class="appointment-date">
          <p>Appoinment Date & Time</p>
          <input type="datetime-local">
        </div>
        <hr>
        <div>
          <p>Patient Name</p>
          <input type="text" placeholder="Mr. David" required>
        </div>
        <div>
          <p>Patient Contact</p>
          <input type="tel" placeholder="0710000000" required>
        </div>
        <div>
          <p>Patient NIC</p>
          <input type="text" placeholder="200300000111" required>
        </div>
        <div>
          <p>Select Doctor</p>
          <select>
            <option selected>Select</option>
            <option value="1">Doc 1</option>
            <option value="2">Doc 2</option>
            <option value="3">Doc 3</option>
          </select>
        </div>
        <div>
          <p>Patient Illness</p>
          <textarea placeholder="Describe your illness briefly"></textarea>
        </div>
        <input class="appointment-submit" type="submit" value="Submit">
      </form>
    </div>
  </div>

  <div class="my-appointments appointment-container scroll-down">
    <div class="appointment-header">
      <p>My Appointments</p>
      <hr>
    </div>
    <div class="appointment-body">
      <div class="my-list">
        <div class="list-header">
          <p>Date</p>
          <p>Doctor</p>
          <p>Venue</p>
        </div>
        <div class="list-row">
          <p>Date</p>
          <p>Doctor</p>
          <p>Venue</p>
          <div class="btns">
            <button class="remove-appointment">
              <span>&times;</span>
            </button>
            <button class="remove-appointment">
              <span>&#9998;</span>
            </button>
          </div>
        </div>
        <div class="list-row">
          <p>Date</p>
          <p>Doctor</p>
          <p>Venue</p>
          <div class="btns">
            <button class="remove-appointment">
              <span>&times;</span>
            </button>
            <button class="remove-appointment">
              <span>&#9998;</span>
            </button>
          </div>
        </div>
      </div>
    </div>
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
  <script src="script/scroll_down.js"></script>
  <script src="script/model.js"></script>
</body>

</html>