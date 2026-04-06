<?php
require 'dbconfig.php';

// Insert new record
$sql = "INSERT INTO rock_concert_attendances 
(attendee_name, band_name, concert_date, ticket_type, seat_number) 
VALUES (:attendee_name, :band_name, :concert_date, :ticket_type, :seat_number)";

$stmt = $pdo->prepare($sql);
$stmt->execute([
    ':attendee_name' => 'Ella Reyes',
    ':band_name' => 'Foo Fighters',
    ':concert_date' => '2026-04-09',
    ':ticket_type' => 'Balcony',
    ':seat_number' => 'D05'
]);

echo "Record inserted successfully!";
?>
