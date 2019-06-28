<?php
$Nummers = array("een","twee",3,"vier");
echo "Lab 1.05";
array_push($Nummers, 5);
echo "<br>Stap 3. " . $Nummers[0] . ", " . $Nummers[1] . ", " . $Nummers[2] . ", " . $Nummers[3] . ", " . $Nummers[4];
echo "<br>Stap 4. Datatype is: " . gettype($Nummers[4]);
unset($Nummers[4]);
echo "<br>Stap 6. " . $Nummers[0] . ", " . $Nummers[1] . ", " . $Nummers[2] . ", " . $Nummers[3];
array_unshift($Nummers, "nul");
echo "<br>Stap 8. " . $Nummers[0] . ", " . $Nummers[1] . ", " . $Nummers[2] . ", " . $Nummers[3] . ", " . $Nummers[4];
echo "<br>Stap 10. Datatype [0] is: " . gettype($Nummers[0]);
unset($Nummers[0]);
echo "<br>Stap 12. " . $Nummers[1] . ", " . $Nummers[2] . ", " . $Nummers[3] . ", " . $Nummers[4];
unset($Nummers[2]);
echo "<br>Stap 14. " . $Nummers[1] . ", " . $Nummers[3] . ", " . $Nummers[4];
unset($Nummers[4]);
echo "<br>Stap 16. " . $Nummers[1] . ", " . $Nummers[3];
?>