<?php
$teams = array();
$teams[0] = array("Positie", "Club", "Stad", "GW", "W", "G", "V");
$teams[1] = array("2e","Ajax","Amsterdam", "23", "18", "2", "3");
$teams[2] = array("7e","Heracles","Almelo", "24", "11", "2", "11");
echo "<table border='1'>";
foreach ($teams as $each){

    echo "<tr>";
    foreach ($each as $teams){
        echo "<td>" . $teams . "</td>";
    }
    echo "</tr>";

}
echo "</table>";
?>