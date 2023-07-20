<?php
$host = "localhost";
$username = "root";
$password = "";
$databasename = "def";

$conn = mysqli_connect($host, $username, $password, $databasename);

if (isset($_POST['submit_rating'])) {
    $php_rating = $_POST['phprating'];
    
    $insert = mysqli_query($conn, "INSERT INTO rating (php) VALUES ('$php_rating')");
    if ($insert) {
        echo "Rating inserted successfully.";
    } else {
        echo "Error: " . mysqli_error($conn);
    }
}

$query = "SELECT php FROM rating";
$result = mysqli_query($conn, $query);
if ($result) {
    $total = mysqli_num_rows($result);
    $phpar = array();

    while ($row = mysqli_fetch_array($result)) {
        $phpar[] = $row['php'];
    }

    $total_php_rating = ($total > 0) ? array_sum($phpar) / $total : 0;

    mysqli_free_result($result);
} else {
    $total = 0;
    $total_php_rating = 0;
}

mysqli_close($conn);
?>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="rating_style.css">
    <script type="text/javascript">
        function change(id) {
            var className = document.getElementById(id).className;
            var ab = document.getElementById(id + "_hidden").value;
            document.getElementById(className + "rating").innerHTML = ab;

            for (var i = ab; i >= 1; i--) {
                document.getElementById(className + i).src = "star2.png";
            }

            var id = parseInt(ab) + 1;
            for (var j = id; j <= 5; j++) {
                document.getElementById(className + j).src = "star1.png";
            }

            document.getElementById("phprating").value = ab; // Update the hidden input value
        }
    </script>
</head>
<body>
    <h1>Please rate</h1>

    <form method="post" action="insert_rating.php">
        <p id="total_votes">Total Votes: <?php echo $total; ?></p>
        <div class="div">
            <p>Rating (<?php echo $total_php_rating; ?>)</p>
            <input type="hidden" id="php1_hidden" value="1">
            <img src="images/star1.png" onmouseover="change(this.id);" id="php1" class="php">
            <input type="hidden" id="php2_hidden" value="2">
            <img src="images/star1.png" onmouseover="change(this.id);" id="php2" class="php">
            <input type="hidden" id="php3_hidden" value="3">
            <img src="images/star1.png" onmouseover="change(this.id);" id="php3" class="php">
            <input type="hidden" id="php4_hidden" value="4">
            <img src="images/star1.png" onmouseover="change(this.id);" id="php4" class="php">
            <input type="hidden" id="php5_hidden" value="5">
            <img src="images/star1.png" onmouseover="change(this.id);" id="php5" class="php">
        </div>

        <input type="hidden" name="phprating" id="phprating" value="0">
        <input type="submit" value="Submit" name="submit_rating">
    </form> 
</body>
</html>