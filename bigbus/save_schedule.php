<?php
include('db_connect.php');

extract($_POST);
$data = " bus_id = '$bus_id' ";
$data .= ", from_location = '$from_location' ";
$data .= ", to_location = '$to_location' ";
$data .= ", departure_time = '$departure_time' ";
$data .= ", eta = '$eta' ";
$data .= ", availability = '$availability' ";
$data .= ", price = '$price' ";

if (empty($id)) {
  $insert = $conn->query("INSERT INTO schedule_list SET " . $data);
  if ($insert) {
    $scheduleId = $conn->insert_id;
    updateSeatAvailability($scheduleId);
    $availableSeats = getAvailableSeats($scheduleId);
    echo "Availability updated successfully. Available seats: $availableSeats";
  }
} else {
  $update = $conn->query("UPDATE schedule_list SET " . $data . " WHERE id =" . $id);
  if ($update) {
    updateSeatAvailability($id);
    $availableSeats = getAvailableSeats($id);
    echo "Availability updated successfully. Available seats: $availableSeats";
  }
}

function updateSeatAvailability($scheduleId)
{
  global $conn;
  $reservedSeats = $conn->query("SELECT COUNT(*) FROM reservations WHERE schedule_id = $scheduleId")->fetch_row()[0];
  $totalSeats = 50; // Assuming there are 50 seats in total for the bus
  $availableSeats = $totalSeats - $reservedSeats;

  $updateAvailability = $conn->query("UPDATE schedule_list SET availability = $availableSeats WHERE id = $scheduleId");
}

function getAvailableSeats($scheduleId)
{
  global $conn;
  $availableSeats = $conn->query("SELECT availability FROM schedule_list WHERE id = $scheduleId")->fetch_row()[0];
  return $availableSeats;
}
?>