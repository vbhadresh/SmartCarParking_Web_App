
                               		
				<p>
                       <label>Police Station </label>
                       <span class="field">
                            	<select name="${param.additional}policeStationID" class="uniformselect">
                                 
                 <option value="${param.policeStationID}">${param.policeStationName}  </option>      
                                 
                                  
						<c:forEach items="${sessionScope.policeStation}" var="record">
                					<option value="${record.policeStationID}">${record.beatCode} ${record.policeStationName}  </option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  