<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>eMEDI Admin Manage Users</title>
  <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon.png">
  <link rel="stylesheet" href="styles/model.css">
  <link rel="stylesheet" href="styles/manage_user.css">
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
        <li><a href="manage_doc.jsp">Add Doctors</a></li>
        <li><a href="manage_users.jsp" class="active">Manage Users/Staff</a></li>
        <li id="navScrollBtn">Patients</li>
      </ul>
    </div>
    <div>
      <button class="navbar-login-btn" id="openModalBtn">ADMINISTRATOR</button>
    </div>
  </header>

  <div id="loginModal" class="modal">
    <div class="modal-content">
      <span class="close-btn">&times;</span>
      <iframe src="login.jsp" style="width:100%; height:600px;" frameborder="0"></iframe>
    </div>
  </div>

  <div class="new_doc-container">
    <div class="new_doc-header">
      <p>Staff Members</p>
      <hr>
    </div>
    <div class="new_doc-body">
      <div class="my-list">
        <div class="list-header">
          <p>Name</p>
          <p>Email</p>
          <p>Contact</p>
          <p>Age</p>
          <p>Role</p>
        </div>
        <div class="list-row">
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <div class="btns">
            <button class="remove-new_doc">
              <span>&times;</span>
            </button>
            <button class="remove-new_doc">
              <span>&#9998;</span>
            </button>
          </div>
        </div>
        <div class="list-row">
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <div class="btns">
            <button class="remove-new_doc">
              <span>&times;</span>
            </button>
            <button class="remove-new_doc">
              <span>&#9998;</span>
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="new_doc-container new-doc scroll-down">
    <div class="new_doc-header">
      <p>Users/Patients</p>
      <hr>
    </div>
    <div class="new_doc-body">
      <div class="my-list">
        <div class="list-header">
          <p>Name</p>
          <p>Email</p>
          <p>Contact</p>
          <p>Age</p>
        </div>
        <div class="list-row">
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <div class="btns">
            <button class="remove-new_doc">
              <span>&times;</span>
            </button>
            <button class="remove-new_doc">
              <span>&#9998;</span>
            </button>
          </div>
        </div>
        <div class="list-row">
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <p>N/A</p>
          <div class="btns">
            <button class="remove-new_doc">
              <span>&times;</span>
            </button>
            <button class="remove-new_doc">
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