 <head><title>Parking</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Parking</li>
            <li><span class="separator"></span>Add Parking Charges</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Parking </h5>
                <h1>Add Parking Charges</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            
            <script type="text/javascript">
            function checkForm(form)
            {
            
              if(parkingCharge.lowerLimit.value != "" && parseInt(parkingCharge.upperLimit.value) <  parseInt(parkingCharge.lowerLimit.value) ) {
            
                  alert("Error: Upper Limit should be higher");
                  parkingCharge.upperLimit.focus();
            
              } 
            
            
            }

            </script>
            
            <div class="widget">
            <h4 class="widgettitle">Add Parking Charges:</h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" name="parkingCharge" action="<%=request.getContextPath() %>/ParkingChargeController" method="post">
                    	<input type="hidden" name="mode" value="1">
                   	
                <p>
                            <label>Parking Charges Details</label>
               </p>
                               		
					
					
					<p>
                            <label>Range in Hours</label>
                            <span class="field">
                            
                         
                            <select name="lowerLimit" class="uniformselect">
                            	<option value="0">Zero</option>
                               <option value="1"> One hours</option>
                                <option value="2">Two hours</option>
                                <option value="3">Three hours</option>
                                <option value="4">Four hours</option>
                                <option value="5">Five hours</option>
                                <option value="6">Six hours</option>
                                <option value="7">Seven hours</option>
                                <option value="8">Eight hours</option>
                                <option value="9">Nine hours</option>
                                <option value="10">Ten hours</option>
                                <option value="11">Eleven hours</option>
                                
                            </select>
                            --
                           
                            <select name="upperLimit" class="uniformselect" onblur="checkForm(this);" >
                            	<option value="1"> One hours</option>
                                <option value="2">Two hours</option>
                                <option value="3">Three hours</option>
                                <option value="4">Four hours</option>
                                <option value="5">Five hours</option>
                                <option value="6">Six hours</option>
                                <option value="7">Seven hours</option>
                                <option value="8">Eight hours</option>
                                <option value="9">Nine hours</option>
                                <option value="10">Ten hours</option>
                                <option value="11">Eleven hours</option>
                                <option value="12">Twelve hours</option>
                              
                            </select>
                            </span>
                        </p>
					
					<p>
                            <label>Charge</label>
                            <span class="field">		
                            <input type="number" name="charge" class="input-large" placeholder="eg 3" />
							
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
 
        