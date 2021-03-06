
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
  <meta charset="UTF-8">
  <title>Material Login Form</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

  <link rel="stylesheet" href="css/style.css">


</head>

<style>
[type="radio"]:checked,
[type="radio"]:not(:checked) {
  position: absolute;
  left: -9999px;
}
[type="radio"]:checked + label,
[type="radio"]:not(:checked) + label
{
  position: relative;
  padding-left: 25px;
  cursor: pointer;
  line-height: 20px;
  display: inline-block;
  color: #666;
}
[type="radio"]:checked + label:before,
[type="radio"]:not(:checked) + label:before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  width: 18px;
  height: 18px;
  border: 1px solid #ddd;
  border-radius: 100%;
  background: #fff;
}
[type="radio"]:checked + label:after,
[type="radio"]:not(:checked) + label:after {
  content: '';
  width: 12px;
  height: 12px;
  background: #5cd0c6;
  position: absolute;
  top: 4px;
  left: 4px;
  border-radius: 100%;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
}
[type="radio"]:not(:checked) + label:after {
  opacity: 0;
  -webkit-transform: scale(0);
  transform: scale(0);
}
[type="radio"]:checked + label:after {
  opacity: 1;
  -webkit-transform: scale(1);
  transform: scale(1);
}




</style>



<body>

  <div id="background-image"></div>


  <!-- Mixins-->
  <!-- Pen Title-->
  <div class="container">
    <div class="card"></div>
    <div class="card">
      <h1 class="title">Login</h1>
      <form id="login" action="validate" method="post">
      <input type="hidden" value="doctor" name="identifier">
        <div class="input-container">
          <input type="text" id="email" name="email" required="required"/>
          <label for="email">Email</label>
          <div class="bar"></div>
        </div>
        <div class="input-container">
          <input type="password" id="password" name="password" required="required"/>
          <label for="password">Password</label>
          <div class="bar"></div>
        </div>
        <div class="button-container">
          <button><span>Submit</span></button>
        </div>
        <div class="footer"><a href="patientlogin.html">Forgot your password?</a></div>
      </form>
    </div>
    </br></br>
    <div style="color:#7c57d2; font-family:arial; font-size:20px;"><h2>${msg}</h2></div>
  </br></br>
    <div class="card alt">
      <div class="toggle"></div>
      <h1 class="title">Register
        <div class="close"></div>
      </h1>
      <form id="doctor" action="addDoctor" method="post">
        <div class="input-container">
          <input type="text" id="firstName" name="firstName" required="required"/>
          <label for="firstName">First Name</label>
          <div class="bar"></div>
        </div>
        <div class="input-container">
          <input type="text" id="middleName" name="middleName" required="required"/>
          <label for="middleName">Middle Name</label>
          <div class="bar"></div>
        </div>
        <div class="input-container">
          <input type="text" id="lastName" name="lastName" required="required"/>
          <label for="lastName">Last Name</label>
          <div class="bar"></div>
        </div>
        <div class="input-container">
          <input type="text" id="email" name="email" required="required"/>
          <label for="email">Email</label>
          <div class="bar"></div>
        </div>
        <div class="input-container">
          <input type="password" id="password" name="password" required="required"/>
          <label for="password">Password</label>
          <div class="bar"></div>
        </div>
        <div class="input-container">
          <input type="password" id="repassword" name="repassword" required="required"/>
          <label for="repassword">Repeat Password</label>
          <div class="bar"></div>
        </div>

        <div class="input-container">
          <input type="radio" id="test1" name="sex" value="Male"/>
          <label for="test1">Male</label>
          <input type="radio" id="test2" name="sex" value="Female">
          <label for="test2">Female</label>
          <div class="bar"></div>
        </div>

        <div class="input-container">
          <input type="date" id="dateOfBirth" name="dateOfBirth" required="required"/>
          <div class="bar"></div>
        </div>

        <div class="input-container">
          <input type="text" id="phoneNo" name="phoneNo" required="required"/>
          <label for="phoneanumber">Phone Number</label>
          <div class="bar"></div>
        </div>
        <div class="input-container">
          <input type="text" id="specialization" name="specialization" required="required"/>
          <label for="specialization">Specialization</label>
          <div class="bar"></div>
        </div>
        <div class="button-container">
          <button><span>Register</span></button>
        </div>
      </form>
    </div>
  </div>
  <!--<a id="portfolio" href="http://andytran.me/" title="View my portfolio!"><i class="fa fa-link"></i></a>
  <a id="codepen" href="https://codepen.io/andytran/" title="Follow me!"><i class="fa fa-codepen"></i></a> CodePen-->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  <script  src="js/index.js"></script>

</body>
</html>
