<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  likeObject
</h1>

<P>  The time on the server is ${serverTime}. </P>
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
		var key = 12345;
		var secrets = 'rosebud';
		
		function privateUnlock(keyAttempt){
			if(key === keyAttempt){
				console.log('unlocked');
				diary.open = true;
			}else{
				console.log('no');
			}
		};
		
		function privateTryLock(keyAttempt){
			privateUnlock(keyAttempt);
		}
		
		function privateRead(){
			if(this.open){
				console.log(secrets);
				
			}else{
				console.log('no');
			}
		}
		
		return{
			oepn:false,
			read:privateRead,
			tryLock: privateTryLock
		}
		
	})();
	
	diary.tryLock(12345);
	diary.read();
	
</script>
