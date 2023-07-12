<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet"> -->
<!-- CSS -->
<link rel="stylesheet" href="/assets/css/styles.css">
<link rel="stylesheet" href="/assets/css/modal.css">
<%--jquery--%>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<!-- datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <title>요청내역</title>
</head>
<body>
	<%@include file="/views/include/header.jsp"%>
	<section id="body-pd" class="body-pd">
		<div class="main_title">
			<h2>요청 내역</h2>
			<input type="text" id="datepicker1"> -
       	 	<input type="text" id="datepicker2">
			<nav class="plusinfo">
				<select class="searchs searchtype">
					<option>전체</option>
					<option>사원번호</option>
					<option>요청종류</option>
					<option>요청 보낸 사람</option>
					<option>본조직</option>
					<option>요청사항</option>
					<option>요청사유</option>
					<option>상태</option>
					<option>신청일자</option>
					<option>관리</option>
				</select>
				<input type="text" class="searchs search">
				<input type="button" class="seachbtn" value="검 색">
			</nav>
		</div>
		<table class="table sec-table table-hover">
			<thead>
				<tr>
					<th>요청내역번호</th>
					<th>사원번호</th>
					<th>요청 종류</th>
					<th>부서</th>
					<th>요청 보낸 사람</th>
					<th>요청사항</th>
					<th>요청 사유</th>
					<th>상태</th>
					<th>승인권자 노트</th>
					<th>신청일자</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="requestList" items="${list}">
				<tr
				data-rqstNum="${requestList.rqst_hstry_num}"
				data-empNum="${requestList.emp_num}"
				data-requestType ="${requestList.request_type}"
				data-dept ="${requestList.dept}"
				data-requestSender ="${requestList.request_sender}"
				data-requestTerm ="${requestList.request_term}"
				data-requestReasons ="${requestList.request_reasons}"
				data-state ="${requestList.state}"
				data-appNote ="${requestList.approver_note}"
				data-appDate ="${requestList.application_date}">
					<td>${requestList.rqst_hstry_num}</td>
					<td>${requestList.emp_num}</td>
					<td>${requestList.request_type}</td>
					<td>${requestList.dept}</td>
					<td>${requestList.request_sender}</td>
					<td>${requestList.request_term}</td>
					<td>${requestList.request_reasons}</td>
					<td>${requestList.state}</td>
					<td>${requestList.approver_note}</td>
					<td>${requestList.application_date}</td>
					<td>
						<button type="button" class="approve">승인</button>&nbsp;
						<button type="button" class="reject">거절</button>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>

<script type="text/javascript">

</script>
<!-- js -->
<script src="/assets/js/main.js"></script>
<script type="text/javascript" src="/assets/js/modal.js"></script>
</body>
</html>