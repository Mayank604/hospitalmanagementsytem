<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file ="component/allcss.jsp" %>
<title>Index Page </title>
<style>
  .title {
    text-align: center;
    margin-top: 30px;
    font-size: 32px;
  }

  .container {
    display: flex;
    justify-content: space-between;
    padding: 40px;
    align-items: center;
  }

  .features {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
    flex: 1;
  }

  .feature-box {
    padding: 20px;
    background: #f7f7f7;
    border-radius: 10px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
  }

  .feature-box h3 {
    margin-top: 0;
  }

  .doctor-img {
    max-width: 350px;
    margin-left: 40px;
  }
  .team-container {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 40px;
    padding: 40px;
  }

  .team-member {
    text-align: center;
    width: 200px;
  }

  .team-member img {
    width: 100%;
    height: auto;
    border-radius: 50%;
    border: 4px solid #e0e0e0;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  }

  .team-member h4 {
    margin-top: 10px;
    font-size: 18px;
  }

  .team-member p {
    color: #666;
    font-size: 14px;
  }

  @media (max-width: 768px) {
    .container {
      flex-direction: column;
      align-items: flex-start;
    }

    .doctor-img {
      margin: 30px auto;
      width: 100%;
      max-width: 300px;
    }

    .features {
      grid-template-columns: 1fr;
    }
    .team-container {
      flex-direction: column;
      align-items: center;
    }
  }
</style>
</head>
<body>
<%@include file="component/navbar.jsp"  %>
<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/hos.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos3.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos2.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- Hospital Features Section -->
<h2 class="title">Key Features of our Hospital</h2>

<div class="container">
  <div class="features">
    <div class="feature-box">
      <h3>100% Safety</h3>
      <p>We follow strict hygiene protocols and international medical standards to ensure complete safety for every patient and staff member.</p>
    </div>
    <div class="feature-box">
      <h3>Clean Environment</h3>
      <p>Our hospital maintains a highly sanitized and organized environment to promote faster recovery and prevent infections.</p>
    </div>
    <div class="feature-box">
      <h3>Friendly Doctors</h3>
      <p>Our compassionate and skilled doctors are dedicated to providing personalized care and building trust with every patient.</p>
    </div>
    <div class="feature-box">
      <h3>Medical Research</h3>
      <p>We continuously engage in advanced research to innovate and offer the most effective treatment methods available in modern medicine.</p>
    </div>
  </div>

  <img src="img/dr1.jpg" alt="Doctor" class="doctor-img" />
</div>

<!-- Our Team Section -->
<h2 class="title">Our Team</h2>

<div class="team-container">
  <div class="team-member">
    <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Dr. John Smith">
    <h4>Dr. John Smith</h4>
    <p>Cardiologist</p>
  </div>
  <div class="team-member">
    <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="Dr. Emily Brown">
    <h4>Dr. Emily Brown</h4>
    <p>Neurologist</p>
  </div>
  <div class="team-member">
    <img src="https://randomuser.me/api/portraits/men/56.jpg" alt="Dr. Raj Mehra">
    <h4>Dr. Raj Mehra</h4>
    <p>Orthopedic Surgeon</p>
  </div>
  <div class="team-member">
    <img src="https://randomuser.me/api/portraits/women/68.jpg" alt="Dr. Priya Singh">
    <h4>Dr. Priya Singh</h4>
    <p>Pediatrician</p>
  </div>
</div>

<h1>hello world</h1>


<%@include file="component/footer.jsp" %>
</body>
</html>