 <head><title>Vehicle</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Vehicle</li>
            <li><span class="separator"></span>Add Vehicle</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Vehicle</h5>
                <h1>Add Vehicle</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Add Vehicle:</h4>
            <div class="widgetcontent">
             <c:forEach items="${sessionScope.obj}" var="record">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/VehicleController" method="post">
                    	<input type="hidden" name="mode" value="3">
                    	<input type="hidden" name="vehicleID" value="${record.vehicleID }">
                   	
                <p>
                            <label>Vehicle Details</label>
               </p>
                   
	
                       
                       <div class="par control-group">
                                <label class="control-label" for="email">Model </label>
                                
                                <span class="field"><input type="text" required="required"  name="model"  value="${record.model }" class="input-xlarge"  placeholder="eg:xyz@s.com" /></span>
                       
                         </div>
						
						 <p>
                              <label>Number of Vehicle </label>
                              <span class="field"><input type="text" required="required" name="numberOfVehicle" value="${record.numberOfVehicle }"   class="input-large"  placeholder="eg:KA 02 AD 2150" /></span>
                         </p>
                               		
					
						
				
					
				 	
	
					<p class="stdformbutton">
                                <button class="btn btn-primary">Update </button>
                                <button type="reset" class="btn">Reset </button>
                            </p>
                    	
                   </form>
                   </c:forEach>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        