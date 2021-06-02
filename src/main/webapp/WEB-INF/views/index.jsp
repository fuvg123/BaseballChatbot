<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index 페이지</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/main_header.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/main_container.css'/>">
</head>

<body>
	<div id="wrap">
		<div id="header">
			<div class="header_bg">
				<div class="logo_area">
					<h1 class="logo_img">
						<a id="logo">검색</a>
					</h1>
				</div>
				<div class="search_area" id="search" data-clk-prefix="sch">
					<form action="/search" class="search_form" name="search_form"
						method="get" role="search">
						<input id="s_input" type="text" placeholder="검색어를 입력하세요">
						<input id="submit" type="submit" value="검색" onclick="/">
					</form>
				</div>
			</div>
		</div><!-- end header -->

		<div id="container" role="main"><!--메인페이지 전체-->
			<div id="main_left" class="main_left"><!-- 메인_왼쪽 -->				
				<div id="main_left_nav" class="main_left_nav"><!-- 메인_왼쪽_네비바 -->
					<div class="group_nav">
						<ul>
							<a href="baseball"><li id="nav_item1">야구</li></a>
						</ul>
						<ul>
							<a href="Football"><li id="nav_item2">축구</li></a>
						</ul>
						<ul>
							<a href="basketball"><li id="nav_item3">농구</li></a>
						</ul>
						<ul>
							<a href="volleyball"><li id="nav_item4">배구</li></a>
						</ul>
					</div>
				</div>
				<div class="main_body">
					<div class="mLeft_left">
						메인_왼쪽_네비바 밑에 [메인 이미지]<br><br><br> 
						<a href="#">이미지가 들어갈 공간</a>
					</div>
					<div class="mLeft_right">메인_왼쪽_네비바 밑에 [각 팀별 베너]</div>
				</div>
			</div><!-- end main_left : 왼쪽 창-->
			
			<!-- 로그인, 챗봇 -->
			<div class="main_right"><!-- 메인_오른쪽 -->
			<!-- 로그인창 시작 -->
				<form action="/Login" class="login">
					<h1>로그인</h1>
					<input type="text" id="loginID" name="loginID"
						maxlength="60" placeholder="아이디를 입력하세요">
					<p>
						<input type="password" id="loginPW" name="loginPW" maxlength="60"
							placeholder="비밀번호를 입력하세요">
					<p>
						<div class="btn"><a href="btn_login" id="btn_login" >로그인</a><br></div>
						<div class="btn"><a href="btn_join" id="btn_join" >회원가입</a><br></div>
				</form><!-- 로그인창 끝 -->
				
				<!-- 챗봇창 시작-->
				<form action="/Chatbot" class="Chatbot">
				<div><a href="#">메인_오른쪽[ 챗봇 ]</a></div>
				</form>
			</div><!-- end main_right : 오른쪽 창-->
		</div><!-- end container-->
	</div><!-- end wrap -->
</body>
</html>