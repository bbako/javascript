<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  likeObject-2
</h1>

<P>  The time on the server is ${serverTime}. </P>

<button id="check" >check</button>
<div id="result">

</div>

</body>
</html>

<script type="text/javascript">
	var songList = {
			
			difficulties: ['easy', 'medium', 'hard'],
			songs:[],
			addSong: function(name, chords, difficulty){
				this.songs.push({
					name : name,
					chords: chords,
					difficulty: this.difficulties[difficulty]
				})
			}
			
	}	
	
	function setSongs(){
		songList.addSong('imagine',['c','em', 'f'], 0);
		songList.addSong('saysomthing',['a','em', 'f'], 1);
	}
	
	$("#check").on('click', function(){
		
		setSongs();

		var htmlText = '';
		
		console.log(songList);
		
		
		songList.songs.forEach(function(x){
			
			console.log(x);
			console.log(x.name);
			
			htmlText += x.name + '>>' + x.chords+'<br>';
			
		})
		
		$("#result").html(htmlText);
	})
	
	
</script>
