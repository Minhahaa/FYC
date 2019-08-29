<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명세정보 확인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<br />
	<div id="outer">
		<div class="tableDiv">
			<h2><c:out value="${ loginUser.userName }"/>님의 명세 정보</h2>
			<br />
			<table class="table" style="text-align:center">
			    <thead>
			      <tr>
			        <th>리워드 종류</th>
			        <th>결제 완료수</th>
			        <th>금액</th>
			        <th>리워드당 총 금액</th>
			      </tr>
			    </thead>
			    <tbody>
			      	<tr>
			      		<td>A</td>
			      		<td>88</td>
			      		<td>150000</td>
			      		<td>400000</td>
			      	</tr>
			    </tbody>
  			</table>
			<p align="right">총 금액 : 400000원</p>  			
		</div>
	</div>
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>