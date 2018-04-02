                    	   
                         <p>
                            <label>Type of Place</label>
                            <span class="field">
                            	<select name="placeType" data-placeholder="Type of Place" style="width:350px" class="chzn-select" tabindex="2">
                                  <option value=""></option> 
                                  <option value="Hospital">Hospital</option>
                                  <option value="Residential Area">Residential Area</option> 
                                  <option value="Public Place">Public Place</option>
                                  <option value="Cross Road">Cross Road</option> 
                                  <option value="Railway Station">Railway Station</option> 
                                  <option value="Educational Institute">Educational Institute</option> 
								  <option value="Industrial Organization">Industrial Organization</option> 
								
								</select>
							</span>
						</p>
						
						 <p>
                            <label>From Time</label><span class="field input-append bootstrap-timepicker">
                           
				<input id="timepicker1" name="fromTime" required="required" type="text" class="input-small" />
				<span class="add-on"><i class="iconfa-time"></i></span>
			   
			    </span>
                        </p>
                 
                 <label>To Time</label><span class="field input-append bootstrap-timepicker">
                           
				<input id="timepicker2" name="toTime" required="required" type="text" class="input-small" />
				<span class="add-on"><i class="iconfa-time"></i></span>
			   
			    </span>
                        </p>

						<p>
							<label>Name of Place</label> <span class="field"><input
								type="text" name="nameOfPlace" required="required" id="firstname2"
								class="input-large" /></span>
						</p>
						
						<p>
							<label>Distance from Police Station</label> <span class="field"><input
								type="number" name="distanceFromPolice" required="required" id="firstname2"
								class="input-large" /></span>
						</p>
						
						<div class="par">
                            <label>From Date</label>
                            <span class="field">
                                 <input  type="text" id="datepicker" required="required" name="fromDate" class="input-medium" />
                            </span>
                        </div>
                        
                        <div class="par">
                            <label>To Date</label>
                            <span class="field">
                                 <input  type="text" id="datepicker1" required="required" name="toDate" class="input-medium" />
                            </span>
                        </div>
                        
                        
                         <%@include file="/WEB-INF/file/mst_date.jsp" %>