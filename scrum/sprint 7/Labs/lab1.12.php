<h4>Reiskosten berekenen</h4>

<form name="order" action="lab1.12.php" method="post">
    <p>Vertrek:</p>
    <select name="vertrek" value="true">
        <option value="Amsterdam">Amsterdam</option>
        <option value="Utrecht">Utrecht</option>
        <option value="Den haag">Den Haag</option>
        <option value="Rotterdam">Rotterdam</option>
    </select>
    <p>Bestemming:</p>
    <select name="bestemming" value="true">
        <option value="Amsterdam">Amsterdam</option>
        <option value="Utrecht">Utrecht</option>
        <option value="Den haag">Den Haag</option>
        <option value="Rotterdam">Rotterdam</option>
    </select><br><br>
    <input type="submit" name="knop" value="Berekenen">
<?php
echo "<br><br>----------------------------------------------------------------------------";

function reiskosten($vertrek, $bestemming){
    $reiskosten = array();
    $reiskosten[1] = array();
    $reiskosten[2] = array();
    $reiskosten[3] = array();
    $reiskosten[4] = array();
    $reiskosten[1][1] = 0;
    $reiskosten[1][2] = 30;
    $reiskosten[1][3] = 60;
    $reiskosten[1][4] = 90;
    $reiskosten[2][1] = 30;
    $reiskosten[2][2] = 0;
    $reiskosten[2][3] = 40;
    $reiskosten[2][4] = 20;
    $reiskosten[3][1] = 60;
    $reiskosten[3][2] = 40;
    $reiskosten[3][3] = 0;
    $reiskosten[3][4] = 10;
    $reiskosten[4][1] = 90;
    $reiskosten[4][2] = 20;
    $reiskosten[4][3] = 10;
    $reiskosten[4][4] = 0;
    return($reiskosten[$vertrek][$bestemming]);
}
?>