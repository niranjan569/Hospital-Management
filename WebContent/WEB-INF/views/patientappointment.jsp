
<!DOCTYPE html>
<html>
<head>
<style>

body {
  /*  background-image: url("images/apptmt.jpg");
    background-repeat: no-repeat; */
    background: url("images/apptmt.jpg") no-repeat center center fixed;
    background-size: cover;
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
button {
    background-color: #64c7e2;
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



</style>
</head>
<body>

</br>
</br>
 <div style="color: rgb(122, 221, 239); font-family: Times New Roman">
 <h2>Hello ${name}</h2></div>
<div style="color:rgb(159, 223, 243); font-family: Lato; font-style:oblique; font-size:20px; text-shadow: 1px 1px 1px rgba(0,0,0,0.004);"><center><h1>Welcome To Medical Sevices</h1></center></div>



<!-- Trigger/Open The Modal -->
<div class="boxempty">
<div class="button-size">
<button id="myBtn">Get Appointment</button>
</div>
</div>


<!-- The Modal -->
<div id="myModal" class="modal">

  <form class="modal-content animate" action="/action_page.php">
    <div style="color: rgb(122, 221, 239); font-family: Lato; font-style:oblique; font-size:15px; text-shadow: 1px 1px 1px rgba(0,0,0,0.004);">
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
      <button type="submit">Submit</button>

    </div>

    <div class="container" style="background-color:#f1f1f1">
    </div>
  </form>
</div>

<script>
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
</script>

</body>
</html>
