test = 0;
document.body.onload = doorlopen();
function gokken()
{
    gok1 = prompt("Please enter your name", rand);
    for(var i = 0; i < rand.length; i++) {
        char = rand.charAt(i);
        if (char = gok1){
            e.innerText[char] = gok1;
        }
    }
}

function doorlopen() {
    rand = rand.toLowerCase();
    for (i = 0; i < length; i++) {
        char = rand.charAt(i);
        cgok1 = gok1.charAt(i);
        if (char == gok1) {
            document.getElementById("demo").innerHTML =
                "Gerade letter is: " + gok1;
        }
        if (rand == gok1) {
            document.getElementById("demo").innerHTML =
                "Gerade letter is: " + gok1;
        }
    }
}
