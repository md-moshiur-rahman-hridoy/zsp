<?php include 'inc/header.php';?>
    
    <section id="login-form">
        <form id="loginForm">
            <div id="message"></div>
            <h4>Login your account</h4>
            <label for="">Username/Email</label>
            <input type="email" name="login_email" id="emailInput" placeholder="Email address"/>
            <label for="">Password</label>
            <input type="password" name="login_password" id="inputPassword" placeholder="Password">
            <button type="submit">Login</button>
            <p>If you have no account? <a href="signup.php">Sign up</a></p>
        </form>
    </section>

<?php include 'inc/footer.php';?>
