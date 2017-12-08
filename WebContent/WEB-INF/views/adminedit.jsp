<html>
<head>
<script type="text/javascript" src="js/table_script.js"></script>
</head>
<style>
body {
  background-image: url("images/doctorform.jpg");
  background-repeat: no-repeat;
  height: 100%;
  width: 100%;
  background-size: 1500px 650px;
  background-repeat: no-repeat;
  //  overflow:hidden;
   overflow-x:hidden;

}

</style>


<body>
</br>
<center>
<div>
<h1  style="color:#0e7eaa; font-family: Lato;  font-style:italic; font-size:40px; text-shadow: 1px 1px 1px rgba(0,0,0,0.004);"> Patient's Appointment List</h1>
</div>
</center>
</br>
</br>
<div id="wrapper">
<table align='center' cellspacing=2 cellpadding=5 id="data_table" border=2>
<tr>
<th>Name</th>
<th>Reg Id</th>
<th>Age</th>
<th><input type="search" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name"></th>
</tr>

<tr id="row1">
<td id="name_row1">Ankit</td>
<td id="country_row1">101</td>
<td id="age_row1">20</td>
<td>
<input type="button" id="edit_button1" value="Edit" class="edit" onclick="edit_row('1')">
<input type="button" id="save_button1" value="Save" class="save" onclick="save_row('1')">
<input type="button" id="medication1" value="Medication Details" class="details"  onclick="details_row('1')">
</td>
</tr>

<tr id="row2">
<td id="name_row2">Shawn</td>
<td id="country_row2">102</td>
<td id="age_row2">26</td>
<td>
<input type="button" id="edit_button2" value="Edit" class="edit" onclick="edit_row('2')">
<input type="button" id="save_button2" value="Save" class="save" onclick="save_row('2')">
<input type="button" id="medication2" value="Medication Details" class="details"  onclick="details_row('2')">
</td>
</tr>

<tr id="row3">
<td id="name_row3">Rahul</td>
<td id="country_row3">103</td>
<td id="age_row3">19</td>
<td>
<input type="button" id="edit_button3" value="Edit" class="edit" onclick="edit_row('3')">
<input type="button" id="save_button3" value="Save" class="save" onclick="save_row('3')">
<input type="button" id="medication3" value="Medication Details" class="details"  onclick="details_row('3')">
</td>
</tr>

<!-- <tr>
<td><input type="text" id="new_name"></td>
<td><input type="text" id="new_country"></td>
<td><input type="text" id="new_age"></td>
 <td><input type="button" class="add" onclick="add_row();" value="Add Row"></td>
</tr>  -->

</table>
</div>


<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("data_table");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>




</body>
</html>


