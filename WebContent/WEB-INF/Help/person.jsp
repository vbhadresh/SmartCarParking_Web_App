<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 				
 			
 			
 		
 		
 	<script type="text/javascript" 	src="${pageContext.request.contextPath}/backEnd/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" 	src="${pageContext.request.contextPath}/frontEnd/js/jquery.validate.min.js"></script>
 
<script type="text/javascript">
$(document).ready(function() {
 
 $("#uniqueIdenficationNumber").change(function(event) {  

	 var $unqNumber=$('#uniqueIdenficationNumber').val();

	  
	 $('#unqResult').find('span').remove();

$.get('<%=request.getContextPath() %>/IdentityChecker',{unqNumber:$unqNumber},function(responseJson) {   
	   
	$("#unqResult").append("<span style='color:red;'>"+responseJson.result+"</span>");
	
});


 });
});
</script>		
 					<p>
                            <label> Name</label>
                            
                            <span class="field">
                            <input type="text" name="${param.additional}firstName" required="required" id="firstName" placeholder="First Name" class="input-medium"  />
                            <input type="text" name="${param.additional}middleName" required="required" placeholder="Middle Name"  class="input-medium" />
                            <input type="text" name="${param.additional}lastName"  required="required" id="lastName" placeholder="Last Name"   class="input-medium"  />
                            </span>
                        
                        </p>
                               
                        <p>
                            <label> Unique Identification Number</label>
                            
                            <span  class="field">
                            <input type="text" name="${param.additional}uniqueIdenficationNumber" required="required" id="uniqueIdenficationNumber" placeholder="eg: GJ-2014-04-0010" class="input-medium"  />
                           
                            </span>
                        
                        </p>
                        <p id="unqResult" ></p>       
                               
                        <p>
                            <label>Gender</label>
                            <span class="field">
                            <select name="${param.additional}gender" class="uniformselect">
                            	<option selected="selected" value="1">Male</option>
                                <option value="0">female</option>
                                </select>
                            </span>
                        </p>    
                               
                               
                        <div class="par">
                            <label>Date of Birth</label>
                            <span class="field">
                                 <input  type="text" id="datepicker" required="required" name="${param.additional}dob" class="input-medium" />
                            </span>
                        </div> 
                         
                         <p>
                            <label>Occupation</label>
                            <span class="field">
                            	<select name="${param.additional}occupationID"  class="uniformselect">
                             <c:forEach items="${sessionScope.occupation}" var="record">
                					<option value="${record.occupationID}">${record.occupationName}</option>      
						</c:forEach>
								</select>
							</span>
						</p>
						
						<p>
                            <label>Qualification</label>
                            <span class="field">
                            	<select name="${param.additional}qualificationID"  class="uniformselect">
                                             
						<c:forEach items="${sessionScope.qualification}" var="record">
                					<option value="${record.qualificationID}">${record.qualificationName}</option>      
						</c:forEach>
								</select>
							</span>
						</p>
						
						<p>
                            <label>Category</label>
                            <span class="field">
                            	<select name="${param.additional}categoryID" class="uniformselect">
                                  
								<c:forEach items="${sessionScope.category}" var="record">
                					<option value="${record.categoryID}">${record.categoryName}</option>      
								</c:forEach>
						
								</select>
							</span>
						</p>
						
						<p>
							<label>Religion </label>
								<span class="field">
								
								            
						<c:forEach items="${sessionScope.caste}" var="record">
                <input type="radio" name="${param.additional}casteID" value="${record.casteID}" /> ${record.casteName} &nbsp; &nbsp;
                					
						</c:forEach>
                            	
                            	                               
                            </span>
                        </p>
                        
                        <p>
						     <label>Marital Status</label>
						     <span class="field">
                            	<input type="radio" name="${param.additional}maritalStatus" value="0" checked="checked" /> Unmarried &nbsp; &nbsp;
                            	<input type="radio" name="${param.additional}maritalStatus" value="1"  /> Married &nbsp; &nbsp;
                               
                            </span>
                        </p>
                             