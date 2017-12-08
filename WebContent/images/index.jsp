<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>

#background-image {
  position: fixed;
  background-size: cover;
  background-repeat: no-repeat;
  height: 100%;
  width: 100%;
  background-size: 1500px 650px;
  background-repeat: no-repeat;
  overflow-x:hidden;
  -webkit-filter: blur(5px); /* Safari 6.0 - 9.0 */
  filter: blur(5px);


  z-index: 1;

  display: block;
  background-image: url("images/homeback.jpg")  no-repeat center center fixed;
  background-image:blur(5px);

  -webkit-filter: opacity(30%); /* Safari */
  filter: opacity(30%);

/*  webkit-filter: blur(5px);
  -moz-filter: blur(5px);
  -o-filter: blur(5px);
  -ms-filter: blur(5px);
  filter: blur(5px); */
}


body{
    /*background-image: url("images/doctorimg.jpg") no-repeat center center fixed;
    background-size: cover;*/
    background: url("images/homeback.jpg") no-repeat center center fixed;
    background-size: cover;
    background-repeat: no-repeat;
    height: 100%;
    width: 100%;
    background-size: 1500px 650px;
    background-repeat: no-repeat;
     overflow-x:hidden;


}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}



/* Set a style for all buttons */
button{
  background-color: Transparent;
  background-repeat:no-repeat;
  border: none;
  cursor:pointer;
  overflow: hidden;
  outline:none;
  color:white;
  border: none;
  border-radius: 2px;
  border-color:white;

  /*  background-color: rgb(51, 204, 204);
    color: white;
    padding: 14px 30px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    border-radius: 2px; */

}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
0.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
    from {transform: scale(0)}
    to {transform: scale(1)}
}



.bounce {
 height: 50px;
 overflow: hidden;
 position: relative;
 backgroun: yellow;
 color: #5190d0;
 font-size: 40px;
 font-family: Lato;
  font-style:oblique;
}
.bounce p {
 position: absolute;
 width: 100%;
 height: 100%;
 margin: 0;
 line-height: 50px;
 text-align: center;
 margin-top: 10px;
 /* Starting position */
 -moz-transform:translateX(50%);
 -webkit-transform:translateX(50%);
 transform:translateX(50%);
 /* Apply animation to this element */
 -moz-animation: bouncing-text 10s linear infinite alternate;
 -webkit-animation: bouncing-text 10s linear infinite alternate;
 animation: bouncing-text 10s linear infinite alternate;
}
/* Move it (define the animation) */
@-moz-keyframes bouncing-text {
 0%   { -moz-transform: translateX(100%); }
 100% { -moz-transform: translateX(-100%); }
}
@-webkit-keyframes bouncing-text {
 0%   { -webkit-transform: translateX(50%); }
 100% { -webkit-transform: translateX(-50%); }
}
@keyframes bouncing-text {
 0%   {
 -moz-transform: translateX(50%); /* Browser bug fix */
 -webkit-transform: translateX(50%); /* Browser bug fix */
 transform: translateX(50%);
 }
 100% {
 -moz-transform: translateX(-50%); /* Browser bug fix */
 -webkit-transform: translateX(-50%); /* Browser bug fix */
 transform: translateX(-50%);
 }
}




/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}

.figure {

  float: center;
  margin: 0;
  text-align: center;
  padding: 0;
  position: absolute;
  color:#cc4c4;
  display: inline;
  margin-top:10%;
  margin-left:40%;
  cursor:pointer;
}

.figure1 {

  float: center;
  margin: 0;
  text-align: center;
  padding: 0;
  position: absolute;
  display: inline;
  color:black;
  margin-top:10%;
  margin-left:25%;
  cursor:pointer;
}

.figure2 {

  float: center;
  margin: 0;
  text-align: center;
  padding: 0;
  position: absolute;
  display: inline;
  color:black;
  margin-top:10%;
  margin-left:55%;
  cursor:pointer;
  border-radius: 50%;
}


#twitter1{
  width: 25%;
  float: center;
  margin: 0;
  text-align: center;
  padding: 0;
  position: absolute;
  display: inline;
  color:black;
  margin-top:5%;
  margin-left:10%;
  margin-buttom:5%;
  cursor:pointer;
}
img {
  border-radius: 50%;
}
.desc {
  padding: 5px;
  text-align: center;
  color:#38cfd88c;
}

</style>
<body  class="container">
<div id="background-imag">

<div class="bounce">
  <p>Hospital Management</p>
</div>

<div>
<div class="figure" onclick="location.href = 'doctorlogin'"><img src ="images/doctoricon1.png">
    <div class="desc"><h2>Doctor</h2></div>
</div>
<div class="figure1" onclick="location.href = 'patientlogin'"><img src ="images/patienticon.jpg">
    <div class="desc"><h2>Patient</h2></div>
</div>
<div class="figure2" onclick="location.href = 'technicianlogin'"><img src ="images/adminlogo2.png">
    <div class="desc"><h2>Technician</h2></div>
</div>

</div>

</div>






<!--
<div onclick="location.href = 'patientlogin.html'" class="glyphicons-user" style=" margin-top: 10px; margin-left: 20px; font-size:68px; rgb(60, 13, 236, 0.4); cursor:pointer"></div>
<button  onclick="location.href = 'doctorlogin.html'" style="width:auto; margin-top:15%; margin-left:20%;">Doctor</button>
<button  onclick="location.href = 'adminlogin.html'" style="width:auto; margin-top:15%; margin-left:20%;">Admin</button>

<button class="button1" onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Patient Login</button>

<button class="button1" onclick="document.getElementById('id03').style.display='block'" style="width:auto; margin-top:15%; margin-left:20%;">Doctor Register</button>
<button class="button1" onclick="document.getElementById('id04').style.display='block'" style="width:auto;">Doctor Login</button> -->


</body>
</html>
