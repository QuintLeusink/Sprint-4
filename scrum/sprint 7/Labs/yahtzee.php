<!DOCTYPE html>
<html>
<head>

<?php

//Hier worden de aantal worpen op nul gezet voor het begin.
$worpen = 0;

// Hier worden de dobbelstenen aangemaakt (als een random nummer).
$n1 = rand(1,6);
$n2 = rand(1,6);
$n3 = rand(1,6);
$n4 = rand(1,6);
$n5 = rand(1,6);

// In deze while loop wordt aan gegeven hoe vaak die door moet gaan, 
//in dit geval tot dat alle cijfers gelijk staan aan het eerste getal.
while($n1 != $n2 || $n1 != $n3 || $n1 != $n4 || $n1 != $n5) {
    $n1 = rand(1,6);
    $n2 = rand(1,6);
    $n3 = rand(1,6);
    $n4 = rand(1,6);
    $n5 = rand(1,6);
   
//Elke keer dat de loop wordt gedraait wordt aan het einde een keer opgeteld bij de variable worpen.
    $worpen = $worpen + 1;
}

// $gemiddelde var is om de gemiddelde aantal aan te geven wanneer er gegooit wordt
$gemiddelde= $worpen/5;

// Met de echo's wordt alles weergeven
echo "Aantal worpen: ";
echo "$worpen<br><br>";
echo "Gemiddelde: ";
echo "$gemiddelde<br><br>";
echo "yahtzee:<br>";
echo "$n1<br>";
echo "$n2<br>";
echo "$n3<br>";
echo "$n4<br>";
echo "$n5<br><br>";
?>
</body>
