<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>
  <button class="icon_btn" id="pre_month"><i class="fa-solid fa-chevron-left fa-xs"></i></button>
    <span id="work"></span>
  <button class="icon_btn" id="next_month"><i class="fa-solid fa-chevron-right fa-xs"></i></button>
</h3>

<div>
  <form>
      <input type="hidden" value="1" name="page" id="page">
      <select name="kind" class="form-select" id="k" data-kind="${pager.kind}" aria-label="Default select example">
          <option class="kind" value="name">이름</option>
          <option class="kind" value="state">상태</option>
      </select>
      <input type="text" name="search" value="${pager.search}" placeholder="검색어를 입력하세요" class="form-control" aria-label="Search">
      <button type="button" id="submit_btn" class="btn btn-primary">조회</button>
  </form>
</div>
<button id="day_btn" class="btn btn-primary">당일 근태 확인</button>

<c:if test="${not empty list}"> 
<div class="card">
  <div id="attendance_day" class="table-responsive text-nowrap">
    <table class="table table-hover">
      <thead>
        <tr>
          <th>번호</th>
          <th>이름</th>
          <th>출근시간</th>
          <th>퇴근시간</th>
          <th>상태</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${list}" var="vo" varStatus="i">
          <tr>
            <td>${i.index+1}</a></td>
            <td>${vo.employeeVO.name}</td>
            <td>${vo.onTime}</td>
            <td>${vo.offTime}</td>
            <td>${vo.state}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</div>

<ul class="pagination justify-content-center">
  <li class="page-item prev ${pager.pre?'':'disabled'}">
    <a class="page-link move" data-num="${pager.startNum-1}" href="#"><i class="tf-icon bx bx-chevrons-left"></i></a>
  </li>
  <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
    <li class="page-item">
      <a class="page-link move" data-num="${i}" href="#">${i}</a>
    </li>
  </c:forEach>
  <li class="page-item next ${pager.next?'':'disabled'}">
    <a class="page-link move" data-num="${pager.lastNum+1}" href="#"><i class="tf-icon bx bx-chevrons-right"></i></a>
  </li>
</ul>
</c:if>
