<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored = "false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="component/allcss.jsp" %>
<title>User Login Page</title>


</head>

<body style="min-height: 100vh; display: flex; flex-direction: column;">

  <%@include file="component/navbar.jsp" %>

  <div class="flex-grow-1">
    <!-- Doctor login form goes here -->
    <div class="container p-5">
      <div class="row">
        <div class="col-md-4 offset-md-4">
          <div class="card paint-card">
            <div class="card-body">
              <p class="fs-4 text-center">User Login</p>
              
              <c:if test="${not empty succMsg}">
              	<p class="text-center text-success fs-5">${succMsg}</p>
              		<c:remove var= "succMsg" scope="session" />
              	</c:if>
              	
              	  
              <c:if test="${not empty errorMsg}">
              	<p class="text-center text-danger fs-5">${errorMsg}</p>
              		<c:remove var= "errorMsg" scope = "session" />
              	</c:if>
              
              <form action="UserLogin" method="post">
                <div class="mb-3">
                  <label class="form-label">Email address</label>
                  <input required name="email" type="email" class="form-control">
                </div>

                <div class="mb-3">
                  <label class="form-label">Password</label>
                  <input required name="password" type="password" class="form-control">
                </div>

                <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
              </form>
              <br> Don't have an account?<a href="signup.jsp" class="text-decoration-none" > create one</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <%@include file="component/footer.jsp" %>

</body>

</html>
