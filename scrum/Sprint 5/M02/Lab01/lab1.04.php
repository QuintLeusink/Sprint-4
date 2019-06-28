<?php
$naam = "Karim";
$nederlands = "8.5";
$engels = "7.7";
$rekenen = "6.7";
$programmeren = "8.5";
$databases = "9.4";
$gemiddeld = number_format(($nederlands + $engels + $rekenen + $programmeren + $databases) / 5,2);
$naam2 = "Sophie";
$nederlands2 = "8.9";
$engels2 = "8.7";
$rekenen2 = "9.7";
$programmeren2 = "9.5";
$databases2 = "9.2";
$gemiddeld2 = number_format(($nederlands2 + $engels2 + $rekenen2 + $programmeren2 + $databases2) / 5,2);
$groepgemiddeld = number_format(($gemiddeld + $gemiddeld2) / 2,1);
echo "<table border='1'>
<caption>
    <strong>Rapport</strong>
</caption>
<thread>
    <tr>
    <th>Naam</th><th>Nederlands</th><th>Engels</th><th>Rekenen</th><th>Programmeren</th><th>Databases</th><th>Gemiddeld</th>
</tr>
</thread>
<tbody>
    <tr>
        <td>$naam</td><td>$nederlands</td><td>$engels</td><td>$rekenen</td><td>$programmeren</td><td>$databases</td><td>$gemiddeld</td>
        </tr>
        <tr>
        <td>$naam2</td><td>$nederlands2</td><td>$engels2</td><td>$rekenen2</td><td>$programmeren2</td><td>$databases2</td><td>$gemiddeld2</td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
        <td colspan='6'>Groep gemiddeld</td><td>$groepgemiddeld</td>
</tr>
</tfoot>
</table>";
?>