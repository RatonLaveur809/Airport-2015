function init1() {
var source;
var style;
source = new ActiveXObject("Microsoft.XMLDOM");
source.async = false;
style = new ActiveXObject("Microsoft.XMLDOM");
style.async = false;
source.load("flights.xml");
style.load("f-style-2.xsl");
document.getElementById("result").innerHTML = source.transformNode(style); 
return true;}

function init2() {
var source;
var style;
source = new ActiveXObject("Microsoft.XMLDOM");
source.async = false;
style = new ActiveXObject("Microsoft.XMLDOM");
style.async = false;
source.load("departures.xml");
style.load("dep-style.xsl");
document.getElementById("result2").innerHTML = source.transformNode(style); 
return true;}

function preventDigits(sender) {
        sender.value = sender.value.replace(/\d/g, "");
}

function filter (phrase, _id){
		var words = phrase.value.toLowerCase().split(" "); 
		var table = document.getElementById(_id); 
		for (var r = 1; r < table.rows.length; r++)
		{ 
			var cellsV = table.rows[r].cells[4].innerHTML.replace(/<[^>]+>/g,"");
		    var displayStyle = 'none';
		    for (var i = 0; i < words.length; i++) 
			{
			if (cellsV.toLowerCase().indexOf(words[i])>=0)
				displayStyle = ''; 
			else {
				displayStyle = 'none'; 
				break;
				 }
			}
			table.rows[r].style.display = displayStyle; 
		 }
	}