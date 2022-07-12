<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="utf-8" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="assets/"
	data-template="vertical-menu-template-free">
<head>
	<meta charset="UTF-8">
	<title>어드민 | 비숲</title>
	<jsp:include page="A_head.jsp"/>
	
<style>
	th, td{ padding-top: 20px;}


	input[type=button] { border:solid 2px blue }
	input[type=submit] { border:solid 2px blue }
	
</style>

</head>


<body>

	
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<jsp:include page="A_menu.jsp"/>

			<!-- Layout container -->
			<div class="layout-page">

				<!-- Content wrapper -->
				<div class="content-wrapper">

					<!-- Content -->
					<div class="container-xxl flex-grow-1 container-p-y">
						<h4 class="fw-bold py-3 mb-4">쿠폰 이벤트 등록</h4>
						<div class="card">
							<!-- Account -->
							<div class="card-body">
<form action="aSwEventwritec"  method="post" enctype="multipart/form-data" >					

<table>	

	<tr><th>이벤트명</th>	<td><input type="text" name="evt_name" size = "50" required="required"></td></tr>
	<tr><th>시작일</th><td><input type="date" name="evt_start" required="required"></td></tr>
	<tr><th>종료일</th><td><input type="date" name="evt_end" required="required"></td></tr>
	<tr><th>이벤트설명</th><td><textarea rows="10" cols="60" name="evt_exp" required="required"></textarea></td></tr>
	<tr><th>유의사항</th><td><textarea rows="10" cols="60" name="evt_notice" required="required"></textarea></td></tr>
	<tr><th>이벤트 이미지</th>	<td>
			<div>
			<input type="file" name="evt_imgUpload1" accept="jpg" src="/upload/event" required="required">
			</div></td></tr>


	<tr><th>쿠폰번호</th><th style="text-align: center;">쿠폰이름</th><th>할인율/할인가격</th></tr>
		<c:forEach var="couponmaster" items="${c_list1 }" varStatus="status">
		<tr>
			<td style="text-align: center; padding-right: 21px;">
			<input type="checkbox" name="coupnoArr" value="${couponmaster.coupno}">${couponmaster.coupno}</td>
			 <td class="txt_line" 
				style="cursor: pointer; text-align: center;">${couponmaster.coup_name}</td> 
			<td><c:if test="${couponmaster.coup_dc_rate > couponmaster.coup_dc_price}">(${couponmaster.coup_dc_rate }%)</c:if>
				<c:if test="${couponmaster.coup_dc_rate < couponmaster.coup_dc_price}">(${couponmaster.coup_dc_price }원)</c:if>
			</td>
			 

		</c:forEach>
	
	
	<tr style="text-align: right;"><td colspan="6">
		<input type="submit" value="등록"> &nbsp;&nbsp;
		<input type="button" value="목록" 
			onclick="location.href='aSwEventList'">
	
</table>
</form>
							
							</div>
							<!-- /Account -->
						</div>
					</div>
					<!-- / Content -->

					<div class="content-backdrop fade"></div>
				</div>
				<!-- Content wrapper -->
			</div>
			<!-- / Layout page -->
		</div>

		<!-- Overlay -->
		<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->

	<jsp:include page="A_footer.jsp"/>
</body>
	
</html>