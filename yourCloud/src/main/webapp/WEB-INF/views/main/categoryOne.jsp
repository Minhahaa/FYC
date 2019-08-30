<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
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

.reward-body {
	width: 100%;
}

.dd {
	border: 1px solid blue;
	width: 75%;
	margin: 0 auto;
}
/* 컨텐츠 영역  */
.sub-contents {
	float: left;
	border: 1px solid purple;
	width: 65%;
	
	margin: 0 auto;
	margin-right: 18px;
}
/* 오른쪽 영역  */
.opener-info {
	float: left;
	border: 1px solid black;
	width: 24%;
}

.btn-funding {
	/*    border:1px solid #00c4c4; */
	border: 0;
	outline: 0;
	font-size: 17px;
	background: #00c4c4;
	padding: 1.19px 23.9999px 0px;
	color: white;
	width: 85%;
	height: 45px;
}

.btn-question, .btn-share {
	width: 28%;
	border: 1px solid skyblue;
	background: white;
	height: 35px;
}

.btn-like {
	width: 28%;
	border: 1px solid skyblue;
	background: white;
	height: 34.6px;
}
.btn-meker-question {
	
	border:1px solid rgba(0, 0, 0, 0.15);
	border-radius: 3px;
	background-color: #fff;
	cursor: pointer;
	padding: 0 1.41176em;
	height: 48px;
 	vertical-align: middle;
 	line-height: 1;
 	color: rgba(0, 0, 0, 0.54);
 	font-size: 17px;
 	width:90%;
 	margin: 0 auto;
 	text-align: center;
	
}
.projectTitle{
	margin-bottom: 10px;
    font-weight: 500;
    font-size: 15px;
    color: #777;
}.reward-list{
	position: relative;
 
    width: 100%;
    margin-bottom: 20px;
   /*  background: #d19cfa; */
    border: 1px solid #eaeaea;
    text-align: left;
    background: white;
   
}
.reward-list .reward-qty em {
    padding: 2px 5px;
    font-weight: 500;
    background: #f6ecfe;
}
.reward-list .reward-soldcount {
    font-size: 13px;
    line-height: 21px;
    color: #00132C;
}
.reward-info .reward-qty {
    margin-bottom: 5px;
    font-size: 13px;
    line-height: 21px;
    color: #c88af9;
}

.btn-declaration {
	width: 100%; 
	height: 40px;
	background: rgb(231, 76, 60);
	border: 0;
	color: white;
	
}

.reward-header{
	text-align:center;
    border: 1px solid black;
    height:-1px;
    top: -20px;
    background-size: cover;
    background: #001328!important;
    color: white;
   }




/* .starR {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 20px;
	height: 20px;
	display: inline-block;
	text-indent: -9999px;
	cursor: pointer;
}

.starR.on {
	background-position: 0 0;
} */
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/customer_menubar.jsp"/>
<script type="text/javascript">

	$(function(){
		$("html").css({"background-image":"linear-gradient('')", "background":"white"});
		
	})
</script>
	
	<div id="outer" style="background:white;">
	<!-- 리워드 헤더 이미지  -->
	<div class="reward-header">
		
		<p class="title-info">
			<em style="color:#5cdede;">소셜.캠페인</em>
			<strong>#몰카탐지카드몰가가드</strong>
			프로젝트
		</p>
		<h2 class="title-header" style="color: white;">
			[소셜캠페인 참여1위]불법촬영 두려워마세요! 간편한 몰카방지카드 몰카드
		</h2>
		
	</div>
	<br />

	<div class="tab-list">
		<ul class="tab-story">
			<li><a href="categoryOne.ca" class="tab-link">스토리</a></li>
			<li><a href="categoryOneFunding.ca" class="tab-link">펀딩안내</a></li>
			<li><a href="categoryOneNews.ca" class="tab-link">새소식</a></li>
			<li><a href="categoryOneCommunity.ca" class="tab-link">커뮤니티</a></li>
			<li><a href="categoryOneSupporter.ca" class="tab-link">서포터</a></li>
		</ul>
	</div>
	<hr />

	<div class="reward-body">
			<div class="dd">
			<div class="sub-contents">
			
				<!-- 이미지 앤 동영상 영역 -->
				<div class="title-img">
					<img src="${ contextPath }/resources/images/dis.PNG" width="98%;"
						height="355px;" style="border: 1px solid green;">
				</div>
				<br />
				<div>자라섬재즈페스티벌을 기억하는 또다른 방법. 덴마크의 세계적인 디자이너 헨릭 빕스코브(Henrik
					Vibskov)의 상상력을 입은 자라섬재즈 한정판 굿즈를 와디즈에서 만나보세요!</div>
				<br />
				<br />

				<div
					style="padding: 20px; background: #eafbf7; background: rgba(0, 204, 163, 0.1)">
					<p
						style="color: ##00cca3; font-size: 13px; linc-heigth: 20px; margin-bottom: 10px;">
						<strong>목표 금액</strong> 500,000원 &nbsp; &nbsp; <strong>펀딩기간</strong>
						2019.08.19-2019.09.06
					</p>
					<p style="color: #4a4a4a; font-size: 12px; line-height: 19px;">
						<strong>100% 이상 모이면 펀딩이 성공되는 프로젝트</strong> <br /> 이 프로젝트는 펀딩
						마감일까지 목표 금액이 100% 모이지 않으면 결제가 진행되지 않습니다.
					</p>
				</div>
				<!-- 스토리 영역 -->
				<!-- 에이터 영역님이다 -->
				<br />
				<br />
				<div class="story" style="height: auto;">
					<strong class="title-story">스토리</strong> <br />
					<br />
					<div class="contents-view">
						<p>
							<img src="${ contextPath }/resources/images/tit.PNG"
								style="width: 92%" />
						</p>

						<p>
							<br />
						</p>
						<p>
							<img src="${ contextPath }/resources/images/tit.PNG"
								style="width: 92%" />
						</p>
						<p>
							<br />
						</p>
						<p>
							<img src="${ contextPath }/resources/images/tit.PNG"
								style="width: 92%" />
						</p>

						<blockquote>
							<p>
								살다보면 <strong>공간이 추가로 필요할 떄가 있습니다. &nbsp;</strong>
							</p>
						</blockquote>
						<p>
							<br />
						</p>
						<p>생활공간은 한정 되어있는데물건은 점점 쌓여가고, 버리기는 아깝고 팔 수도 없는 물건들로 결국 집안 곳곳이
							가득 찹니다. 아내는 집에 누구 초대하기도 민망하다며 성화고, 남편은 애들같이 장난감을 사모아서 방 한칸을 꽉
							채워놨네요. 이건 뭐 우리 집이 집인지 창고인지… 큰집으로 이사를 가자니 계약기간도 남아 있고 집값도 비싸고 보통
							일이 아닙니다. 많은 분들이 미니멀 라이프를 추구 하고 있지만 더하기는 쉬워도 빼는 건 쉬운 일이 아닌 것 같습니다.
						</p>
						<p>
							<br />
						</p>

						<!-- 프로젝트 일정 -->
						<p>
							<strong>프로젝트 일정 안내</strong>
						</p>
						<p>
							<strong> 펀딩 전 프로젝트 일정을 꼭 확인해 주세요! </strong> 다락 학동역점의 시공 일정은 새소식을
							통해 자제시 업데이트 하도록 하겟습니다.
						</p>
						<p>
							<strong>08월 27일 : 프로젝트 오픈</strong> <br /> <strong>09월
								22일 : 프로젝트 마감</strong> <br /> <strong>09월 23일 ~ 09월 26일 : 결제 기간</strong>
							<br /> <strong>09월 30일 ~ : 배송시작</strong>
						</p>
						<p>
							<br />
						<p>
							<strong> 저희는 제품 생산을 위한 금형 제작이 이미 완성되었으며, 2번의 시생산을 거쳐 대량
								생산에서 발생할 수 있는 많은 문제점들을 보완 했기 때문에 시행착오 없이 양산을 시작할 수 있습니다. </strong>
						</p>
						<p>
							<br />
						</p>
						<strong>배송 안내</strong>
						<p>
						<p>
							1.리워드는 CJ 대한통운 택배사를 통해 발송됩니다. <br /> 2.배송 소식은 새소식을 통해 내용을 공유해
							드리겠습니다. <br /> &nbsp; - 09월 30일 부터 일일 1,000개씩 순차배송 <br />
							&nbsp; - 배송시 포장상태 : 에어캡 + 박스포장 <br /> 3.도서/산간 지방도 택배 발송이 되며, 지역에
							관게없이 배송비는 없습니다. 단 , 배송 예정일이 지연될 수 있음을 미리 안내드립니다. &nbsp; <br />
							4.제품 및 배송 관련 문의사항 &nbsp; : 이메일 <a href="">eqkwle@naver.com</a>
						</p>

						<p>
							<br />
						</p>
						<!-- 기타문의 내역 -->
						<p>
							<strong>FAQ</strong> <br />
						</p>
						<p>
							A.아닙니다. 아모플러스는 밤에 잠자기 전이나 자는 동안 착용하는 불편함이 없습니다. 낮에 학업, 가사 할동 그리고
							근무하시면서 최소 30분 정도 착용하시면 됩니다. <br /> <br /> <strong>Q.의료기기
								인가요?</strong> <br /> A.아닙니다. 아모플러스는 특정 질병을 치료. 진단 예방 등을 목적으로 하는 외료기기가
							아니며, 개인용 건강강관리 ,향상(개선) 기기로 분류되는 웰니스 제품입니다.
						</p>
					</div>
s				</div>
			</div>
		</div>
		</div>
		

		<!-- 오른쪽 영역 -->
		<div class="opener-info">
			<div class=state-box>
				<p class="remin-day" style="font-size: 28px;">26일 남음</p>
				<hr />
				<strong style="font-size: 24px;">100</strong> %달성
				<p class="total-money" style="font-size: 24px;">
					<strong>100,000,000</strong> 원 펀딩
				</p>
				<p class="total-supporter" style="font-size: 24px;">
					<strong>619</strong> 명의 서포터
				</p>
			</div>
			<div class="">
				<button onclick="backMoney" class="btn-funding">펀딩하기</button>
			</div>
			<br />
			<div class=btn-wrap>
				<div class="btn-wrap-flex">
					<button class="btn-like">
						<i></i> 100
					</button>
					<button class="btn-question">문의</button>

					<button class="btn-share">공유하기</button>
				</div>
			</div>
			<hr />
			<div class="project-meker-info">
				<h3>메이커 정보</h3>
				<div class="maker-box">
					<table style="border: 1px solid black; width: 100%;">
						<tr>
							<td><button
									style="border: 1px solid black; border-radius: 50%; background: white; width: 100px; height: 100px; margin-left: 10px;"></button></td>
							<td style="">진수네 농산</td>
						</tr>
						<tr>
							<td><br /></td>
						</tr>
						<tr>
							<td colspan="2">메이커 평점 : 4.7
								<hr />
							</td>
						</tr>
	
						<tr>
							<td colspan="2" align="center">
								<button class="btn-meker-question">메이커에게 문의하기</button>			
							</td>
						</tr>
						<tr>
							<td><br /></td>
						</tr>
						
						<tr>
							<td colspan="2">
								<p style="font-size: 12x;">
									메이커 연락처 : 010-4231-5232
				
								</p>
								
							</td>
						</tr>
						
					</table>
				</div>
			</div>
			<br />
			<div class="moveRewards">
				<div class="wd-gift" style="border: 1px solid red;">
					<h3 class="projectTitle">리워드 선택</h3>
					<button class="reward-list">
						<div class="reward-info">
						<!-- 	<dl>
								<dt>
									 78,200원 펀딩
								</dt>
								<dd > -->
									<p>[슈퍼얼리버드] 싱글팩 (30% 혜택)</p>
									<p>
										남성용 / 씬타입(단목) Thin. / 4켤레 (4가지 칼라. 각 1켤레씩)
										<br />
										[블랙&레드] , [화이트&블랙] , [블루&화이트] , [그레이&화이트]
									</p>
							<!-- 	</dd>
							</dl> -->
								<ul class="data-info">
									<li class="shipping">
										배송비
										<p>25,500원</p>
									</li>
									<li class="date">
										리워드 빌송 시작일
									<em>2019 10월 초 (1~10일) 예정</em>
									</li>
								</ul>
								<p class="reward-qty">
									제한수량
									<strong>12000</strong>
									개
									<em>현재 1144개 남음</em>
								</p>
								<p class="reward-soldcount">
									총
									<strong>76</strong>
									개 펀딩 완료
								</p>
						</div>
					</button>
				</div>	
			</div>
			<div class="moveRewards">
				<div class="wd-gift" style="border: 1px solid red;">
					<h3 class="projectTitle">리워드 선택</h3>
					<button class="reward-list">
						<div class="reward-info">
						<!-- 	<dl>
								<dt>
									 78,200원 펀딩
								</dt>
								<dd > -->
									<p>[슈퍼얼리버드] 싱글팩 (30% 혜택)</p>
									<p>
										남성용 / 씬타입(단목) Thin. / 4켤레 (4가지 칼라. 각 1켤레씩)
										<br />
										[블랙&레드] , [화이트&블랙] , [블루&화이트] , [그레이&화이트]
									</p>
							<!-- 	</dd>
							</dl> -->
								<ul class="data-info">
									<li class="shipping">
										배송비
										<p>25,500원</p>
									</li>
									<li class="date">
										리워드 빌송 시작일
									<em>2019 10월 초 (1~10일) 예정</em>
									</li>
								</ul>
								<p class="reward-qty">
									제한수량
									<strong>12000</strong>
									개
									<em>현재 1144개 남음</em>
								</p>
								<p class="reward-soldcount">
									총
									<strong>76</strong>
									개 펀딩 완료
								</p>
						</div>
					</button>
				</div>	
			</div>
			<!-- 신고 영역 -->
			<div style="border:1px solid blue; font-size: 14px;">
				<p class="">
					신고하기란?
				</p>
				<p>
					해당 프로젝트에 허위내용 및 지적재산권
					<br />
					을 침해하는 내용이 있다면 제보해주세요.
				</p>
				<button onclick="showLyPop()" class="btn-declaration"  >
					신고하러 가기
					
				</button>
			</div>
		</div>
	
	<div style="width:100%; float:left;"><jsp:include page="../common/customer_footer.jsp"/></div>
	</div>
</body>
</html>