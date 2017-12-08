<!DOCTYPE html>
<html>
<head>
<style>

body {
    background-image: url("images/doctorform.jpg");
    background-repeat: no-repeat;
    height: 100%;
    width: 100%;
    background-size: 1500px 650px;
    background-repeat: no-repeat;
    overflow-x:hidden;

}
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 80%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.5s;
    animation-name: animatetop;
    animation-duration: 0.5s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-400px; opacity:0}
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-400px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #5cb85c;
    color: white;
}

.modal-body {padding: 2px 16px;}



input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
.buttonn {
    background-color: #8bd8e8;
    color: white;
    padding: 14px 30px 16px 0px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    border-radius: 2px;
    cursor: pointer;
}
.button-size{
  button-size:50%;
  width:20%;
  margin-top: 5%;
  margin-left: 40%;
}

.boxempty {
    width: 100%;
    height: 50%;
    background:  #7ed6de;
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


/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */




/* Add Zoom Animation */

.searchtext{
  color:rgb(9, 168, 195);
  font-family: "initial";
  font-size: 20px;

}

#search {
  float: right;
  margin-top: 9px;
  width: 250px;
}

.search {
  padding: 5px 0;
  width: 230px;
  height: 28px;
  position: relative;
  left: 570px;
  float: left;
  line-height: 22px;
  align-items: center;

}

.search input {
  position: absolute;
  width: 0px;
  float: Left;
  margin-left: 210px;
  -webkit-transition: all 0.7s ease-in-out;
  -moz-transition: all 0.7s ease-in-out;
  -o-transition: all 0.7s ease-in-out;
  transition: all 0.7s ease-in-out;
  height: 20px;
  line-height: 20px;
  padding: 0 11px 0 2px;
  border-radius:1px;
  align-items: center;
}

.search:hover input, .search input:focus {
  width: 200px;
  margin-left: 0px;
}

.btn {
  height: 30px;
  position: absolute;
  right: 0;
  top: 5px;
  border-radius:4px;
  background-color:#86cbe6;
}






</style>
</head>
<body>

</br>
</br>
 <div style="color:#0e7eaa; font-family: oblique; text-shadow: 1px 1px 1px rgba(0,0,0,0.004);">
 <h2>Hi ${name}</h2></div>
<div style="color:#0e7eaa; font-family: Lato; font-style:oblique; font-size:20px; text-shadow: 1px 1px 1px rgba(0,0,0,0.004);"><center><h1>Welcome doctor</h1></center></div>




<!--<div>
  <form>
    <div class="searchtext">
      <center><h3>Enter Number to get Info</h3></center>

      <div class="search">
        <input type="text" class="form-control input-sm" maxlength="64" placeholder="Enter Number" />
        <button type="submit" class="btn btn-primary btn-sm">Search</button>
      </div>
    </div>
  </form>
</div>  -->





<!-- Trigger/Open The Modal -->
<div class="boxempt">
<div class="button-size">
<!--<button class="buttonn" id="myBtn">Get Appointment</button> -->
<button  class="buttonn" onclick="location.href = 'editsamp'">Get Patient's List</button>

</div>
</div>


<!-- The Modal -->
<div id="myModal" class="modal">

  <form class="modal-content animate" action="/action_page.php">
    <div style="color: rgb(122, 221, 239);">
      <span onclick="document.getElementById('myModel').style.display='none'" class="close" title="Close Modal">&times;</span>
    <center> <h1>Appointment Form</h1> </center>
    </div>

    <div class="container">
      <label><b>Full Name</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label><b>Registration Number</b></label>
      <input type="text" placeholder="Enter RegistrationNumber" name="regname" required>

      <label><b>Doctor Name</b></label>
      <input type="text" placeholder="Enter Doctorname" name="dname" required>

      <label><b>Date</b></label>
      <input type="date" placeholder="Enter Username" name="uname" required>

        <label><b>Time</b></label>
      <input type="time" placeholder="Enter Doctorname" name="dname" required>
      <button  class="buttonn" type="submit">Submit</button>

    </div>

    <div class="container" style="background-color:#f1f1f1">
    </div>
  </form>
</div>

<!-- <script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == moda) {
        modal.style.display = "none";
    }
}
</script> -->

</body>
</html>
