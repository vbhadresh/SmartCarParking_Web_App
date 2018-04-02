 <head><title>Pre Booking</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Pre Booking</li>
            <li><span class="separator"></span>Select User</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Pre Booking</h5>
                <h1>Select User</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Select User </h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/PreBookingController_ImageProcessing" method="get">
                    	<input type="hidden" name="mode" value="6">
                   	
                <p>
                            <label>Take Picture</label>
               </p>
                               		
				 <p><label>Vehicle Image</label></p>
         		  <iframe src="<%=request.getContextPath() %>/backEnd/fileupload/fileUpload.jsp" width="100%" height="230"></iframe>
				
	
				
						    	
	
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
 
        