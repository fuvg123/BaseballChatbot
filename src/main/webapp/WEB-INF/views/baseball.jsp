<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>baseball(야구)페이지 입니다.</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/baseball.css'/>">
</head>
<body>
	<div id="wrap">
		<div class="header">
			<div class="Logo">
				<a href="/">로고</a>
				<!-- 메인 화면으로 돌아가기 -->
			</div>
			<div class="event">
				<!--  경기 종목들 -->
				<div class="event_items">
					<a href="">타 자</a>
				</div>
				<div class="event_items">
					<a href="#">투 수</a>
				</div>
				<div class="event_items">
					<a href="#">수 비</a>
				</div>
				<div class="event_items">
					<a href="#">주 루</a>
				</div>
			</div>
			<!-- end event -->
		</div>
		<!-- end header -->
		<!-- 선수 검색 창 -->
		<div class="select_area">

			<div class="select">
				<h3 id="select_title">선수검색</h3>
			</div>
			<!--end select_title -->

			<div class="select">
				<form action="#" id="select_form">
					<input type="text" id="sel_player" placeholder="ex)선수이름">
				</form>
			</div>
			<!--end select_form -->
		</div>

		<!-- 리스트 네비바 -->
		<div class="list_items">
			<form action="#">
				<table border="1">

					<tr>
						<th>순위</th>
						<th>선수명</th>
						<th>팀명</th>
						<th>AVG</th>
						<th>G</th>
						<th>PA</th>
						<th>AB</th>
						<th>R</th>
						<th>H</th>
						<th>2B</th>
						<th>3B</th>
						<th>HR</th>
						<th>TB</th>
						<th>RBI</th>
						<th>SAC</th>
						<th>SF</th>
						<th>BB</th>
						<th>IBB</th>
						<th>HBP</th>
						<th>SO</th>
						<th>GDP</th>
						<th>SLG</th>
						<th>OBP</th>
						<th>OPS</th>
						<th>MH</th>
						<th>RISP</th>
						<th>PH-BA</th>
					</tr>
					<c:forEach items="${hitter01List }" var="hitter">
						<tr align="center">
							<td>${hitter.hNum }</td>
							<td>${hitter.hName }</td>
							<td>${hitter.hTeam}</td>
							<td>${hitter.hAvg}</td>
							<td>${hitter.hG}</td>
							<td>${hitter.hPa}</td>
							<td>${hitter.hAb}</td>
							<td>${hitter.hR}</td>
							<td>${hitter.hH}</td>
							<td>${hitter.h2b}</td>
							<td>${hitter.h3b}</td>
							<td>${hitter.hHr}</td>
							<td>${hitter.hTb}</td>
							<td>${hitter.hRbi}</td>
							<td>${hitter.hSac}</td>
							<td>${hitter.hSf}</td>
							<td>${hitter.hBb}</td>
							<td>${hitter.hIbb}</td>
							<td>${hitter.hHbp}</td>
							<td>${hitter.hSo}</td>
							<td>${hitter.hGdp}</td>
							<td>${hitter.hSlg}</td>
							<td>${hitter.hObp}</td>
							<td>${hitter.hOps}</td>
							<td>${hitter.hMh}</td>
							<td>${hitter.hRisp}</td>
							<td>${hitter.hPhba}</td>
						</tr>
					</c:forEach>
				</table>
			</form>

		</div>
	</div>
	<!-- end wrap -->


</body>
</html>