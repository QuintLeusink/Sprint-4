<?php
echo <<< TEKST
Lokale variables zijn variables binnen in een functie,
<br>en globale variables kan je gebruiken in de hele code.
<br>\n
<br>Voorbeeld:
<br>Globale variable:
TEKST;
echo ' <br>$x = Hello';
echo <<< TEKST
<br>\n
<br>Locale variable:
TEKST;
echo ' <br>function myFunc()<br>{<br>$y = World<br>}';
?>