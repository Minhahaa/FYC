<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<title>펀딩하기</title>
<style>
body {
	font-family: 'Sunflower', sans-serif;
}

#personal {
	color: White;
	font-family: 'Sunflower', sans-serif;
}

#textbox {
	font-size: 13px;
	color: red;
	border: 1px solid red;
	font-family: 'Sunflower', sans-serif;
}

#inputBox {
	width: 900px;
	height: 800px;
	position: relatve;
	z-index: 2;
	background: White;
	margin: 0 auto;
	font-family: 'Sunflower', sans-serif;
}

#inputBox2 {
	width: 800px;
	height: 80%;
	position: relatve;
	z-index: 1;
	background: rgb(246, 249, 249);
	margin: 0 auto;
	font-family: 'Sunflower', sans-serif;
}

#fno {
	text-align: center;
	font-family: 'Sunflower', sans-serif;
}

th, td {
	padding: 15px;
	font-family: 'Sunflower', sans-serif;
}

table {
	border-spacing: 10px;
	font-family: 'Sunflower', sans-serif;
}

input {
	background-color: Lightgray;
	width: 300px;
	height: 40px;
	font-family: 'Sunflower', sans-serif;
}

#browsers {
	width: 300px;
	height: 30px;
	font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"] {
	display: none;
	font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"]+label {
	font-size: 13px;
	font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"]+label span {
	display: inline-block;
	width: 15px;
	height: 15px;
	margin: -2px 10px 0 0;
	vertical-align: middle;
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		left top no-repeat;
	cursor: pointer;
	font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"]:checked+label span {
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		-19px top no-repeat;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {

		addTable();
		
	});

	var idx = 0;

	function addTable() {

		var html = "";

		html += '<table style="align: center; border: 1px solid red;" border="1">';
		html += '<tr>';
		html += '    <td>';
		html += '        <h6>금액</h6>';
		html += '    </td>';
		html += '    <td id="fno">&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" value="" placeholder="12345" id="rewardMoney" name="rewardMoney" style="text-align: right;">원';
		html += '    </td>';
		html += '    <td><span>정렬 : </span>&nbsp;';
		html += '    <input type="number" name="sortNo" value="1" id="sortNo" min="0" maxlength="2" style="width: 50px;">';
		html += '    </td>';
		html += '</tr>';
		html += '<tr>';
		html += '    <td>';
		html += '        <h4>리워드명</h4>';
		html += '    </td>';
		html += '    <td id="fno"><input type="text" placeholder="예)ㅇㄴㅇㄴㅇ" id="rewardName" name="rewardName"></td>';
		html += '</tr>';
		html += '<tr>';
		html += '    <td>';
		html += '        <h4>상세설명</h4>';
		html += '    </td>';
		html += '    <td><textarea id="description" name="description" placeholder="" rows="3" data-maxlength="400" style="overflow-y: auto; resize: none; width: 350px;">${p.delivery}</textarea>';
		html += '    </td>';
		html += '</tr>';
		html += '<tr>';
		html += '    <td>';
		html += '        <h4>옵션조건</h4>';
		html += '    </td>';
		html += '    <td id="fno"><ul><li><input type="radio" id="option" name="option" value="필요없음" style="width:14px;height:14px;/>';
		html += '        <label for="option"><span></span>옵션 입력이 필요없는 상품입니다.</label><br></li>';
		html += '        <li><input type="radio" id="option" name="option" style="width:14px;height:14px;/> <label for="option"><span></span>옵션 입력이 필요한 상품입니다.</label>&nbsp;&nbsp;&nbsp;<br>';
		html += '        <textarea rows="5" cols="40" style="width: 300px; height: 100px;"></textarea></li></ul>';
		html += '    </td>';
		html += '</tr>';
		html += '<tr>';
		html += '    <td>';
		html += '        <h4>배송조건</h4>';
		html += '    </td>';
		html += '    <td id="fno"><ul><li><input type="radio" id="deliveryRequest" name="deliveryRequest" value="Y" style="width:14px;height:14px;/>';
		html += '        <label for="deliveryRequest"><span></span>배송지 정보가 필요합니다.</label><br></li>';
		html += '        <input type="radio" id="deliveryRequest" name="deliveryRequest"  value="N" style="width:14px;height:14px;/> <label for="deliveryRequest"><span></span>배송지 정보가 필요하지 않습니다.</label><br></li></ul>';
		html += '    </td>';
		html += '</tr>';
		html += '<tr>';
		html += '    <td>';
		html += '        <h4>배송비</h4>';
		html += '    </td>';
		html += '    <td align="center"><input id="deliveryMoney" name="deliveryMoney" type="text" style="width: 300px; height: 40px; margin-left: 14px;" />원</td>';
		html += '</tr>';
		html += '<tr>';
		html += '    <td>';
		html += '        <h4>제한수량</h4>';
		html += '    </td>';
		html += '    <td id="fno" align="center"><input id="limitCount" name="limitCount" style="margin-left: 14px;" type="text">개</td>';
		html += '</tr>';
		html += '<tr>';
		html += '    <td>';
		html += '        <h4>발송시작일</h4>';
		html += '    </td>';
		html += '    <td id="fno" align="center"><input id="startDate" name="startDate" type="date" min="2017-08-15"></td>';
		html += '</tr>';
		html += '<tr>';
		html += '    <td></td>';
		html += '    <td>';
		html += '        <button onclick="save_re('
				+ idx
				+ ');">저장하기</button> <button id="nextProject" onclick="nextProject()">다음으로</button>';
		html += '        <button onclick="addTable()">만들기</button>';
		html += '    </td>';
		html += '</tr>';
		html += '</table>';
		html += '	<hr />';
		html += '<br />';

		$(".reward_SaveBtn").html($(".reward_SaveBtn").html() + html);
		
		idx++;
	}
</script>

<script>
	function nextProject(){
		location.href="FundingOpen6.fd?projectNo="+'${p.projectNo}';
	}
	function save_re(idx) {
		var projectNo = parseInt($("#projectNo").val() || "0");
		var sortNo = $("#sortNo").val();
		var rewardMoney = parseInt($("#rewardMoney").val() || "0");
		var rewardName = $("#rewardName").val() || "";
		var description = $("#description").val() || "";
		var option = $('input[name="option"]:checked').val();
		var deliveryRequest = $('input[name="deliveryRequest"]:checked').val();
		//alert(option);
		var deliveryMoney = parseInt($("#deliveryMoney").val() || "0");
		//                  alert(deliveryRequest);
		var limitCount = parseInt($("#limitCount").val() || "0");
		var startDate = $("#startDate").val() || "";

		var param = {
			projectNo : projectNo,
			sortNo : sortNo,
			rewardMoney : rewardMoney,
			rewardName : rewardName,
			description : description,
			option : option,
			deliveryRequest : deliveryRequest,
			deliveryMoney : deliveryMoney,
			limitCount : limitCount,
			startDate : startDate
		};

		console.log(param);

		$.ajax({
			url : "insertreReward.fd",
			type : "post",
			data : param,
			success : function(data) {
				console.log(data);
			},
			error : function(err) {
				console.log("실패!");
			}
		});
	}
</script>
</head>
<body>
	<input type="hidden" value="${p.projectNo}" id="projectNo"
		name="projectNo" />
	<jsp:include page="../common/customer_menuList.jsp" />



	<br>
	<div id="top" style="width: 100%;">
		<jsp:include page="../common/fundOpenMenu.jsp" />
	</div>
	<br>
	<br>
	<br>
	<div id="inputBox2" align="center"></div>


	<jsp:include page="../common/customer_footer.jsp" />
</body>
</html>























