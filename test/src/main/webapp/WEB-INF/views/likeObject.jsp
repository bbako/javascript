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
	Hello world!  likeObject
</h1>

<P>  The time on the server is ${serverTime}. </P>
<input type="text" id="password">
<button id="check" >check</button>
<div id="result">

</div>
</body>
</html>

<script type="text/javascript">
	var calculator = {
			add: function(a, b){
				return a + b;
			},
			addTwo: function(a){
				return this.add(a, this.two);
			},
			two: 2
			
	}
	
	var diary = (function(){
		var key = '12345';
		var secrets = 'rosebud';
		
		function privateUnlock(keyAttempt){
			console.log("2222")
			if(key === keyAttempt){
				console.log('unlocked');
				diary.open = true;
			}else{
				console.log('no');
			}
		};
		
		function privateTryLock(keyAttempt){
			console.log("1111")
			privateUnlock(keyAttempt);
		}
		
		function privateRead(){
			console.log("3333")
			if(this.open){
				console.log("4444")
				console.log(secrets);
				$("#result").html(secrets);
			}else{
				console.log('no');
			}
		}
		
		return{
			open: false,
			read: privateRead,
			tryLock: privateTryLock
		}
		
	})();
	
	$("#check").on('click', function(){
		
		console.log($("#password").val());
		
		diary.tryLock($("#password").val());
		diary.read();
		
	})
	
	
	
	// diary.tryLock(12345);
	// diary.read();
	
</script>
