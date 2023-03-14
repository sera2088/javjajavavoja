<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>list</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta property="twitter:card" content="summary_large_image" />

<link href="${path}/resources/css/7style.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/789f666835.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div id="wrap">
		<!-- 네비게이션 따라다니게 -->
		<!-- 네비게이션 따라다니게 -->
		<div class="navwrap">
			<div class="nav_set">
				<div class="nav">
					<span class="home"><a href="${path}/home.do">HOME</a></span> <span>|</span>
					<span class="coffeee"><a href="${path}/place/placelist.do">커피</a></span>
					<span>|</span> <span class="restaurant"><a
						href="${path}/place/jmt.do">맛집</a></span> <span>|</span> <span
						class="atv"><a href="${path}/place/act.do">액티비티</a></span> <span>|</span>
					<span class="hotel"><a href="${path}/place/hotel.do">숙소</a></span>
					<span>|</span> <span class="feed"><a href="#">피드</a></span> <span>|</span>
					<span class="talk"><a href="${path}/talk/list.do">TALK</a></span>
					<div class="nav_right">
						<div class="search">
							<i class="fa-solid fa-magnifying-glass"></i>
						</div>
						<div class="nav_feed_profile">
							<a href="#"><img src="${path}/resources/image/profile.jpg"
								alt="" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<header>
			<div class="logo">
				<img src="${path}/resources/image/logo_w.png" alt="" />
			</div>
		</header>

		<p class="categoryBest">
			이번주 BEST <span class="category">맛집</span> POST
		</p>

		<div class="main_img">
			<img src="${path}/resources/image/한옥마을.jpg" alt="" />
			<div class="imgText">
				<p>128명이 좋아하는</p>
				<p>"한남동 테라스가 예쁜 카페"</p>
				<p>
					<a href="#">자세히보기</a>
				</p>
			</div>
		</div>

		<div class="postText">
			<p>POST</p>
			<p>
				<a href="#"> 최신순 </a><span>&#47;</span><a href="#"> 오래된순 </a><span>&#47;</span><a
					href="#"> 평점순 </a>
			</p>
		</div>

		<div class="postList">
			<table>
				<c:forEach items="${placeList}" var="dto">
					<tr>
						<td><img src="${dto.placePhoto}"/></td>
						<td>
							<p class="postDate">2023-02-28</p> <br />
							<p>장소이름: ${dto.placeName}</p>
							<p>주소 : ${dto.placeAdress}</p>
							<p>서울의 야경이 한눈에 들어오는 넓고 쾌적한 테라스를 보유한 공간</p> <br />
							<p>
								<span class="bookmarkCount">${dto.placeScrab}</span>개 즐겨찾기<span>
									| </span><span class="review">3</span>개 후기 <span> | </span><span
									class="rating">${dto.rating}</span>점
							<span>${dto.placeNum}</span>
							</p>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="pageList">

			<!-- 이전 출력 시작 -->
			<c:if test="${pv.startPage>1}">
				<a href="jmt.do?currentPage=${pv.startPage-pv.blockPage}">&lt;</a>
			</c:if>
			<!-- 이전 출력 끝 -->

			<!-- 페이지 출력 시작 -->
			<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
				<c:choose>
					<c:when test="${i==pv.currentPage}">
						<a href="jmt.do?currentPage=${i}">${i}</a>
					</c:when>
					<c:otherwise>
						<a href="jmt.do?currentPage=${i}">${i}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- 페이지 출력 끝 -->

			<!-- 다음 출력 시작 -->
			<c:if test="${pv.endPage<pv.totalPage}">
				<a href="jmt.do?currentPage=${pv.startPage+pv.blockPage}">&gt;</a>
			</c:if>
			<!-- 다음 출력 끝 -->
		</div>
         

	</div>
</body>
</html>
