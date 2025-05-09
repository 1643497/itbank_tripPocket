<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Trip Pocket Intro</title>
	<link rel="stylesheet" href="${contextPath}/resources/css/main/mainLayout.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/4.0.21/fullpage.min.css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/4.0.21/fullpage.min.js"></script>
</head>
<body>
<div id="fullpage">
	<div class="section first-section">
		<div class="content">
			<p>여행의 모든 순간을 간편하게</p>
			<h1>나를 아는 여행, <strong>Trip Pocket</strong></h1>
		</div>
	</div>

	<div class="section">
		<div class="content">
			<h1>내 마음대로, 나만의 특별한 여행</h1>
			<img src="${contextPath}/resources/img/content/plan.png" alt="여행 일정">
			<h1>맞춤형 일정으로 완성하는 나만의 루트</h1>
			<p>
				여행 준비, 어렵게 느껴지시나요? 🗺️<br>
				Trip Pocket과 함께라면 누구나 쉽게 일정을 만들고, 자유롭게 수정할 수 있어요.<br>
				지금, 스트레스 없이 내가 원하는 여행을 시작해보세요.
			</p>
		</div>
	</div>

	<div class="section">
		<div class="content">
			<h1>가고 싶은 그곳, 여행지로 어때요?</h1>
			<img src="${contextPath}/resources/img/content/blog.png" alt="여행지 보드 이미지">
			<h1>여행지 정보, 한눈에 확인해 보세요</h1>
			<p>
				궁금한 여행지, 다른 사람들과 함께 확인해보세요 ✨<br>
				Trip Pocket에서는 인기 여행지 정보부터 후기까지 한 번에 볼 수 있어요.<br>
				여행 준비, 더 쉽고 즐겁게 만들어드릴게요.
			</p>
		</div>
	</div>

	<div class="section">
		<div class="content">
			<h1>나의 여행, 어디부터 시작할까요?</h1>
			<img src="${contextPath}/resources/img/content/destination.png" alt="관광지 이미지">
			<h1>일정에 맞는 관광지를 한눈에 찾아보세요</h1>
			<p>
				설레는 여행의 시작, 바로 관광지 찾기!<br>
				Trip Pocket으로 날짜와 지역에 맞는 관광지를 쉽고 빠르게 검색해보세요.<br>
				다양한 명소들을 한눈에 비교하고, 나만의 여행 루트를 만들어보세요 🌍
			</p>
		</div>
	</div>

	<div class="section">
		<div class="content">
			<h1>어디로 갈지 망설여진다면?</h1>
			<img src="${contextPath}/resources/img/content/random.png" alt="랜덤 여행지 이미지">
			<h1>가볍게 하나 뽑아볼까요?</h1>
			<p>
				"이번엔 어디로 떠나볼까?"<br>
				고민이 될 땐, 살짝 뽑아보세요 🍀<br>
				Trip Pocket이 추천하는 여행지로<br>
				뜻밖의 설렘을 만나보세요 ✨
			</p>
		</div>
	</div>

	<c:if test="${member == null}">
	<div class="section">
		<div class="content">
			<h1>
				<a href="${contextPath}/member/loginForm.do" class="start-button">
					Trip Pocket 시작하기
				</a>
			</h1>
		</div>
	</div>
	</c:if>
</div>
<script>
	new fullpage('#fullpage', {
		autoScrolling: true, // 자동 스크롤 활성화
	    fitToSection: true, // 각 섹션을 화면 크기에 맞춤
	    scrollOverflow: true, // 섹션 내부에서 스크롤 가능
	    scrollBar: false, // 스크롤바 숨김
	    navigation: true, // 네비게이션 활성화
	    navigationPosition: 'left',
	    scrollingSpeed: 1000, // 스크롤 속도 조정
	    anchors: ['main', 'plan', 'destinations', 'attractions', 'random', 'start'], // 섹션 앵커 설정
	    afterLoad: function (anchorLink, index) {
	        if (index === 1) {
	            document.body.style.overflow = 'hidden'; // 첫 번째 섹션에서 스크롤 숨김
	        }
	    },
	    onLeave: function (index, nextIndex, direction) {
	        if (nextIndex === 1) {
	            document.body.style.overflow = 'hidden'; // 다음 섹션으로 이동 시 스크롤 숨김
	        }
	    }
	});
</script>
</body>
</html>
