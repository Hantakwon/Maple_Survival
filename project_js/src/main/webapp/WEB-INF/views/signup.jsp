<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <link rel="stylesheet" href="/resources/css/signup.css">
</head>
<body>
    <div class="login-container">
        <div class="image-container">
            <!-- Updated image path -->
            <img src="/resources/images/login.jpg" alt="회원가입 이미지" class="login-image">
        </div>
        <div class="form-container">
            <h1>회원가입</h1>
            
            <!-- 오류 메시지 표시 -->
            <c:if test="${not empty errorMessage}">
                <p class="error-message">${errorMessage}</p>
            </c:if>
            
            <form action="/signup.do" method="POST">
                <div class="input-group">
                    <label for="id">아이디:</label> 
                    <input type="text" id="id" name="id" required> 
                </div>
                <div class="input-group">
                    <label for="password">비밀번호:</label> 
                    <input type="password" id="password" name="password" required>
                </div>

                <button type="submit" class="login-button">회원가입</button>
            </form>
            <p class="signup-text">
                <!-- Removed underline from Sign Up link -->
                <a href="/">로그인 화면으로</a>
            </p>
        </div>
    </div>
</body>
</html>
