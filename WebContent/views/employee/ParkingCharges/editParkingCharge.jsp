 <head><title>Parking</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Parking</li>
            <li><span class="separator"></span>Edit Parking Charges</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Parking </h5>
                <h1>Edit Parking Charges</h1>
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
            <h4 class="widgettitle">Edit Parking Charges:</h4>
            <div class="widgetcontent">
            
             <c:forEach items="${sessionScope.obj}" var="record">
                <form class="stdform stdform2" name="parkingCharge" action="<%=request.getContextPath() %>/ParkingChargeController" method="post">
                    	<input type="hidden" name="mode" value="3">
                    	<input type="hidden" name="parkingID" value="${record.parkingID.parkingID}">
                        <input type="hidden" name="parkingChargeID" value="${record.parkingChargeID}">
                   	
                <p>
                            <label>Parking Charges Details</label>
               </p>
                               		
					
					
					<p>
                            <label>Range in Hours</label>
                            <span class="field">
                            
                         
                            <input type="number" name="lowerLimit" class="input-small" value="${record.lowerLimit}" placeholder="eg 3" />
							
                            --
                           
                             <input type="number" name="upperLimit" class="input-small" value="${record.upperLimit}" placeholder="eg 3"  onblur="checkForm(this);"  />
                             
                   
                            </span>
                        </p>
					
					<p>
                            <label>Charge</label>
                            <span class="field">		
                            <input type="number" name="charge" class="input-large" value="${record.charge}" placeholder="eg 3" />
							
							</span>
					</p>
					
					
					
					<p class="stdformbutton">
                                <button class="btn btn-primary">Submit </button>
                                <button type="reset" class="btn">Reset </button>
                            </p>
                    	
                   </form>
                   </c:forEach>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        