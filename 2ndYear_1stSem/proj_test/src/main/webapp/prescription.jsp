<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Prescription</title>
    <link href="./styles/Prescription.css" rel="stylesheet">
    <script src="./script/Prescription.js"></script>
</head>

<body>
    <div id="menu" align="left">
        <img src="./asserts/Profile.png" class="Profile">
        <br>
        <label class="Name">
            <center><b>Ashwin</b></center>
        </label><br><br>
        <hr>
        <ul>
            <li><a href="/HospitalManagementSystem/DoctorPortalServlet">Dashboard</a></li>
            <hr>
            <li><a href="/HospitalManagementSystem/Appointments">Appointments</a></li>
            <hr>
            <li><a href="prescription.jsp">Add Prescritption</a></li>
            <hr>
            <li><a href="Patient_record.jsp">Patient record</a></li>
            <hr><br>
            <center><a href=""><button class="Menbutton"><b>Logout</b></button></a></center>
        </ul>
    </div><br>
    <h1>
        <center><b>Prescription</b></center>
    </h1>
    <hr><br><br>
    <form method="post" action="AddPrescriptionServlet">
        <fieldset>
            <br>
            
            <label>Date :  <input type="date" class="dateInput" name="appointmentDate"></input></label>
            <br><br>
            <script>
	            function checkPatientID() {
	           	 // check if input is less than 3 or greater than 3
	           	 var value = document.getElementById("patientID").value;
	           	 if (value.length < 3 || value.length > 3) {
	           	   alert("Patient ID must be 3 digits");
	           	 } 
	           }
            </script>
            <label>Patient ID : <input type="text" name="Pat_ID" id="patientID" onchange="checkPatientID()"></input></label><br><br>
            
            <fieldset>
                <Label class="bigLabel">Medicine</Label><br>
                <hr>
                <table>
                    
                    <tr>
                        <th>Type</th>
                        <th>Medicine Name</th>
                        <th>MG/ML</th>
                        <th>Dose</th>
                        <th>Days</th>
                        <th></th>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td>
                            <select class="smallInput" name="MedType">
                                <option>Select</option>
                                <option value="Tonic">Tonic</option>
                                <option value="Tablet">Tablet</option>
                                <option value="Cream">Cream</option>
                            </select>
                        </td>
                        <td><input type="text" name="medName" value="--"></input></td>
                        <td><input type="number" class="DoseInp" name="MG" value=00 id="mg"></input></td>
                        <td><input type="number" class="DoseInp" name="dose" value=00 id="dose"></input></td>
                        <td><input type="number" class="DaysInp" name="days" value=00 id="day" onchange="checkInputs()"></input></td>
                    </tr>
                    <script>
                    	function checkInputs(){
                    		var mg = document.getElementById("mg").value;
                    		var dose = document.getElementById("dose").value;
                    		var day = document.getElementById("day").value;
                    		
                    		if(mg < 0){
                    			alert("Invalid mg");
                    		}
                    		if(dose < 0){
                    			alert("Invalid dosage");
                    		}
                    		if(day < 0){
                    			alert("Invalid days format");
                    		}
                    	}
                    </script>
                    <tr>
                        <td><br><button id="addBtn" class="submit2" onclick="onAddRow(event); disableButton();">Next appointment</button></td>
                    </tr>
                    <tbody>
                        
                    </tbody>
                    
                </table>
                
                <br><br>
                
                <label class="smallLabel"><b>Medicine Comments</b></label><br>
                <textarea cols="130" rows="3" name="comments" required></textarea><br><br>
                <label class="smallLabel"><b>Diagnosis</b></label><br>
                <textarea cols="130" rows="3" name="diagnosis" required></textarea><br><br>
                <script>
	            function enableButton(){
	                if(document.getElementById("treatment").value == null){
	                    document.getElementById("submitBtn").disabled = true;
	                }else{
	                    document.getElementById("submitBtn").disabled = false;
	                }
	               
	            }
            	</script>
                <label class="smallLabel"><b>Treatment</b></label><br>
                <textarea cols="130" rows="3" name="treatment" id="treatment" onchange="enableButton()" required></textarea><br><br>
            </fieldset><br><br>
            <p id="Hello"></p>
            
            <center>
                <button class="submit submit1" onclick="myFunction()" id="submitBtn" disabled="true">Submit</button>
                <button class="submit submit1">Cancel</button>
            </center>
        </fieldset>
    </form>

</body>

</html>