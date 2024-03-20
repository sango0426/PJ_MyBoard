<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!-- 0. 웹 애플리케이션의 루트 경로(컨텍스트 경로) 를 가져와서 링크에 다 연결해줘야 함     -->
<!-- 1. 0을 위한 준비. jstl core 태그 선언     -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 2. 0을 위한 준비. el 태그로 가져올 수 있는데 이걸 더 짧게 찍기위해 변수 대입함.     -->
<c:set var="cp" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>타르코프 인벤 - 홈</title>
<link rel="stylesheet" href="/resources/home.css">
</head>
<body>
	<div id="main_title">
		<h1>Sango's HomePage</h1>
	</div>
	<div id="wrapper">
		<div id="wrapper_title">
			<h3>바로가기</h3>
		</div>
		<div id="wrapper_button_title">
			<div id="wrapper_body">
				<div id="tarkov_wiki">
					<a
						href="https://escapefromtarkov.fandom.com/wiki/Escape_from_Tarkov_Wiki">
						<button>타르코프 위키</button>
					</a>
				</div>
				<div id="tarkov_board">
					<a href="${cp}/guest/getList?page=1"><button>타르코프 게시판</button></a>
				</div>
			</div>
		</div>
		<div id="movieTitle">
			<h3>영화 상세 정보 검색(일별)</h3>
		</div>
		<div id="movieInfo">
			<form action="/movie/getMovieList">
				<div class="input-wrapper">
					<label for="date"><h3>날짜 선택</h3></label>
					<input type="date" id="date" name="date">
					<input type="submit" value="선택">
				</div>
			</form>
		</div>
		<div id="urlTitle">
			<h3>LOL 전적 검색!</h3>
		</div>
		<div id="nameInput">
			<form action="/recordSearch/recordSearch">
				<input name="userName" id="search_nickname" placeholder="검색하실 롤 닉네임을 입력하세요.">
				<input type="submit" id="record_button" value="검색">
			</form>
		</div>
		<div id="wrapper_bottom">제작자 : 박상오</div>
	</div>
</body>
</html>
