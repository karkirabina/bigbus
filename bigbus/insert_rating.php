<?php
if (isset($_POST['submit_rating'])) {
  $host = "localhost";
  $username = "root";
  $password = "";
  $databasename = "def";

  $conn = mysqli_connect($host, $username, $password, $databasename);

  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  $php_rating = $_POST['phprating'];
  

  $query = "INSERT INTO rating (php) VALUES ('$php_rating')";

  if (mysqli_query($conn, $query)) {
    echo "Rating inserted successfully.";
  } else {
    echo "Error: " . mysqli_error($conn);
  }

  mysqli_close($conn);
}
?>