<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>

<script type="text/javascript">
/* 
	var domElement = $('#someDomElement');
	domElement.css('width',5);
	domElement.css('background-color','red');
	domElement.show(); 
*/
	
	$('#someDomElement').css({'width':5 , 'background-color':'red'}).show()
	
	
</script>
