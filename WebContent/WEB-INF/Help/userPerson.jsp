<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<script>
	$(function() {
		$( "#datepicker" ).datepicker();
	});
	</script>
	
	<p><label for="text2">Name</label>
	<input id="text2" required  type="text" name="${param.additional}firstName" placeholder="First Name" style = "width:15%;" />
	<input id="text2" required type="text" name="${param.additional}middleName" placeholder="Middle Name" style = "width:15%;"/>
	<input id="text2" required type="text" name="${param.additional}lastName" placeholder="Last Name"style = "width:15%;" />
	</p>

<p>
					<label for="name">Gender</label>
                                        <span class="mySpan">
                                        <input type="radio" name="${param.additional}gender" value="0" checked="checked" > Male 
                                        <input type="radio" name="${param.additional}gender" value="1"> Female
                                        </span>
				</p>
	
                         
	<p>
					<label for="date">Date of Birth</label><input type="text" name="${param.additional}dob" id="datepicker" required class="myDate">
				</p>
										
	<p>	<label for="select1">Occupation</label>
	<select id="select1" name="${param.additional}occupationID" required >
	<c:forEach items="${sessionScope.occupation}" var="record">
                					<option value="${record.occupationID}">${record.occupationName}</option>      
						</c:forEach>
	</select></p>
	
	<p>	<label for="select1" >Qualification</label>
	<select id="select1" required name="${param.additional}qualificationID">
	<c:forEach items="${sessionScope.qualification}" var="record">
                					<option value="${record.qualificationID}">${record.qualificationName}</option>      
						</c:forEach>
	</select></p>
	
	<p>	<label for="select1">Category</label>
	<select id="select1" required name="${param.additional}categoryID">
	<c:forEach items="${sessionScope.category}" var="record">
                					<option value="${record.categoryID}">${record.categoryName}</option>      
								</c:forEach>
	</select></p>
	
<p>	
	<label>Religion</label>
	<span class="mySpan">
	<c:forEach items="${sessionScope.caste}" var="record">
                <input type="radio" name="${param.additional}casteID" value="${record.casteID}" /> ${record.casteName} &nbsp; &nbsp;
                					
						</c:forEach></span>
	</p>
		<p>	<label for="name">Marital Status</label>
                                        <span class="mySpan">
                                        <input type="radio" name="${param.additional}maritalStatus" value="0"> Married 
                                        <input type="radio" name="${param.additional}maritalStatus" value="1" checked="checked" > Unmarried
                                        </span>
				</p>