<?php
//get form data

//$_POST['f_name'] = "";
//$_POST['l_name'] = "";
//$_POST['email'] = "";

$f_name = $_POST['f_name'];
$l_name = $_POST['l_name'];
$email = $_POST['email'];

require __DIR__ . "/database_credentials.php";
if($_SERVER["REQUEST_METHOD"] == "POST")

//Create connection
$conn = new mysqli(servername, username, password, dbname);


$sql = "INSERT INTO client (fname, lname, email) values ('$f_name','$l_name','$email')";

if($conn->query($sql) === TRUE) {
    echo "New record created successfully: ";
    echo $f_name;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error; 
}

?>
