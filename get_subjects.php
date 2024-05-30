<?php
// Database connection details
$servername = "your_servername";
$username = "your_username";
password = "your_password";
$dbname = "subject";  // Database name is 'subject'

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the selected course from the query parameter
$course = $_GET['course'];

// Prepare SQL query to fetch subjects for the selected course
$sql = "SELECT Subject_title FROM subjects WHERE course = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $course);
$stmt->execute();
$result = $stmt->get_result();

// Fetch the subjects and store them in an array
$subjects = [];
while ($row = $result->fetch_assoc()) {
    $subjects[] = ['title' => $row['Subject_title']];
}

// Close the statement and connection
$stmt->close();
$conn->close();

// Return the subjects as a JSON response
echo json_encode($subjects);
?>
