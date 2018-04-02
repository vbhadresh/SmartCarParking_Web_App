 <head><title>Pre Booking</title></head>

 <%@include file="/WEB-INF/file/mst_user_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Pre Booking</li>
            <li><span class="separator"></span>Select Vehicle</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Pre Booking</h5>
                <h1>Select Vehicle</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Select Vehicle </h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/RU_PreBookingController" method="get">
                    	<input type="hidden" name="mode" value="6">
                   	
                <p>
                            <label>Select Vehicle </label>
               </p>
                               		
				 <p>
                       <label>Vehicle </label>
                       <span class="field">
                            	<select name="vehicleID" data-placeholder="eg: Maruti: KA-12-AS-2344" style="width:350px" class="chzn-select" tabindex="2">
                                  <option value=""></option> 
                                  
						<c:forEach items="${sessionScope.obj_all}" var="record">
                					<option value="${record.vehicleID}">${record.model} - ${record.numberOfVehicle} 
                					
                					</option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  
						
				
						    	
	
					<p class="stdformbutton">
                                <button class="btn btn-primary">Select </button>
                                <button type="reset" class="btn">Reset </button>
                            </p>
                    	
                   </form>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        