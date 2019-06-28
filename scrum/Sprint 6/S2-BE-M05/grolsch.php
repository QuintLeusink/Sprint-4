<?php
$random = rand(10,30);
if ($random < 18) {
    header("Location: https://www.alcoholinfo.nl/publiek");
}
else{
    header("Location: https://www.grolsch.nl/agegate?returnUri=/");
}
