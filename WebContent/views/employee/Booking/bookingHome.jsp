 <head><title> Booking</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span> Booking</li>
            <li><span class="separator"></span>Choose How you want to Book</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5> Booking</h5>
                <h1>Choose How you want to Book</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Choose How you want to Book </h4>
            <div class="widgetcontent">
                    	
                <p>
                            <label>Choose How you want to Book </label>
               </p>
                               		
				 <p>
                       <label>Options  </label>
                       <span class="field">
                            
                            <a class="btn" href="${pageContext.request.contextPath}/BookingController_ImageProcessing"><i class="iconsweets-like"></i> &nbsp; New Booking</a>	
                            	<a class="btn" href="<%=request.getContextPath() %>/BookingController"><i class="iconsweets-like"></i> &nbsp;New Booking Manual </a>
                            	<a class="btn"   href="<%=request.getContextPath() %>/PreBookingController?mode=5" ><i class="iconsweets-magnifying"></i> &nbsp; Choose from Pre Booking </a>
                            	
						</span>
					</p>  
						
				
						    	
	
				
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        