<?php 
#declaring variables

$server = "localhost";
$servername = "root";
$password = "";
$dbname = "cams";

$userid = $_POST['user_id'];
$f_name = $_POST['f_name'];
$l_name = $_POST['l_name'];
$other_name = $_POST['other_name'];
$sex = $_POST['sex'];
$insistution = $_POST['insistution'];
$email = $_POST['email'];
$contact = $_POST['contact'];
$password = $_POST['password'];


#establishng the connection with the database.
$conn  = mysqli_connect($server, $servername,$password,$dbname);

if(!$conn){
    die("Connection hasnot been estalished:" );
}else{
    $sql = "insert into  admin_signup values ('user_id, f_name, l_name, other_name, sex, insistution, email, contact, password')";



}
#inserting into database

if(!$conn){
    echo "Database connection not succesful";
}
else{
    echo "Saving succesful";
}



?> 