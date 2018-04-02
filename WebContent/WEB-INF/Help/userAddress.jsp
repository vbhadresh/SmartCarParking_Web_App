	  <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 						
	 
	  <p><label> Address Details </label></p>
	<p>
	<label for="textarea1">Address Line 1</label>
	<textarea id="textarea1" cols="80" rows="5" name="${param.additional}addressLine1" required  placeholder="Placeholder Text"></textarea></p>
	<p>
	<label for="textarea2">Address Line 2</label>
	<textarea id="textarea2" cols="80" rows="5" name="${param.additional}addressLine2" required placeholder="Placeholder Text"></textarea></p>
	
	<p>	<label for="select1">Country</label>
	<select class="country" id="country" name="${param.additional}countryID" required >
	<option value="0" selected="selected" >Select Country</option>
                                  
						<c:forEach items="${sessionScope.country}" var="record">
                					<option value="${record.countryID}">${record.countryName}</option>      
						</c:forEach></select></p>

	<p>	<label for="select1">State</label>
	<select  name="${param.additional}stateID" id="state" class="state" required>
	<option value="0">Select State</option>
</select></p>
	
	<p>	<label for="select1">District</label>
	<select name="${param.additional}districtID" id="district" class="district" required>
	
                               <option value="0">Select District</option>
						 </select></p>
	
	<p>	<label for="select1">City</label>
	<select  name="${param.additional}cityID" id="city" class="city" required >
	<option value="0">Select City</option>      
						
</select>
	</p>
	
		<p>
	<label for="text1">Pincode</label>
	<input id="text1" type="text" name="${param.additional}pincode" placeholder="eg:080 2645764" required />
	</p>
	