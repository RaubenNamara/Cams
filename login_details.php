<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>bar</title>
    <link rel="stylesheet" href="logindetai">
    <!-- <script src=""></script> -->

</head>

<body>
    <nav>
        <input type= "checkbox" id="check">
        <label for="check" class="checkbtn"><i class="fas fa-bars"></i></label>
        <h2>CLASS ATTENDANCE MANAGEMENT SYSTEM</h2>
        <div class="home-page">
            <a href="./Home page.php">HOME</a>
            <a href="./about_us .php">ABOUT US</a>
            <a href="./contact_us.php">CONTACT US</a>
            <a href="">COMMENTS</a>
           
    </nav>
    <div class="hero">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Student</button>
                <button type="button" class="toggle-btn" onclick="register()">Admin</button>
            </div>
            <form id="login" class="input-group">
                <input type="Reg No" class="input-field" placeholder="Reg No" required>
                <br>
                <input type="text" class="input-field" placeholder="Input Password" required>
                <br>
                <input type="checkbox" class="check"><span id="sp">Remember Password</span>
                <br>
                <button type="submit" class="submit-btn">Login</button>
            </form>
            <form id="register" class="input-group">
                <input type="User Id" class="input-field" placeholder="User Id" required>
                <br>
                <input type="text" class="input-field" placeholder="Password" required>
                <br>
                <input type="text" class="input-field" placeholder="Input Password" required>
                <br>
                <input type="text" class="input-field" placeholder="Confirm Password" required>
                <br>
                <input type="checkbox" class="check"><span id="sp">I agree to the terms and conditions</span>
                <br>
                <button type="submit" class="submit-btn">login</button>
                <div class="account">
                <label>I have no account yet, <a href="./Admin_sign_up.php">Register here ?.</a></label>
                </div>
            </form>
        </div>
    </div>
    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");

        function register() {
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }

        function login() {
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }
    </script>
</body>

</html> 