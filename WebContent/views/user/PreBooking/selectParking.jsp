 <head><title>Pre Booking</title></head>

 <%@include file="/WEB-INF/file/mst_user_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Pre Booking</li>
            <li><span class="separator"></span>Select Parking</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Pre Booking</h5>
                <h1>Select Parking</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Select Parking </h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/RU_PreBookingController" method="get">
                    	<input type="hidden" name="mode" value="7">
                   	
                <p>
                            <label>Select Parking </label>
               </p>
                               		
				 <p>
                       <label>Parking </label>
                       <span class="field">
                            	<select name="parkingID" data-placeholder="eg: India" style="width:350px" class="chzn-select" tabindex="2">
                                  <option value=""></option> 
                                  
						<c:forEach items="${sessionScope.obj_all}" var="record">
                					<option value="${record.parkingID}">${record.parkingName} 
                					${record.addressLine1 }, ${record.addressLine2 }, ${record.landmark } ,
                            ${record.pincode }
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
 
        