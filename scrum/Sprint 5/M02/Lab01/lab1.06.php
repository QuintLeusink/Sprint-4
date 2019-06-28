<?php
$playlist = array(
    array("Track 0: ", "<br>genre" => "Hiphop","|","auteur" => "John Williams","|","titel" => "My Girl</br>"),
    array("Track 1: ", "<br>genre" => "Jazz","|","auteur" => "John Coltrane","|","titel" => "New York</br>"),
    array("Track 2: ", "<br>genre" => "Hiphop","|","auteur" => "Shakira","|","titel" => "Obsession</br>"),
    array("Track 3: ", "<br>genre" => "Latin","|","auteur" => "Caetano Veloso","|","titel" => "Cafe Atlantico</br>")
);
function printTracks($playlist)
{
    echo "<i>" . $playlist  . "</i>";
}
array_walk_recursive($playlist, 'printTracks');

?>