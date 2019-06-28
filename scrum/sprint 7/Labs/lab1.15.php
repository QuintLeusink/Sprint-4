<!DOCTYPE html>
<html lang="nl">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <style>
    /*Styles aanpassen*/
        .album{clear: left; width: 100%;} 
        .omslag{float: left;}
        .gegevens{float: left; padding-left: 20px;}
        .korting{clear: left;}
        .aantal{background-color: #f8ce6c}
        .genre{text-color: #f8ce6c}
    </style>
    <title>Lab11</title>
</head>
<!--Opmaak invoeren-->
<body style="font-family: Verdana; font-size: 9px;">
<h3>Mijn winkelmandje</h3>
<form name="albums" action ="" method="post">
    <div class="album">
        <div class="omslag">
            <img src="afbeelding/evora.jpg" width="50px" alt="X"/>
        </div>
        <div class="gegevens">
            Cesaria Evora "Em Um Concerto" Prijs: $9
            <input type="hidden" name="albumcode[0]" value="001">
            <input type="hidden" name="artiest[0]" value="Cesaria Evora ">
            <input type="hidden" name="album[0]" value="Em Um Concerto" >
            <input type="hidden" name="prijs[0]" value="9">
            <input type="hidden" name="genre[0]" value="World">
            </div>
<br />Aantal:
        <input type="text" size=2 maxlength=3 name="aantal1" class="aantal" value="0">
        </div>
        <form name="albums" action ="" method="post">
    <div class="album">
        <div class="omslag">
            <img src="afbeelding/manu.jpg" width="50px" alt="X"/>
        </div>
        <div class="gegevens">
            Manu Chao "Clandestino" Prijs: $5
            <input type="hidden" name="albumcode[1]" value="002" />
            <input type="hidden" name="artiest[1]" value="Manu Chao" />
            <input type="hidden" name="album[1]" value="Clandestino" />
            <input type="hidden" name="prijs[1]" value="5">
            <input type="hidden" name="genre[1]" value="World"> 
Aantal:
        <input type="text" size=2 maxlength=3 name="aantal" class="aantal" value="0">
        
            </div>
        </div>
        <div class="korting">
            <br><hr />Korting:<br />
            <input type="checkbox" name="student" value="15" />
    Student: 15%<br />
        <input type="checkbox" name="klant" value="10" />

    Klant: 10%<br />
        <form name="order" action="externe_functions.php" method="post">
    <p>Selecteer een betalingswijze::</p>
    <select name="betalingswijze" value="true">
        <option value=" "></option>
        <option value="V">Visa</option>
        <option value="M">Mastercard</option>
        <option value="P">PayPal</option>
        <option value="I">Ideal</option>
    </select>
    <input type="submit" name="submit" value="Versturen">
        <?php
        /*De checkboxes waardes geven*/
            $korting = 0;

            if( isset($_POST["student"]) ) $korting = $korting + 15;

            if( isset($_POST["klant"]) ) $korting = $korting + 10;

            if( isset($_POST['submit']))
            {
            $aantal = $_POST['aantal'];
            $aantal1 = $_POST['aantal1'];
            $aantal2 = $aantal + $aantal1;
            echo "<br><br>Bestelde albums: " . $aantal2;
            echo "<br>Korting is: " . $korting . "%";
            }
    if(isset($_POST["submit"]))
    {
        switch($_POST['betalingswijze'])
        {
            case "V":
                echo "<p>Betalingwijze: Visa</p>";
            break;
            case "M":
                echo "<p>Betalingwijze: Mastercard</p>";
            break;
            case "P":
                echo "<p>Betalingwijze: PayPal</p>";
            break;
            case "I":
                echo "<p>Betalingswijze: Ideal</p>";
            break;
            default:
                echo "<p>U heeft geen betalingswijze gekozen</p>";
        }
    }
    if(isset($_POST['betalingswijze'])){
    include_once("externe_functions.php");
    echo "<br>De korting()-function: " . korting() . "%<br>";
    $betalingswijze = $_POST['betalingswijze'];
    echo "Servicekosten zijn: ";
    $serviceKosten = serviceKosten($betalingswijze);
    }
    
    if(isset($_POST['aantal'])){
    include_once("externe_functions.php");
    premium($aantal2);
    }
    ?>
    
        </div>
        </form>
        </body>
        <body>
        <hr />
        <strong>FACTUUR</strong><br><br>
        <div class="genre">
        <input type="empty" name="genre[1]" value="World">
        </div>
</html>