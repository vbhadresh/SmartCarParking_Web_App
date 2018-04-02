 <head><title>User</title></head>

 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>User</li>
            <li><span class="separator"></span>Edit My Profile</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Change my Details </h5>
                <h1>Edit my Profile</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle"> Change Credentials :</h4>
            <div class="widgetcontent">
            	 <c:forEach items="${sessionScope.obj}" var="record">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/UserController" method="post">
                    	<input type="hidden" name="mode" value="3a">
                        <input type="hidden" name="userID" value="${record.userID}">
                        <input type="hidden" name="personID" value="${record.personID.personID}">
                   	
                <p>
                            <label>User Details</label>
               </p>
                   

	<p>
                            <label> Name</label>
                            
                            <span class="field">
                            <input type="text" name="firstName" required="required" id="firstName" placeholder="First Name" value="${record.personID.firstName}" class="input-medium"  />
                           
                            <input type="text" name="lastName"  required="required" id="lastName" placeholder="Last Name" value="${record.personID.lastName}"  class="input-medium"  />
                            </span>
                        
                        </p>
                       
                       <div class="par control-group">
                                <label class="control-label" for="email">Email</label>
                                
                                <span class="field"><input type="email" required="required" name="email" id="email" class="input-xlarge"  value="${record.personID.email}" placeholder="eg:xyz@s.com" /></span>
                       
                         </div>
						
						 <p>
                              <label>Mobile No</label>
                              <span class="field"><input type="text" id="mobileNumber" required="required" name="mobileNumber" value="${record.personID.mobileNumber}" id="firstname2" title="Number should start with 0,7,8,9 and max 10 digit   " placeholder="eg:079 123321"  class="input-large"  placeholder="eg:9878768761" /></span>
                         </p>
                               		
					
						
					<p>
                            <label>User Name</label>
                            <span class="field">		
                            <input type="text" name="userName" id="userName" class="input-large" placeholder="User Name" value="${record.userName}" />
                            <a href="" class="btn btn-info btn-rounded"> Generate <i class="iconsweets-refresh"></i></a>							
							</span>
					</p>
					
					<p>
                            <label>Password</label>
                            <span class="field">		
                            <input type="password" name="password" id="password" class="input-large" placeholder="********"   value="${record.password}"/>
                            <a href="" class="btn btn-info btn-rounded"> Generate<i class="iconsweets-refresh"></i> </a>
							</span>
							
					</p>
					
					<input type="hidden" name="userType" value="${record.userType}"/>
					
						
						 <p><label>Profile Picture</label></p>
						 
						   <div class="userloggedinfo">
                  
                        <img src="${pageContext.request.contextPath}/attachments/${record.attachmentID.path}" style="height:86px;width:86px;" alt="" />
                       
                        
                        </div>
         		  <iframe src="<%=request.getContextPath() %>/backEnd/fileupload/fileUpload.jsp" width="100%" height="230"></iframe>
				    	
	
					<p class="stdformbutton">
                                <button class="btn btn-primary">Update My Details </button>
                                <button type="reset" class="btn">Reset </button>
                            </p>
                    	
                   </form>
                   </c:forEach>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        