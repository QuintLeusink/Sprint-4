//Globale variablen
var afbeeldingen = new Array('galaxy-s4.jpg','ipad.jpg','laptop.jpg');
var max = afbeeldingen.length;
var randomIndex=0;
function showMedia() {
    randomIndex = Math.floor((Math.random() * max));
    document.getElementById('media').src = afbeeldingen[randomIndex];
    setTimeout('showMedia()',500);
}
function formcheck(thisForm){
	postcode = thisForm.postcode.value;
	for(var i = 0; i < postcode.length; i++){
		var c = postcode.charAt(i);
		if(c == ' '){
			alert("Postcode mag geen spaties hebben");
			thisForm.postcode.focus();
			return false;
		}
	}
	leeftijd = thisForm.leeftijd.value
	for(var i = 0; i < leeftijd.length; i++){
		if(leeftijd < 20){
			alert("Je moet 20 jaar of ouder zijn");
			thisForm.leeftijd.focus();
			return false;
		}
	}
}
function herhalen(){
	document.custform.password2.value =
	document.custform.password.value;
}	