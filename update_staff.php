<?php
$servername = "localhost";
$username = "root";
$password_server = "";
$dbname = "login_register";

// Create connection
$conn = mysqli_connect($servername, $username, $password_server, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    mysqli_select_db($conn, $dbname);
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $picture = $_POST['picture'];
    $name = $_POST['name'];
    $speciality = $_POST['speciality'];
    $position = $_POST['position'];
    $m_id = $_POST['m_id'];

    // Insert staff information into the database
    $sql = "INSERT INTO management_staff (PICTURE, NAME, SPECIALITY, POSITION, M_ID) VALUES ('$picture', '$name', '$speciality', '$position', '$m_id')";

    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

// Close connection
mysqli_close($conn);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
        /* Your CSS styles here */
    </style>
</head>

<body>
    <div class="container">
        <h1>About us</h1>

        <!-- Form to input staff information -->
        <form action="update_staff.php" method="post">
            <input type="text" name="picture" placeholder="Picture URL"><br>
            <input type="text" name="name" placeholder="Name"><br>
            <input type="text" name="speciality" placeholder="Speciality"><br>
            <input type="text" name="position" placeholder="Position"><br>
            <input type="text" name="m_id" placeholder="M_ID"><br>
            <button type="submit">Add Staff</button>
        </form>


    </div>
</body>

</html>
