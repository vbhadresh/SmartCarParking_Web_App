 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 						
 			
 			
 
                   <p>
                     <label>Address Line 1</label>
                     <span class="field"><textarea cols="80" rows="5" class="span6" required="required" name="${param.additional}addressLine1"></textarea></span>
                   </p>
                         
                    <p>
                       <label>Address Line 2</label>
                       <span class="field"><textarea cols="80" rows="5" class="span6" required="required" name="${param.additional}addressLine2"></textarea></span>
                    </p>
                        
                     <p>
                       <label>Country</label>
                       <span class="field">
                            	<select name="${param.additional}countryID" id="country" class="uniformselect country">
                                 
                                 <option value="0" selected="selected" >Select Country</option>
                                  
						<c:forEach items="${sessionScope.country}" var="record">
                					<option value="${record.countryID}">${record.countryName}</option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  
					 
	       			 <p>
                       <label>State</label>
                       <span class="field">
                            	<select name="${param.additional}stateID" id="state" class="uniformselect state">
                                  
                             <option value="0">Select State</option>
						 
								</select>
						</span>
					</p>  
						
					<p>
                       <label>District</label>
                       <span class="field">
                            	<select name="${param.additional}districtID" id="district" class="uniformselect district">
                               
                               <option value="0">Select District</option>
						 
								</select>
						</span>
					</p>  
				   
				   
				  <p>
                       <label>City</label>
                       <span class="field">
                            	<select name="${param.additional}cityID" id="city" class="uniformselect city">
                                  
                                  
						
                					<option value="0">Select City</option>      
						
						
						 
								</select>
						</span>
					</p>  
			
				   <p>
                      <label>Pincode</label>
                      <span class="field"><input type="text" title="Number should be 6 digits    "  required="required" name="${param.additional}pincode" id="firstname2" class="input-large"  placeholder="eg:380015"/></span>
                   </p>
					
				
                               
                             