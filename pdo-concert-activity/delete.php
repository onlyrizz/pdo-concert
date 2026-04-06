<?php
require 'dbconfig.php';

// Delete record with id = 2
$sql = "DELETE FROM rock_concert_attendances WHERE id = :id";
$stmt = $pdo->prepare($sql);
$stmt->execute([':id' => 2]);

echo "Record deleted successfully!";
?>
