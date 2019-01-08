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
	Hello world!  study for javaScript class.
</h1>

<P>  The time on the server is ${serverTime}. </P>

<button id="check" >check</button>
<div id="result">

</div>

</body>
</html>

<script type="text/javascript">
	class Word{
		constructor(word, language, lookUpUrl){
			this.word = word;
			this.language = language;
			this.lookUpUrl = lookUpUrl;
		};
		count(){
			return this.word.length;
		};
		lookUp(){
			return this.lookUpUrl +"/"+ this.word;
		}
	}	
	
	class EnglishWord extends Word{
		constructor(word){
			super(word, "English", "http://www.naver.com");
		}
		
	};
	class JapaneseWord extends Word{
		constructor(word){
			super(word, "Japaness", "http://www.google.com");
		}
	};
	
	const japaneseWord = new JapaneseWord("enu");
	const englishWord = new EnglishWord("dog");
	
	console.log(japaneseWord.count());
	console.log(japaneseWord.word);
	console.log(englishWord.count());
	console.log(englishWord.word);
	console.log(englishWord.lookUp());
	console.log(japaneseWord.lookUp());
	
</script>
