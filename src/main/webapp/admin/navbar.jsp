<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <!-- Brand -->
    <a class="navbar-brand fw-bold" href="index.jsp">
      <i class="fas fa-clinic-medical"></i> Medi Home
    </a>

    <!-- Toggler for mobile -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar Content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- LEFT: Nav links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-uppercase" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active text-uppercase" href="doctor.jsp">Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active text-uppercase" href="view_doctor.jsp">View Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active text-uppercase" href="patient.jsp">Patient</a>
        </li>
      </ul>

      <!-- RIGHT: Admin dropdown -->
      <div class="dropdown">
        <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1"
          data-bs-toggle="dropdown" aria-expanded="false">
          Admin
        </button>
        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
          <li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>
