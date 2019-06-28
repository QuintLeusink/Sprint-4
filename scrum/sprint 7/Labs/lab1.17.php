<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>While-lus</title>
</head>
<body>
    <h3>Voorbeeld van de while-lus<h3>

    <?php
    echo"<br>Zolang ons saldo lager is dan 2000 willen we dat de while-lus ons maandelijks saldo uitrekent";
    //Variablen instellen
    $saldo = 500;
    $rentre = 0.1;
    $maand = 1;
    
    echo"<br>Beginsaldo is: " . $saldo . "<br />";
    echo "START...";
    //do while lus starten
    do
    {
        if($maand == 2)
        {
            echo"<br>Febuari betaalt geen rente.";
        }
        else{
            $saldo = $saldo + ($saldo * $rentre);
            $saldo = sprintf("%0.2f", $saldo);
            echo "<br>Maand: $maand je saldo is: $saldo";
        }
        if($saldo > 2000)
        {
            echo "<br>Maximale saldo is bereikt.";
        }
        // maand elke keer verhogen met +1
        
        
        if($maand == 6 && $saldo<1000)
        {
            echo "<br>Je saldo is te laag";
            break;
        }
        $maand++;
    }
    //Lus eindingen wannneer $saldo 2000 heeft bereikt.
    while($saldo<2000);
    echo"<br>FINISH";
    ?>
</body>
</html>