<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<!-- beautify ignore:start -->
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>

<style>

	.btn{
	display: inline-flex important;
	align-items: center important;
	justify-content: center important;
}

.rounded-fill{
	border-radius: 50rem !important;
}

.btn-label-primary{
	color:#696cff !important;
	border-color: rgba(0,0,0,0) !important;
	background: #e7e7ff !important;
}
.btn-label-primary:hover{
border-color: rgba(0,0,0,0) !important;
    background: #5f61e6 !important;
    color: #fff !important;
    box-shadow: 0 0.125rem 0.25rem 0 rgba(105,108,255,.4) !important;
    transform: translateY(-1px) !important;
}
</style>
<head>
  <c:import url="/WEB-INF/views/layout/base.jsp"></c:import>
</head>

<body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
		      <!-- sidebar -->
          <c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import>
          <!-- Layout container -->
          <div class="layout-page">
            <!-- Navbar -->
            <c:import url="/WEB-INF/views/layout/header.jsp"></c:import>

            <!-- Content wrapper -->
            <div class="content-wrapper">
              <!-- Content 내용 여기로 -->
              <div class="container-xxl flex-grow-1 container-p-y">
                <p>회원조회</p>
                
                <div class="card">
                	<div class="table-responsive text-nowrap">
                		<table class="table">
                			<thead>
                			<tr>
                				<th>번호</th>
                				<th>이름</th>
                				<th>전화번호</th>
                				<th>성별</th>
                				<th style="text-align: center;" id="btn" onclick="openModal()">수업예약</th>
                				<th>사번</th>
                			</tr>
                			</thead>
                			<tbody class="table-border-bottom-0">
                				
               					<c:forEach items="${list}" var="vo">
									<tr>
										<td>${vo.memberNum}</td>
										<td>${vo.name}</td>
										<td>${vo.phone}</td>
										<td>${vo.gender}</td>
										<td style="text-align: center;"><button class="btn rounded-pill btn-label-primary">수업예약</button></td>
									 	
									
                					</tr>
                				</c:forEach>
                			</tbody>
                		</table>
                	</div>	
                </div>
		

              </div>
              <!-- / Content --> 
              
              
             
                     

             
  

    <c:import url="/WEB-INF/views/layout/js.jsp"></c:import>
  </body>
</html>