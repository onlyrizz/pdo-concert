<?php
require 'dbconfig.php';

// Update ticket type for id = 3
$sql = "UPDATE rock_concert_attendances 
SET ticket_type = :ticket_type 
WHERE id = :id";

$stmt = $pdo->prepare($sql);
$stmt->execute([
    ':ticket_type' => 'Regular',
    ':id' => 3
]);

echo "Record updated successfully!";
?>
