 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 						
 			
 			
 
                   <p>
                     <label>Address Line 1</label>
                     <span class="field"><textarea cols="80" rows="5" class="span6"  name="${param.additional}addressLine1">${param.addressLine1}</textarea></span>
                   </p>
                         
                    <p>
                       <label>Address Line 2</label>
                       <span class="field"><textarea cols="80" rows="5" class="span6"  name="${param.additional}addressLine2">${param.addressLine2}
                       </textarea></span>
                    </p>
                        
                     <p>
                       <label>Country</label>
                       <span class="field">
                            	<select name="${param.additional}countryID" id="country" class="uniformselect country">
                                 
                                 <option value = "${param.countryID}" selected="selected" >${param.countryName}</option>
                                  
					
						
						 
								</select>
						</span>
					</p>  
					 
	       			 <p>
                       <label>State</label>
                       <span class="field">
                            	<select name="${param.additional}stateID" id="state" class="uniformselect state">
                                  
                             <option value="${param.stateID}">${param.stateName}</option>
						 
								</select>
						</span>
					</p>  
						
					<p>
                       <label>District</label>
                       <span class="field">
                            	<select name="${param.additional}districtID" id="district" class="uniformselect district">
                               
                               <option value="${param.districtID}">${param.districtName} </option>
						 
								</select>
						</span>
					</p>  
				   
				   
				  <p>
                       <label>City</label>
                       <span class="field">
                            	<select name="${param.additional}cityID" id="city" class="uniformselect city">
                                  
                                  
						
                					<option value="${param.cityID}">${param.cityName}</option>      
						
						
						 
								</select>
						</span>
					</p>  
			
				   <p>
                      <label>Pincode</label>
                      <span class="field"><input type="text" value="${param.pincode}" name="${param.additional}pincode" id="firstname2" class="input-large"  placeholder="eg:380015"/></span>
                   </p>
					
				
                               
                             