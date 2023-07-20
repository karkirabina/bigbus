<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "def";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve data points from database
$sql = "SELECT qty, status FROM booked";
$result = $conn->query($sql);

// Store data points in an array
$data_points = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data_points[] = array($row["qty"], $row["status"]);
    }
}

// Close connection
$conn->close();


// Set the number of clusters
$k = 3;

// Initialize the centroids randomly
$centroids = array();
for ($i = 0; $i < $k; $i++) {
    $random_index = array_rand($data_points);
    $centroids[] = $data_points[$random_index];
}

// Initialize an empty array to store the assignments
$assignments = array();

// Loop until convergence
$converged = false;
while (!$converged) {
    // Assign each data point to the closest centroid
    $new_assignments = array();
    foreach ($data_points as $data_point) {
        $distances = array();
        foreach ($centroids as $centroid) {
            $distances[] = sqrt(pow($data_point[0] - $centroid[0], 2) + pow($data_point[1] - $centroid[1], 2));
        }
        $new_assignments[] = array_search(min($distances), $distances);
    }
    
    // Check for convergence
    if ($new_assignments == $assignments) {
        $converged = true;
    } else {
        // Update the centroids
        for ($i = 0; $i < $k; $i++) {
            $cluster_points = array();
            foreach ($data_points as $j => $data_point) {
                if ($new_assignments[$j] == $i) {
                    $cluster_points[] = $data_point;
                }
            }
            if ($cluster_points) {
                $centroid_x = array_sum(array_column($cluster_points, 0)) / count($cluster_points);
                $centroid_y = array_sum(array_column($cluster_points, 1)) / count($cluster_points);
                $centroids[$i] = array($centroid_x, $centroid_y);
            }
        }
        $assignments = $new_assignments;
    }
}

// Print the final cluster assignments
foreach ($data_points as $j => $data_point) {
    echo "Data point " . ($j+1) . " is in cluster " . ($assignments[$j]+1) . "\n";
}


?>

<!DOCTYPE html>
<html>
<head>
  <title>K-Means Clustering Results</title>
  <!-- Load Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <?php { ?>
  <div class="container">
    <h1>K-Means Clustering Results</h1>
    <table class="table">
      <thead>
        <tr>
          <th>Data Point</th>
          <th>Cluster</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($data_points as $j => $data_point): ?>
          <tr>
            <td><?php echo "($data_point[0], $data_point[1])"; ?></td>
            <td><?php echo $assignments[$j]+1; ?></td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </div>
<?php } ?>
</body>
</html>

