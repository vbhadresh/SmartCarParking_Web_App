 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 						
 			
 			<p><label> Address Details </label></p>
 
                   <p>
                     <label>Address Line 1</label>
                     <span class="field"><textarea cols="80" rows="5" class="span6" name="${param.additional}addressLine1"></textarea></span>
                   </p>
                         
                    <p>
                       <label>Address Line 2</label>
                       <span class="field"><textarea cols="80" rows="5" class="span6" name="${param.additional}addressLine2"></textarea></span>
                    </p>
                        
                     <p>
                       <label>Country</label>
                       <span class="field">
                            	<select name="${param.additional}countryID" class="uniformselect">
                                 
                                  
						<c:forEach items="${sessionScope.country}" var="record">
                					<option value="${record.countryID}">${record.countryName}</option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  
					 
	       			 <p>
                       <label>State</label>
                       <span class="field">
                            	<select name="${param.additional}stateID" class="uniformselect">
                                  
                                  
						<c:forEach items="${sessionScope.state}" var="record">
                					<option value="${record.stateID}">${record.stateName}</option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  
						
					<p>
                       <label>District</label>
                       <span class="field">
                            	<select name="${param.additional}districtID" class="uniformselect">
                                  
                                  
						<c:forEach items="${sessionScope.district}" var="record">
                					<option value="${record.districtID}">${record.districtName}</option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  
				   
				   
				  <p>
                       <label>City</label>
                       <span class="field">
                            	<select name="${param.additional}cityID" class="uniformselect">
                                  
                                  
						<c:forEach items="${sessionScope.city}" var="record">
                					<option value="${record.cityID}">${record.cityName}</option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  
			
				   <p>
                      <label>Pincode</label>
                      <span class="field"><input type="text" name="${param.additional}pincode" id="firstname2" class="input-large"  placeholder="eg:380015"/></span>
                   </p>
					
				
                               
                             