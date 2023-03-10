<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>talk_list</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta property="twitter:card" content="summary_large_image" />

<link href="${path}/resources/css/14style.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/789f666835.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="wrap">
		<!-- 네비게이션 따라다니게 -->
		<div class="navwrap">
			<div class="nav">
				<span class="home"><a href="${path}/home.do">HOME</a></span> <span>|</span>
				<span class="coffee"><a href="${path}/place/placelist.do">커피</a></span>
				<span>|</span> <span class="restaurant"><a
					href="${path}/place/placelist.do">맛집</a></span> <span>|</span> <span
					class="activity"><a href="${path}/place/placelist.do">액티비티</a></span>
				<span>|</span> <span class="hotel"><a
					href="${path}/place/placelist.do">숙소</a></span> <span>|</span> <span
					class="feed"><a href="${path}/place/placelist.do">피드</a></span> <span>|</span>
				<span class="talk"><a href="${path}/talk/list.do">TALK</a></span>
			</div>

			<div class="nav_right">
				<div class="search">
					<a href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
				</div>
				<div class="nav_feed_profile">
					<a href="#"><img src="${path}/resources/image/profile.jpg"
						alt="" /></a>
				</div>
			</div>
		</div>

		<header>
			<div class="logo">
				<a href="#"><img src="${path}/resources/image/logo.png" alt="" /></a>
			</div>
		</header>

		<div class="newFeed">
			<a href="#"> <i class="fa-solid fa-circle-plus fa-3x"></i> <br />
				새 피드 작성하기
			</a>
		</div>
		<div class="main">
			<div class="title">
				<span style="font-size: 40px">Talk</span><br /> <span
					style="font-size: 20px">자유롭게 대화 나눠요!</span>
			</div>

			<c:forEach items="${talkList}" var="dto">
				<div class="talk_all">
					<div class="feed_profile">
						<img src="${path}/resources/image/profile.jpg" alt=""
							style="float: left; padding-right: 20px" />
						<p class="userId">${dto.talkNum}:${dto.memId}</p>
					</div>

					<p>${dto.talkTitle}</p>
					<div class="talk_box" style="margin-left: -10px">
						<p>${dto.talkContent}</p>
						<p>방가방가햄스터</p>
						<p>${dto.date}</p>
					</div>
					<p class="talk1">
						<a href=""><i class="fa-regular fa-comments"></i>댓글달기</a>
					</p>
				</div>
			</c:forEach>

		</div>

		<div class="pageList">

			<!-- 이전 출력 시작 -->
			<c:if test="${pv.startPage>1}">
				<a href="list.do?currentPage=${pv.startPage-pv.blockPage}">&lt;</a>
			</c:if>
			<!-- 이전 출력 끝 -->

			<!-- 페이지 출력 시작 -->
			<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
			  <c:choose>
						<c:when test="${i==pv.currentPage}">
							<a href="list.do?currentPage=${i}">${i}</a>
						</c:when>
						<c:otherwise>
							<a href="list.do?currentPage=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
			</c:forEach>
			<!-- 페이지 출력 끝 -->

			<!-- 다음 출력 시작 -->
			<c:if test="${pv.endPage<pv.totalPage}">
				<a href="list.do?currentPage=${pv.startPage+pv.blockPage}">&gt;</a>
			</c:if>
			<!-- 다음 출력 끝 -->
		</div>

		<div class="bottom">
			<p>
				<a href="">로그아웃</a><br /> 상호명 (주) 서울폴리오 | 주소 서울시 은평구 응암3동 673-16호 |
				전화 010-1234-5678 | help@seoulfolio.com <br />사업자 등록번호 123-45-67890
				| 대표이사: 송세라 <br />서울폴리오는 통신판매 중개자로서 통신판매의 당사자가 아니며 상품의 예약, 이용 및 환불
				등과 관련한 의무와 책임은 각 판매자에게 있습니다.
			</p>
		</div>

	</div>
</body>
</html>
