<?php 
    session_start();
    if(isset($_SESSION)){
      if(isset($_SESSION['auth'])){
        //start here code
      }else{
        function logout(){
        session_destroy();
        header("Location: ../login.php");
      }
       logout();
      }
    }else{
      header("Location: login.php");
    }
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Matobyte | E-commerce</title>
    <link rel="stylesheet" href="css/style.css?v=1" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/all.min.css" />
  </head>
  <body>
    <div class="row">
      <div class="col-2">
        <div id="sidebar">
          <img src="../assets/images/logo/logo-dark.png" alt="Matobyte" />
          <ul id="sidebarMenu">
            <li>
              <a href="./">
                <i class="fa-solid fa-table-columns"></i> Dashboard</a
              >
            </li>
            <li>
              <a href="order.php"><i class="fa-solid fa-receipt"></i> Orders</a>
            </li>
            <li>
              <a href="products.php"
                ><i class="fa-solid fa-clipboard-list"></i> Products</a
              >
            </li>
            <li>
              <a href="#"><i class="fa-solid fa-list"></i> Categories</a>
            </li>
            <li>
              <a href="customers.php"
                ><i class="fa-solid fa-users-viewfinder"></i> Customers</a
              >
            </li>
            <li>
              <a href="#"
                ><i class="fa-solid fa-boxes-stacked"></i> Inventory</a
              >
            </li>
            <li>
              <a href="#"><i class="fa-solid fa-people-roof"></i> Management</a>
            </li>
            <li>
              <a href="#"><i class="fa-solid fa-gear"></i> Settings</a>
            </li>
            <li>
              <a href="logout.php"
                ><i class="fa-solid fa-right-from-bracket"></i> Logout</a
              >
            </li>
          </ul>
        </div>
      </div>
      <div id="ds-main" class="col-10">
        <div class="header">
          <div class="searchbox">
            <input
              type="text"
              class="form-control"
              placeholder="Search here..."
            />
          </div>
          <div class="menu">
            <div class="profile">
              <img src="../assets/images/people/default.png" alt="profile" />
              <div class="details">
                <p><?php echo $_SESSION['auth']['name'];?></p>
                <small>Founder</small>
              </div>
            </div>
          </div>
        </div>