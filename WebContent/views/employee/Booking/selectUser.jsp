 <head><title> Booking</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span> Booking</li>
            <li><span class="separator"></span>Select User</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5> Booking</h5>
                <h1>Select User</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Select User </h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/BookingController" method="get">
                    	<input type="hidden" name="mode" value="7">
                   	
                <p>
                            <label>Select User </label>
               </p>
                               		
				 <p>
                       <label>User </label>
                       <span class="field">
                            	<select name="userID" data-placeholder="eg: India" style="width:350px" class="chzn-select" tabindex="2">
                                  <option value=""></option> 
                                  
						<c:forEach items="${sessionScope.obj_all}" var="record">
                					<option value="${record.userID}">${record.userName} 
                					 -${record.personID.firstName } ${record.personID.lastName }
                					</option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  
						
				
						    	
	
					<p class="stdformbutton">
                                <button class="btn btn-primary">Select </button>
                                <button type="reset" class="btn">Reset </button>
                            </p>
                    	
                   </form>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        