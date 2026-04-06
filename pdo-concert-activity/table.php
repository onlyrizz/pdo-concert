<?php
require 'dbconfig.php';

// Query all records
$stmt = $pdo->query("SELECT * FROM rock_concert_attendances");

// Render as HTML table
echo "<table border='1'>";
echo "<tr><th>ID</th><th>Name</th><th>Band</th><th>Date</th><th>Ticket</th><th>Seat</th></tr>";

while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    echo "<tr>";
    foreach ($row as $value) {
        echo "<td>" . htmlspecialchars($value) . "</td>";
    }
    echo "</tr>";
}
echo "</table>";
?>
