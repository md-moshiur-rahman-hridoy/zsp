<?php include 'inc/header.php';?>
    
    <section id="login-form">
        <form id="signupForm">
            <h4>Create an account</h4>
            <label for="">Full Name</label>
            <input type="text" name="name" id="nameInput" placeholder="Enter your name"/>
            <label for="">Email address</label>
            <input type="email" name="email" id="emailInput" placeholder="Email address"/>
            <label for="">Password</label>
            <input type="password" name="password" id="inputPassword" placeholder="Password">
            <button type="submit">Create</button>
            <p>If you have a account? <a href="/login.html">Login</a></p>
        </form>
    </section>

    
<?php include 'inc/footer.php';?>
