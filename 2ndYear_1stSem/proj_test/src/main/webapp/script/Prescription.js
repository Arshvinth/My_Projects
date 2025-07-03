

function onAddRow(event) {
    tbodyEl = document.querySelector("tbody");
    event.preventDefault();
    console.log('method');
    tbodyEl.innerHTML += `
        <br><tr>
                    <center><label>Next Appointment Date :<input type="date"></input></label></center>
        </tr>`;
}

function disableButton(){
    if(document.getElementById("addBtn").clicked){
        document.getElementById("addBtn").disabled=false;
    }
    else{
        document.getElementById("addBtn").disabled=true;
    }
}

function myFunction() {
  alert("message successfully sent");
}

function checkPatientID() {
	 // check if input is less than 3 or greater than 3
	 var value = document.getElementById("patientID").value;
	 if (value.length < 3 || value.length > 3) {
	   alert("Patient ID must be 3 digits");
	 } 
}

