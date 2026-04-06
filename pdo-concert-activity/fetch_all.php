<?php
require 'dbconfig.php';

// Fetch all records
$stmt = $pdo->query("SELECT * FROM rock_concert_attendances");
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Print results in readable format
echo "<pre>";
print_r($rows);
echo "</pre>";
?>
