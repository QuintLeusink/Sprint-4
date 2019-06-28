<?php
$waarden = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'vrouw', 'heer', 'boer');
$kaarten = array("ruiten", "schoppen", "klaveren", "harten");
$card = random_int(0,12);
$var = random_int(0,3);
echo "<img src='kaarten/$waarden[$card1]$kaarten[$card].svg'>";