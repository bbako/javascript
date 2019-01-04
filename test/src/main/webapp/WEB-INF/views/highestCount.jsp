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
	function highestCount(values){
		var counts = {};
		values.forEach(function(value, index){
			
			counts[value] = 0;
			if(value= values[0]){
				count[value] = count[value] +1
			}
			if(value= values[1]){
				count[value] = count[value] +1
			}
			if(value= values[2]){
				count[value] = count[value] +1
			}
			
		})
		var totalCounts = Object.keys(counts).map(function(key){
			// map() 메서드는 배열 내의 모든 요소 각각에 대하여 주어진 함수를 호출한 결과를 모아 새로운 배열을 반환합니다.
			return counts[key];
		})
		return totalCounts.sort(function(a,b){return b-a})[0]; 
		// sort() 메서드는 배열 내의 모든 요소의 순서를 결정하여 모아 새로운 배열을 반환합니다.
	}

</script>
