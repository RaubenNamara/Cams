<?php include 'myphp.php';?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CLASS ATTENDANCE MANAGEMENT SYSTEM </title>
    <link rel="stylesheet" href="adminsignup.css"> 
	<script type = "text/javascript" src = "myjavascript.js"></script>

</head>

<body>
    <div class="header">
        <h2>CLASS ATTENDANCE MANAGEMENT SYSTEM (CAMS)</h2>
    </div>
    <div class="login-page">
    <form method="POST" action = "databasecon.php">
        <div class="logins">
            <h3>Admin Sign up</h3>
                <br><label>User Id  </label><input type="text" placeholder="Enter user id" name="UserId" >
                <br><br><label>First Name </label><input type="text" placeholder="Enter First Name" name="First Name" >
                <br><br><label>Second Name  </label><input type="text" placeholder="Enter Second Name" name="Second Name  " >
                <br><br><label>Other Name  </label><input type="text" placeholder="Enter other Name" name="Oter Name" >
                    <br><br><input type="radio" name="gender" id="male" value="male>" <label>Male</label>
                    <br><br><input type="radio" name="gender" id="female" value="female>" <label>Females</label>
                    <br><br><label>Institution </label><input type="text" placeholder="Enter institution name" name="institution name" >
                    <br><br><label>Email </label><input type="text" placeholder="e.g rau@gmail.com" name="Email">
                <br><br><label>Contact  </label><input type="text" placeholder="Enter Contact" name="Contact" >
                <br><br><label>password  </label><input type="text" placeholder="Enter password" name="Password" >
                <br><br><label>Confirm password  </label><input type="text" placeholder="Confirm password" name="Password" >

                <div class="mybtn">
                <br><br><button type="submit" name = "submit">Cancel </button> <button type="submit" name="save" onclick="formv()">Save </button>
                </div>
        </div>
    </div>
	</form>

    <div class="footer">
        <P> Robs Tech_Copright &copy; 2022</P>
    </div>
</body>

</html>