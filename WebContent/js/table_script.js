function edit_row(no)
{
 document.getElementById("edit_button"+no).style.display="none";
 document.getElementById("save_button"+no).style.display="block";
	
 var id=document.getElementById("id_row"+no);
 var name=document.getElementById("name_row"+no);
 var dob=document.getElementById("dob_row"+no);
	
 var id_data=id.innerHTML;
 var name_data=name.innerHTML;
 var dob_data=dob.innerHTML;
	
 id.innerHTML="<input type='text' id='id_text"+no+"' value='"+id_data+"' readonly>";
 name.innerHTML="<input type='text' id='name_text"+no+"' value='"+name_data+"'>";
 dob.innerHTML="<input type='text' id='dob_text"+no+"' value='"+dob_data+"'>";
}

function save_row(no)
{
 var id_val=document.getElementById("id_text"+no).value;
 var name_val=document.getElementById("name_text"+no).value;
 var dob_val=document.getElementById("dob_text"+no).value;
//
// document.getElementById("name_row"+no).innerHTML=name_val;
// document.getElementById("country_row"+no).innerHTML=country_val;
// document.getElementById("age_row"+no).innerHTML=age_val;
// 
 document.getElementById("edit_button"+no).style.display="block";
 document.getElementById("save_button"+no).style.display="none";
 

 location.href="updatePatient?id="+id_val+"&firstName="+name_val+"&dateOfBirth="+dob_val;
 
}

/*function delete_row(no)
{
 document.getElementById("row"+no+"").outerHTML="";
}

function add_row()
{
 var new_name=document.getElementById("new_name").value;
 var new_country=document.getElementById("new_country").value;
 var new_age=document.getElementById("new_age").value;
	
 var table=document.getElementById("data_table");
 var table_len=(table.rows.length)-1;
 var row = table.insertRow(table_len).outerHTML="<tr id='row"+table_len+"'><td id='name_row"+table_len+"'>"+new_name+"</td><td id='country_row"+table_len+"'>"+new_country+"</td><td id='age_row"+table_len+"'>"+new_age+"</td><td><input type='button' id='edit_button"+table_len+"' value='Edit' class='edit' onclick='edit_row("+table_len+")'> <input type='button' id='save_button"+table_len+"' value='Save' class='save' onclick='save_row("+table_len+")'> <input type='button' value='Delete' class='delete' onclick='delete_row("+table_len+")'></td></tr>";

 document.getElementById("new_name").value="";
 document.getElementById("new_country").value="";
 document.getElementById("new_age").value="";
}*/