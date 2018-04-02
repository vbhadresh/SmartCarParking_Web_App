<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
				
 			
 			
 			
 					<p>
                            <label> Name</label>
                            
                            <span class="field">
                            <input type="text" name="${param.additional}firstName" placeholder="First Name" value="${param.firstName}" class="input-medium"  />
                            <input type="text" name="${param.additional}middleName" placeholder="Middle Name" value="${param.middleName}" class="input-medium" />
                            <input type="text" name="${param.additional}lastName"placeholder="Last Name"  value="${param.lastName}" class="input-medium"  />
                            </span>
                        
                        </p>
                               
                               
                               
                        <p>
                            <label>Sex</label>
                            <span class="field">
                            <select name="${param.additional}gender" class="uniformselect">
                            	<option selected="selected" value="${param.gender}">Male</option>
                                <option selected="selected" value="${param.gender}">female</option>
                                </select>
                            </span>
                        </p>    
                               
                               
                        <div class="par">
                            <label>Date of Birth</label>
                            <span class="field">
                                 <input  type="text" id ="datepicker" name="${param.additional}dob" value="${param.dob}" class="input-medium" />
                            </span>
                        </div> 
                         
                         <p>
                            <label>Occupation</label>
                            <span class="field">
                            	<select name="${param.additional}occupationID"  class="uniformselect">
                            	
                            	<option selected="selected" value="${param.occupationID}"">${param.occupationName}</option>   
                            	
                            	
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
                                     
                                     <option selected="selected" value="${param.qualificationID}">${param.qualificationName}</option>
                                             
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
                            <option selected="selected" value="${param.categoryID}">${param.categoryName}</option>
                                 
								<c:forEach items="${sessionScope.category}" var="record">
                					<option value="${param.categoryID}">${param.categoryName}</option>      
								</c:forEach>
						
								</select>
							</span>
						</p>
						
						<p>
							<label>Caste </label>
								<span class="field">
								
						<input type="radio" name="${param.additional}casteID" value="${param.casteID}" checked="checked" /> ${param.casteName} &nbsp; &nbsp;
                            	           
						<c:forEach items="${sessionScope.caste}" var="record">
                		<input type="radio" name="${param.additional}casteID" value="${record.casteID}" /> ${record.casteName} &nbsp; &nbsp;
                					
						</c:forEach>
                            	
                            	                               
                            </span>
                        </p>
                        
                        <p>
						     <label>Marital Status</label>
						     <span class="field">
						     <c:if test="${param.maritalStatus == 0}">
                            	<input type="radio" name="${param.additional}maritalStatus" value="0" checked="checked" /> Unmarried &nbsp; &nbsp;
                            	<input type="radio" name="${param.additional}maritalStatus" value="1" /> Married &nbsp; &nbsp;
                               </c:if>
                               <c:if test="${param.maritalStatus == 1}">
                            	<input type="radio" name="${param.additional}maritalStatus" value="0"  /> Unmarried &nbsp; &nbsp;
                            	<input type="radio" name="${param.additional}maritalStatus" value="1" checked="checked"/> Married &nbsp; &nbsp;
                               </c:if>
                            </span>
                        </p>
                             