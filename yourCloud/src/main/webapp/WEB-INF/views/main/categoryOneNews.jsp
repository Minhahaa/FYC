<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
body, ul {
	margin: 0;
	padding: 0;
}

li {
	list-style-type: none;
}

a {
	text-decoration: none;
}

.tab-list {
	text-align: center;
}

.tab-list ul {
	display: inline-block;
	*display: inline;
	zoom: 1;
}

.tab-list ul li {
	float: left;
	margin-left: -1px;
	z-index: 1;
}

.tab-story a {
	height: 40px;
	padding: 0 30px;
	line-height: 30px;
}

* {
	word-break: break-all;
}

/* 해더영역  */
.reward-header {
	text-align: center;
	border: 1px solid black;
	height: -1px;
	top: -20px;
	background-size: cover;
	background: #001328 !important;
	color: white;
}

.title-header {
	color: white;
}
/* div영역 넘으면 줄 바꿈  */
* {
	word-break: break-all;
}

</style>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<script>
	$(function(){
		$("html").css({"background-image":"linear-gradient('')", "background":"white"});
		
	})
</script>

	<jsp:include page="../common/customer_menubar.jsp"/>
		<jsp:include page="../common/customer_menuList.jsp" />
	
	<div id="outer" style="background:white;">
	<!-- 리워드 헤더 이미지  -->
	<div class="reward-header">
		<p class="title-info">
			<h6 style="color:#5cdede;">
				<c:choose>
					<c:when test="${detail.category eq 'A1' }"> 테크,가전</c:when>
					<c:when test="${detail.category eq 'A2' }"> 패션,잡화</c:when>
					<c:when test="${detail.category eq 'A3' }"> 키즈</c:when>
					<c:when test="${detail.category eq 'A4' }"> 여행,레저</c:when>
					<c:when test="${detail.category eq 'A5' }"> 뷰티</c:when>
					<c:when test="${detail.category eq 'A6' }"> 도서</c:when>
					<c:when test="${detail.category eq 'A7' }"> 반려동물</c:when>
					<c:when test="${detail.category eq 'A8' }"> 스포츠</c:when>
					<c:when test="${detail.category eq 'A9' }"> 푸드</c:when>
					<c:when test="${detail.category eq 'A10' }"> 홈리빙</c:when>
					<c:otherwise>카테고리 미정</c:otherwise>
				</c:choose> &emsp;
			<strong style="color:white">${ detail.projectShortTitle }</strong>
			</h6> 
		<h2 class="title-header" style="color: white;"> ${ detail.projectTitle } </h2>
		</p>
	</div><br>
	
	
	<%int userNo =123; %>

	<div class="tab-list">
		<ul class="tab-story">
		
		<c:if test="${loginUser.userNo ne null}">		
			<li><a href="categoryOne.ca?projectNo=${ detail.projectNo }&userNo=${loginUser.userNo}&endDate=${detail.endDate}" class="tab-link">스토리</a></li>
		</c:if>	
		
		<c:if test="${loginUser.userNo eq null }">
			<li><a href="categoryOne.ca?projectNo=${ detail.projectNo }&userNo=<%=userNo%>&endDate=${detail.endDate}" class="tab-link">스토리</a></li>
		</c:if>			
			<li><a href="categoryOneFunding.ca?projectNo=${detail.projectNo}" class="tab-link">펀딩안내</a></li>
			<li><a href="#" class="tab-link">새소식</a></li>
			<li><a href="categoryOneCommunity.ca?projectNo=${detail.projectNo}" class="tab-link">커뮤니티</a></li>
			<li><a href="categoryOneSupporter.ca?projectNo=${detail.projectNo}" class="tab-link">서포터</a></li>
		</ul>
	</div>

	
	<hr />
	<div class="reward-body">
		<!-- 가운데 내용 -->
		<div class="dd">
			<div class="content-news">
				<div class="tab-news"><br>	
					<div>
					<p class="massage-box" style="height: 100px; text-align: center; color: #90949c" >
						등록된 새소식이 없습니다.
					</p>
					</div>
					<!-- 새소식 등록 -->
					
					<div style="width:900px; margin:0 auto;">
						<form action="" name="" method="get">
							<table>
								<tr>
									<td><h2>진수네 구기자기자 오픈 2시간만에 80% 달성 기념 이벤트!</h2></td>
								</tr>
								
								<tr>
									<td>
										여러분의 성원에 힘입어 오픈 2시간만에 80%를 달성했습니다!
										QR코드로 프로젝트를 공유하고 인증 사진을 댓글로 달아주시면
										추첨을 통해 [얼리버드] 리워드를 한개! 무료 배송해 드립니다!
									</td>
								</tr>
								<tr>
									<td>
										펀딩에 참여하지 않은 서포터분들도 참여 가능하니 많은 참여! 
										부탁드려요!
									</td>
								</tr>
								
							</table>						
						</form>
					</div>
					
				</div>
				
			</div>
		</div>
		
	<br><br><br>	
	<div style="width:100%; float:left;"><jsp:include page="../common/customer_footer.jsp"/></div>
	
	</div>

</body>
</html>