<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Matobyte | E-commerce</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <link rel="stylesheet" href="assets/css/all.min.css" />

  </head>

  <body>
    <header id="header">
      <a href="#" id="brandName">
        <img src="assets/images/logo/logo-light.png" alt="Matobyte" />
      </a>
      <div>
        <ul id="navbar">
          <div id="close">
            <i class="fa-solid fa-xmark fa-2x"></i>
          </div>
          <li><a class="active" href="index.php">Home</a></li>
          <li><a href="shop.php">Shop</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact</a></li>
          <li>
            <a href="#">
              <i class="fa-solid fa-cart-shopping"></i>
              <span id="cartCounter">(5)</span>
            </a>
          </li>
          <li>
            <a href="login.php">
              <i class="fa-solid fa-user-circle"></i>
            </a>
          </li>
        </ul>
      </div>
      <div id="hamburger">
        <i class="fa-solid fa-bars fa-2x"></i>
      </div>
    </header>