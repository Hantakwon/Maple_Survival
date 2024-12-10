<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 화면</title>
<link rel="stylesheet" href="/resources/css/gameOver.css">
<script type="text/javascript">
	// 서버에서 전달된 characterData 값을 JavaScript 변수로 저장
	const characterName = "${characterName}"; // JSP에서 전달된 characterData 값
</script>
</head>
<body>
	<h1>결과 화면</h1>
	<div id="container">
		<div id="imgConatainer">
			<img id="character-image" src="" alt="Character Image">
		</div>

		<div id="infoContainer">
			<p id="nickname">${userDO.id}</p>
			<p id="job">${characterName}</p>
			<p id="score">${score}점</p>

			<button type="button" onclick="location.href='home.do'" class="btn btn-home">시작화면으로</button>

		</div>
	</div>

	<script type="text/javascript" src="/resources/js/gameOver.js"></script>

</body>
</html>