<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <title>eMEDI Admin Manage Doctors</title>
    <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon.png">
    <link rel="stylesheet" href="styles/model.css">
    <link rel="stylesheet" href="styles/manage_doc.css">
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
          <li><a href="manage_doc.jsp" class="active">Add Doctors</a></li>
          <li id="navScrollBtn">View Doctors</li>
          <li><a href="manage_users.jsp">Manage Users/Staff</a></li>
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
        <p>Add Doctors</p>
        <hr>
      </div>
      <div class="new_doc-body">
        <form action="AddDoctorServlet" method="post">
          <div>
            <p>Doctor Full Name</p>
            <input type="text" placeholder="Mr. David">
          </div>
          <div>
            <p>Specialization</p>
            <input type="text" placeholder="Eye Surgeon">
          </div>
          <div>
            <p>Email</p>
            <input type="email" placeholder="david@gmail.com">
          </div>
          <div>
            <p>Contact</p>
            <input type="tel" placeholder="0710000000">
          </div>
          <div>
            <p>Years of Experience</p>
            <input type="number" placeholder="1" min="1">
          </div>
          <div>
            <p>Address</p>
            <textarea placeholder="No 1, Colombo"></textarea>
          </div>
          <input class="new_doc-submit" type="submit" value="Add New Doctor">
        </form>
      </div>
    </div>

    <div class="my-new_doc new_doc-container scroll-down">
      <div class="new_doc-header">
        <p>View Doctors</p>
        <hr>
      </div>
      <div class="new_doc-body new-doc-width">
        <div class="my-list">
          <div class="list-header">
            <p>Name</p>
            <p>Specilation</p>
            <p>Email</p>
            <p>Contact</p>
            <p>Experience</p>
            <p>Address</p>
          </div>
          <div class="list-row">
            <p>N/A</p>
            <p>N/A</p>
            <p>N/A</p>
            <p>N/A</p>
            <p>N/A</p>
            <p>N/A</p>
            <div class="btns">
              <button class="remove-new_doc" onclick="window.location.href='update_doc.jsp'">
                <span>&#9998;</span>
              </button>
              <p><strong>Edit</strong></p>
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