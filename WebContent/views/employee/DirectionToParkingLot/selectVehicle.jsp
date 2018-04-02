 <head><title>Direction To Parking Lot</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Direction To Parking Lot</li>
            <li><span class="separator"></span>Select Vehicle</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Direction To Parking Lot</h5>
                <h1>Select Vehicle</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Select Vehicle </h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/views/employee/DirectionToParkingLot/direction.jsp" method="get">
                    	<input type="hidden" name="mode" value="6">
                   	
                <p>
                            <label>Select Vehicle </label>
               </p>
                               		
				 <p>
                       <label>Vehicle </label>
                       <span class="field">
                            	<select name="bookingID" data-placeholder="eg: Maruti: KA-12-AS-2344" style="width:350px" class="chzn-select" tabindex="2" required="required">
                                  <option value=""></option> 
                                  
						<c:forEach items="${sessionScope.obj_all}" var="record">
                					<option value="${record.bookingID}">${record.vehicleID.model} - ${record.vehicleID.numberOfVehicle} 
                					
                					</option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  
						
				
						    	
	
					<p class="stdformbutton">
                                <button class="btn btn-primary">Submit </button>
                                <button type="reset" class="btn">Reset </button>
                            </p>
                    	
                   </form>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        