<?php
echo "Opdracht 1, Compare:";
$getal1 = rand(1,1000);
$getal2 = rand(1,1000);
if ($getal1 > $getal2)
    echo "<br>" . $getal1 . ">" . $getal2 . "= True" ;
else
    echo "<br>" . $getal1 . ">" . $getal2 . "= False" ;

if ($getal1 < $getal2)
    echo "<br>" . $getal1 . "<" . $getal2 . "= True" ;
else
    echo "<br>" . $getal1 . "<" . $getal2 . "= False" ;

if ($getal1 == $getal2)
    echo "<br>" . $getal1 . "==" . $getal2 . "= True" ;
else
    echo "<br>" . $getal1 . "==" . $getal2 . "= False" ;

if ($getal1 === $getal2)
    echo "<br>" . $getal1 . "===" . $getal2 . "= True" ;
else
    echo "<br>" . $getal1 . "===" . $getal2 . "= False" ;

if ($getal1 >= $getal2)
    echo "<br>" . $getal1 . ">=" . $getal2 . "= True" ;
else
    echo "<br>" . $getal1 . ">=" . $getal2 . "= False" ;

if ($getal1 <= $getal2)
    echo "<br>" . $getal1 . "<=" . $getal2 . "= True" ;
else
    echo "<br>" . $getal1 . "<=" . $getal2 . "= False" ;

if ($getal1 != $getal2)
    echo "<br>" . $getal1 . "!=" . $getal2 . "= True" ;
else
    echo "<br>" . $getal1 . "!=" . $getal2 . "= False" ;
?>