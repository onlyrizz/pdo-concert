<?php
require 'dbconfig.php';

// Fetch only one record
$stmt = $pdo->query("SELECT * FROM rock_concert_attendances LIMIT 1");
$row = $stmt->fetch(PDO::FETCH_ASSOC);

echo "<pre>";
print_r($row);
echo "</pre>";
?>
