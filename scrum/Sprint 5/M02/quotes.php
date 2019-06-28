<?php
echo <<< TEKST
Single quotes shows the output and not the render,
<br>but double quotes shows the render and the output.
<br>\n
<br>Example:
<br>Sinqle quotes:
TEKST;
$name = "World";
echo ' <br>Hello $name';
echo <<< TEKST
<br>\n
<br>Double quotes:
TEKST;
$name = "World";
echo " <br>Hello $name";
?>