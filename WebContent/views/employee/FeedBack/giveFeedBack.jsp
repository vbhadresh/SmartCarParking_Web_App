 <head><title>Feedback</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Feedback</li>
            <li><span class="separator"></span>Give Feedback</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Feedback</h5>
                <h1>Give Feedback</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Give Feedback:</h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/FeedBack" method="post">
                    	<input type="hidden" name="mode" value="1">
                   	
                <p>
                            <label>Feedback Details</label>
               </p>
                   
	
	<p>
                            <label> Name</label>
                            
                            <span class="field">
                            <input type="text" name="Name" required="required" id="firstName" placeholder=" Name" class="input-medium"  />
                           
                           
                            </span>
                        
                        </p>
                       
                       <div class="par control-group">
                                <label class="control-label" for="email">Email</label>
                                
                                <span class="field"><input type="email" required="required" name="email" id="email" class="input-xlarge"  placeholder="eg:xyz@s.com" /></span>
                       
                         </div>
						
				
						
					<p>
                            <label>subject</label>
                            <span class="field">		
                            <input type="text" name="subject" id="FeedbackName" class="input-large" placeholder="subject" />
                            							
							</span>
					</p>
					
					
						<p>
							<label>Description </label> <span class="field"><textarea
									id="autoResizeTA" name="description" cols="80" rows="5"
									class="span5" style="resize: vertical; height: 100px;"
									placeholder="address Line2"></textarea></span>
						</p>
				
					<p class="stdformbutton">
                                <button class="btn btn-primary">Give Feedback </button>
                                <button type="reset" class="btn">Reset </button>
                            </p>
                    	
                   </form>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        