<?php
$boeken = array (
    array("titel"=> "Stoner","auteur"=> "John Williams","genre"=> "fictie","prijs"=> 19,99),
    array("titel"=> "De cirkel","auteur"=> "Dave Eggers","genre"=> "fictie","prijs"=> 22,50),
    array("titel"=> "Rayuela","auteur"=> "Cortazar","genre"=> "fictie","prijs"=> 25,50),
);
function myfunction($boeken)
{
    for ($i = 1; $i < 2;){
        echo "prijs: " . $boeken["prijs"] . "<br>";
        $i ++;
    }
}
array_walk($boeken,"myfunction");
?>