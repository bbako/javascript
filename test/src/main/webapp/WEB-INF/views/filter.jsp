<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
</head>
<body>

<p>Click the button to get every element in the array that has a value of 18 or more.</p>

<button onclick="myFunction()">Try it</button>

<p id="demo"></p>

<script>
var ages = [32, 33, 16, 40];

function myFunction() {
  document.getElementById("demo").innerHTML = ages.filter(x => x >=17);
}
</script>

</body>
</html>
