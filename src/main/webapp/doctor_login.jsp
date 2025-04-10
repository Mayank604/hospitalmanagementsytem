<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="component/allcss.jsp" %>
<title>Doctor Login Page</title>


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
              <p class="fs-4 text-center">Doctor Login</p>
              <form action="doclogin" method="post">
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
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <%@include file="component/footer.jsp" %>

</body>

</html>
