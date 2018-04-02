 <head><title>Vehicle</title></head>

 <%@include file="/WEB-INF/file/mst_user_header.jsp" %>
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
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/RU_VehicleController" method="post">
                    	<input type="hidden" name="mode" value="1">
                   	
                <p>
                            <label>Vehicle Details</label>
               </p>
                   
	
                       
                       <div class="par control-group">
                                <label class="control-label" for="email">Model </label>
                                
                                <span class="field"><input type="text" required="required" name="model" class="input-xlarge"  placeholder="eg:xyz@s.com" /></span>
                       
                         </div>
						
						 <p>
                              <label>Number of Vehicle </label>
                              <span class="field"><input type="text" required="required" name="numberOfVehicle" id="firstname2"   class="input-large"  placeholder="eg:KA 02 AD 2150" /></span>
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
 
        