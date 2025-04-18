<%@page import="com.entity.doctor"%>
<%@ page import="com.entity.User" %>
<%@ page import="com.dao.DoctorDao" %>
<%@ page import="com.dao.AppointmentDAO" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Appointment" %>
<%@ page import="com.entity.doctor" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment List</title>

<%@ include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)), url("img/hospital.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>

<%@ include file="component/navbar.jsp" %>

<div class="container-fluid backImg p-5">
	<p class="text-center fs-2 text-white">Appointment List</p>
</div>

<div class="row">
	<div class="col-md-9">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-4 fw-bold text-center text-success">Appointment List</p>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Appoint Date</th>
							<th scope="col">Diseases</th>
							<th scope="col">Doctor Name</th>
							<th scope="col">Status</th>
						</tr>
					</thead>
					<tbody>
						<%
							User user = (User) session.getAttribute("userObj");
						System.out.println(user);
						System.out.println(user.getId());
							AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
							DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
							List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
							for(Appointment ap : list){
								doctor d = dao2.getDoctorById(ap.getDoctorId());
						%>
						<tr>
							<td><%= ap.getFullName() %></td>
							<td><%= ap.getGender() %></td>
							<td><%= ap.getAge() %></td>
							<td><%= ap.getAppointDate() %></td>
							<td><%= ap.getDiseases() %></td>
							<td><%= d.getFullName() %></td>
							<td>
								<%
									if("Pending".equals(ap.getStatus())){
								%>
									<a href="#" class="btn btn-sm btn-warning">Pending</a>
								<%
									} else {
								%>
									<span class="text-success"><%= ap.getStatus() %></span>
								<%
									}
								%>
							</td>
						</tr>
						<%
							} // end of for loop
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="col-md-3 p-3">
		<img alt="Doctor" src="img/doct.jpg" class="img-fluid rounded">
	</div>
</div>

</body>
</html>
