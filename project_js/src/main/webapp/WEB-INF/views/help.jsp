<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임 조작 방법</title>
<link rel="stylesheet" href="/resources/css/help.css">
</head>
<body>
	<div id="container">
		<!-- 사이드바 -->
		<div id="sidebar">
			<h2>${userDO.id}님</h2>
			<button onclick="location.href='monster.do'">몬스터 도감</button>
			<button onclick="location.href='logout.do'">로그 아웃</button>
			<button onclick="location.href='help.do'">게임 설명 및 조작</button>
		</div>
		<!-- 메인 콘텐츠 -->
		<div id="mainContent">
			<h1>게임 설명 및 조작 방법</h1>
			<div class="content-box">
				<h1>게임 설명</h1>
				<p>다가오는 적을 피하며 공격하여 살아남으세요.</p>
				<p>레벨업 시 속도 향상, 체력 향상, 공격력 향상 카드를 선택할 수 있는 창이 나옵니다.</p>
				<p>끝까지 살아남아 렝킹에 이름을 올려보세요!</p>
			</div>

			<div class="content-box">
				<h1>조작 방법</h1>
				<p>방향키로 움직이며 A키로 공격합니다.</p>
				<p>레벨업 시 1, 2, 3 숫자 버튼을 눌러 업그레이드를 진행해보세요.</p>
			</div>

			<hr>
			<button type="button" class="btn-home"
				onclick="location.href='home.do'">홈 화면</button>
		</div>
	</div>
</body>
</html>
