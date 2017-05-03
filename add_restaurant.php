<!DOCTYPE html>
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

<?php
require_once('db_setup.php');
$sql = "USE khu7;";
if ($conn->query($sql) === TRUE) {

} else {
   echo "Error using database: " . $conn->error;
}
// Query:
$id1 = $_POST['id1'];
$id2 = $_POST['id2'];
$id3 = $_POST['id3'];
$id4 = $_POST['id4'];
$id5 = $_POST['id5'];
$id6 = $_POST['id6'];
$id7 = $_POST['id7'];

$sql1 = "SELECT @id := (max(Restaurant_ID) + 1) from Restaurant_info;";
$conn->query($sql1);
$sql2 = "INSERT into Restaurant_info values(@id, $id1, $id2, $id3, $id4, $id5, $id6, $id7);";
$conn->query($sql2);

$sql3 = = "SELECT * FROM Restaurant_info WHERE Restaurant_Name LIKE '%$id1%';";
$result = $conn->query($sql3);

if($result != null){
    echo "Submission Complete.";
}
else{
    echo "Sha.";
}
?>

<?php
$conn->close();
?>

</body>
</html>
