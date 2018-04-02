 <head><title>Pre Booking</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Pre booking</li>
            <li><span class="separator"></span>Register New User</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Pre Booking</h5>
                <h1>Register User</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Register New User:</h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/PreBookingController_ImageProcessing" method="post">
                    	<input type="hidden" name="mode" value="8">
                   	
                <p>
                            <label>User Details</label>
               </p>
                   
	
	<p>
                            <label> Name</label>
                            
                            <span class="field">
                            <input type="text" name="firstName" required="required" id="firstName" placeholder="First Name" class="input-medium"  />
                           
                            <input type="text" name="lastName"  required="required" id="lastName" placeholder="Last Name"   class="input-medium"  />
                            </span>
                        
                        </p>
                       
                       <div class="par control-group">
                                <label class="control-label" for="email">Email</label>
                                
                                <span class="field"><input type="email" required="required" name="email" id="email" class="input-xlarge"  placeholder="eg:xyz@s.com" /></span>
                       
                         </div>
						
						 <p>
                              <label>Mobile No</label>
                              <span class="field"><input type="text" id="mobileNumber" required="required" name="mobileNumber" id="firstname2" title="Number should start with 0,7,8,9 and max 10 digit   " placeholder="eg:079 123321"  class="input-large"  placeholder="eg:9878768761" /></span>
                         </p>
                               		
					
						
					<p>
                            <label>User Name</label>
                            <span class="field">		
                            <input type="text" name="userName" id="userName" class="input-large" placeholder="User Name" />
                            <a href="" class="btn btn-info btn-rounded"> Generate <i class="iconsweets-refresh"></i></a>							
							</span>
					</p>
					
					<p>
                            <label>Password</label>
                            <span class="field">		
                            <input type="password" name="password" id="password" class="input-large" placeholder="********" />
                            <a href="" class="btn btn-info btn-rounded"> Generate<i class="iconsweets-refresh"></i> </a>
							</span>
							
					</p>
					
				 	 <p><label>Profile Picture</label></p>
         		  <iframe src="<%=request.getContextPath() %>/backEnd/fileupload/fileUpload.jsp" width="100%" height="230"></iframe>
				      	
                   	
                <p>
                            <label>Vehicle Details</label>
               </p>
                   
	
                       
                       <div class="par control-group">
                                <label class="control-label" for="email">Model </label>
                                
                                <span class="field"><input type="text" required="required" name="model" class="input-xlarge"  placeholder="eg:xyz@s.com" /></span>
                       
                         </div>
						
					
						
				
	
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
 
        