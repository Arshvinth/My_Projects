<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>eMEDI Reception Payment Gateway</title>
  <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon.png">
  <link rel="stylesheet" href="styles/model.css">
  <link rel="stylesheet" href="styles/payment.css">
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
        <li><a href="new_appointment.jsp">Appointments</a></li>
        <li><a href="doctor_list.jsp">Doctors</a></li>
        <li><a href="payments.jsp" class="active">Payments</a></li>
        <li id="navScrollBtn">Previous Payments</li>
      </ul>
    </div>
    <div>
      <button class="navbar-login-btn" id="openModalBtn">RECEPTIONIST</button>
    </div>
  </header>

  <div id="loginModal" class="modal">
    <div class="modal-content">
      <span class="close-btn">&times;</span>
      <iframe src="login.jsp" style="width:100%; height:600px;" frameborder="0"></iframe>
    </div>
  </div>

  <div class="payment-container">
    <div class="payment-header">
      <p>New Payment</p>
      <hr>
    </div>
    <div class="payment-body">
      <form action="#">
        <div class="payment-date">
          <p>Appoinment ID</p>
          <input type="text" placeholder="ex: 101">
        </div>
        <div class="payment-date">
          <p>Appoinment Date & Time</p>
          <input type="datetime-local" disabled>
        </div>
        <hr>
        <div>
          <p>Patient NIC</p>
          <input type="text" placeholder="200300000111" disabled>
        </div>
        <div>
          <p>Patient Name</p>
          <input type="text" placeholder="Mr. David" disabled>
        </div>
        <div>
          <p>Patient Contact</p>
          <input type="tel" placeholder="0710000000" disabled>
        </div>
        <div>
          <p>Payment Date</p>
          <input type="datetime-local">
        </div>
        <div>
          <p>Ammount (Rs.)</p>
          <input type="number" placeholder="0.00" min="1">
        </div>
        <input class="payment-submit" type="submit" value="Make Payment">
      </form>
    </div>
  </div>

  <div class="my-payments payment-container scroll-down">
    <div class="payment-header">
      <p>Payments</p>
      <hr>
    </div>
    <div class="payment-body">
      <div class="my-list">
        <div class="list-header">
          <p>Payment Date</p>
          <p>Patient NIC</p>
          <p>Ammount (Rs.)</p>
        </div>
        <div class="list-row">
          <p>10/10/2024</p>
          <p>20046009875</p>
          <p>1000.00</p>
          <div class="btns">
            <button class="remove-payment">
              <span>&times;</span>
            </button>
            <button class="remove-payment">
              <span>&#9998;</span>
            </button>
          </div>
        </div>

        <div class="list-row">
          <p>10/10/2024</p>
          <p>20046009875</p>
          <p>1000.00</p>
          <div class="btns">
            <button class="remove-payment">
              <span>&times;</span>
            </button>
            <button class="remove-payment">
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