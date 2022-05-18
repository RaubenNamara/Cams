<?php
include_once 'databasecon.php';
if (isset($_POST['submit']))
{
	echo"welcom to my page";

	$firstname = $_POST['userid'];



$sql =	"insert into admin_signup values ('user_id, f_name, l_name, other_name, sex, insistution, email, contact, password')";

	
}
?>