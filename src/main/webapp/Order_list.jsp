<!-- 
/*
 *  Description :  메뉴 관리 페이지
 *  Created : 2016-06-29
 *  Author : 김준혁
 *  
 *  Revisions :
 */
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="author" content="Vitaliy Potapov">
<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />
<link href="bootstrab_order_confirm/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery -->
<script src="bootstrab_order_confirm/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="bootstrab_order_confirm/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://www.prepbootstrap.com/Content/shieldui-lite/dist/css/light/all.min.css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>
<script>
$(function(){
	$("#Show-Order-List").hide();
	$(".Show-Order-List-Btn").click(function(){
		var index = $(".Show-Order-List-Btn").index(this);
		$("#Show-Order-List").show();
	});
	//Show-Detail-Purchase-List-Modal-Hide-Btn Click Hide Modal
	$("#Show-Order-List-Modal-Hide-Btn").click(function(){
	   $("#Show-Order-List").hide();
	 });
});
</script>

<style type="text/css">
body {
	padding-top: 50px;
	padding-bottom: 30px;
}

table.table>tbody>tr>td {
	height: 30px;
	vertical-align: middle;
}

a{
	text-decoration: none !important;
}

</style>

</head>

<body>

	<div style="width: 80%; margin: auto;">
		<h1>주문 내역보기</h1>
		<hr>

		<h2>날짜를 선택하세요.</h2>
		<form method="get" id="frm" class="form-inline" action="demo.html">

			<label> <span>연도 </span> 
				<select id="Select-Material-Order-Year" class="form-control">
						<option>선택</option>
						<option>2016</option>
						<option>2017</option>
				</select>
			</label> 
			<label style="margin-left: 30px">월 
				<select name="c"
					id="Select-Material-Order-Month" class="form-control">
						<option>선택</option>
						<option>1월</option>
				</select>
			</label>
			<label style="margin-left: 30px">일 
				<select name="Select-Material-Order-Day"
					id="c" class="form-control">
						<option>선택</option>
						<option>1</option>
				</select>
			</label>

			<button type="button" class="btn btn-success"
				style="margin-left: 30px">확인</button>
		</form>

		<hr>

		<h2>내역</h2><br/>
		<table id="Material-Order-Table" class="table table-bordered table-striped"
			style="clear: both">
			<tbody>
				<tr>
					<td width="10%">주문자</td>
					<td width="10%">주문날짜</td>
					<td width="10%">배송날짜</td>
					<td width="10%">매장명</td>
					<td width="10%">상품목록</td>
					<td width="10%">결제금액</td>
				</tr>
				<tr>
					<td>김준혁</td>
					<td>2016-07-10</td>
					<td>2016-07-15</td>
					<td>종각점</td>
					<td><a class="Show-Order-List-Btn" href="#" style="cursor:pointer;">목록 보기</a></td>
					<td>100,000원</td>
				</tr>
			</tbody>
		</table>

		<div style="display:inline-block; width: 50%;">
			<h3>
				Memo <small>문의 사항을 입력해주세요</small>
			</h3>
		</div>
		<div>
				<textarea id="console" class="form-control" rows="8"
					style="width: 70%" autocomplete="off"></textarea>
		</div>

		<div style="display:inline-block; margin-top: 10%">
			<a class="btn btn-success">결제 완료</a>&nbsp;&nbsp;&nbsp;
			<a class="btn btn-default">결제 취소</a>		
		</div>
	</div>
	
	<jsp:include page="Order_List_Modal.jsp"></jsp:include>
</body>
</html>
