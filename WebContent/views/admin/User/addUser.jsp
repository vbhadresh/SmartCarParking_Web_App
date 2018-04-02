 <head><title>User</title></head>

 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>User</li>
            <li><span class="separator"></span>Add User</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>User</h5>
                <h1>Add User</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Add User:</h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/UserController" method="post">
                    	<input type="hidden" name="mode" value="1">
                   	
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
                            <label>User Type</label>
                            <span class="field">	
                                            <input type="radio" name = "userType" value = "3"/> Administrator 
                                            <input type="radio" name = "userType" value = "2"/> Employee
                                            <input type="radio" name = "userType" value = "1"/> User
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
 
        