<?php
$servername ="localhost";
$username = "khu7";
$password = "K87qvXCE";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
// echo "Connected successfully";

?>


