<?php
// superglabale scope
$GLOBALS['url'] = "www.mijndomeinnaam.nl";
//globale scope
global $email;
$email = "webmaster@mijndomeinnaam.nl";
// globale constanten
define("BIJDRAGE" ,0.10);
function doneren($bedrag)
{
    // function scope
    $melding = "Giro 555";
    echo "<br>" . $melding;
    echo "<br>URL:" . $GLOBALS["url"];
    echo "<br />Bedrag: " . $bedrag;
    global $email;
    echo "<br>E-mail:" . $email;
    $bijdrage = $bedrag * BIJDRAGE;
    $donatie = $bedrag + $bijdrage;
    echo "<br>Inclusief bijdrage: $donatie";
    static $pot;
    $pot = $pot + $donatie;
    echo "<br><span style='background-color: yellow'>
    Totaal bedrag in pot $pot</span><br>";
    static $hoogste;
    $hoogste = max($pot, $bedrag);
    echo "<br>Hoogste donatie tot nu toe is: $hoogste";
}
doneren(100);
doneren(1000);
doneren(33333);
?>