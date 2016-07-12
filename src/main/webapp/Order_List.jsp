<!-- 
/*
 *  Description :  재료 주문 내역 페이지
 *  Created : 2016-07-11
 *  Author : 손현민
 *  
 *  Revisions :
 * 
 */
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	//취소 가능 클릭 시 해당 재료 리스트 삭제 및 주문 취소
	$(".Cancel-Order-Btn").click(function(){
		var index = $(".Cancel-Order-Btn").index(this);
		if(confirm("정말로 주문을 취소하시겠습니까?")){
			
		}
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
		<p>
			<i class="fa fa-exclamation-circle fa-2x" aria-hidden="true"></i>
			만일 여러 매장을 보유한 경우, 다른 매장에 대한 재료 주문 내역을 보고싶다면 시작 페이지 오른쪽 메뉴에서 매장 변경 후 다시 이 페이지로 오시기 바랍니다.
			<a href="#">시작 페이지로 이동</a>
		</p>
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
				style="margin-left: 30px">검색</button>
		</form>

		<hr>

		<h2>내역</h2>
		<p>
			<i class="fa fa-exclamation-circle fa-2x" aria-hidden="true"></i>
			고객이 지정한 배송 날짜로 부터 3일전에 배송 준비를 시작합니다. 따라서 현재 날짜가 배송날짜 3일전 혹은 그 이하라면 주문을 취소 할 수 없습니다.
		</p>
		<br/>
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
					<td width="10%">상태</td>
				</tr>
				<tr>
					<td>김준혁</td>
					<td>2016-07-10</td>
					<td>2016-07-15</td>
					<td>종각점</td>
					<td><a class="Show-Order-List-Btn" href="#" style="cursor:pointer;">목록 보기</a></td>
					<td>100,000원</td>
					<td><a class="Cancel-Order-Btn" href="#">취소 가능</a></td>
				</tr>
				<tr>
					<td>김준혁</td>
					<td>2016-07-10</td>
					<td>2016-07-15</td>
					<td>종각점</td>
					<td><a class="Show-Order-List-Btn" href="#" style="cursor:pointer;">목록 보기</a></td>
					<td>100,000원</td>
					<td><a class="Cancel-Order-Btn" href="#">취소 가능</a></td>
				</tr>
				<tr>
					<td>김준혁</td>
					<td>2016-07-10</td>
					<td>2016-07-15</td>
					<td>종각점</td>
					<td><a class="Show-Order-List-Btn" href="#" style="cursor:pointer;">목록 보기</a></td>
					<td>100,000원</td>
					<td><a class="Cancel-Order-Btn" href="#">취소 가능</a></td>
				</tr>
				<tr>
					<td>김준혁</td>
					<td>2016-07-10</td>
					<td>2016-07-15</td>
					<td>종각점</td>
					<td><a class="Show-Order-List-Btn" href="#" style="cursor:pointer;">목록 보기</a></td>
					<td>100,000원</td>
					<td><a class="Cancel-Order-Btn" href="#">취소 가능</a></td>
				</tr>
				<tr>
					<td>김준혁</td>
					<td>2016-07-10</td>
					<td>2016-07-15</td>
					<td>종각점</td>
					<td><a class="Show-Order-List-Btn" href="#" style="cursor:pointer;">목록 보기</a></td>
					<td>100,000원</td>
					<td><a class="Cancel-Order-Btn" href="#">취소 가능</a></td>
				</tr>
			</tbody>
		</table>
		<!-- 페이징 -->
		<div class="col-sm-offset-5">
			<nav>
			  <ul class="pagination">
			    <li>
			      <a href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li>
			      <a href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
	</div>
	
	<!-- 재료 상품 상세 보기 모달창 -->
	<jsp:include page="Order_List_Modal.jsp"></jsp:include>
</body>
</html>
