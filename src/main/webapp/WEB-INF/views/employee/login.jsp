<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #wrap{height:100vh;}
  #wrap > #loginFrm {background-color:#bababa; width: 40%;margin:auto;height:40rem;padding:5rem;text-align:center;}
  #wrap > #loginFrm > form {display:flex; flex-direction: column;justify-content: center; height:100%;background-color:blanchedalmond;}
  #wrap > #loginFrm > form > div {margin-bottom: 2rem;}
  #wrap > #loginFrm > form > div > label {width:25%;display: inline-block;font-size: 1.5rem;}
  #wrap > #loginFrm > form > div > input {width:calc(100%-30%);}
</style>
<c:import url="/WEB-INF/views/layout/css.jsp"></c:import>
<c:import url="/WEB-INF/views/layout/topScript.jsp"></c:import>
<link rel="stylesheet" href="/css/main.css" />

</head>
<body>
  <div id="wrap">
    <div id="loginFrm">
      <h1>logo</h1> 
      <!-- action 생략가능, 현재 url = action -->
      <form:form modelAttribute="employeeVO" method="post">
        <div class="id_div">
          <form:label path="employeeNum">직원 아이디</form:label>
          <form:input path="employeeNum"/>
        </div>
        <div>  
          <form:label path="password">비밀번호</form:label>
          <form:password path="password"/>
        </div>
        <div>
          <input type="checkbox" id="rememberId" name="rememberId">
          <label for="rememberId">아이디저장</label>
        </div>
      	<button type="submit">로그인</button>
      </form:form>
    </div>
  </div>
</body>
<c:import url="/WEB-INF/views/layout/btmScript.jsp"></c:import>
</html>




