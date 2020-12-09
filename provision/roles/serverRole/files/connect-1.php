<?php

$conn = new mysqli('192.168.10.103', 'root', 'root', 'nieuweDatabase');

if ($conn->connect_errno) {

    echo "Sorry, this website is experiencing problems.";

    
    echo "Error: Failed to make a MySQL connection, here is why: \n";
    echo "Errno: " . $conn->connect_errno . "\n";
    echo "Error: " . $conn->connect_error . "\n";

    exit;
}
else{
	echo "Connection successful";
}

?>
