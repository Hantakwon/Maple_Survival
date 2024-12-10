<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈 화면</title>
<link rel="stylesheet" href="/resources/css/home.css">
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
			<div class="game-banner">
				<div id="gameImage">
					<img src="/resources/images/gameimage.jpg" alt="게임 이미지">
				</div>
				<div id="gameInfo">
					<h2>메서라이크</h2>
					<button class="btn-home" onclick="location.href='start.do'">게임시작</button>
				</div>
			</div>

			<h1>${userDO.id} 직업별 최고점수</h1>
			<hr>

			<div id="scoreContainer">
				<!-- 전사 -->
				<div class="character">
					<h2>전사</h2>
					<ul>
						<c:forEach var="score" items="${warrior}" varStatus="status">
							<li>${status.index + 1}위.${score.score}점</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 법사 -->
				<div class="character">
					<h2>법사</h2>
					<ul>
						<c:forEach var="score" items="${magician}" varStatus="status">
							<li>${status.index + 1}위.${score.score}점</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 궁수 -->
				<div class="character">
					<h2>궁수</h2>
					<ul>
						<c:forEach var="score" items="${archer}" varStatus="status">
							<li>${status.index + 1}위.${score.score}점</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 도적 -->
				<div class="character">
					<h2>도적</h2>
					<ul>
						<c:forEach var="score" items="${thief}" varStatus="status">
							<li>${status.index + 1}위.${score.score}점</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
