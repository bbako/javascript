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
	var calculator = {
			add: function(a, b){
				return a + b;
			},
			addTwo: function(a){
				return this.add(a, this.two);
			},
			two: 2
			
	}
</script>
