 <head><title>Parking</title></head>

 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Parking</li>
            <li><span class="separator"></span>Add Parking</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Parking</h5>
                <h1>Add Parking</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Add Parking:</h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/UserController" method="post">
                    	<input type="hidden" name="mode" value="7">
                    	<input type="hidden" name="userID" value="${sessionScope.userEmployeeID}">
                   	
                   	
                <p>
                            <label>Parking List </label>
               </p>
                   
	
	          <p>
                       <label>Parking </label>
                       <span class="field">
                            	<select name="parkingID" data-placeholder="eg: India" style="width:350px" class="chzn-select" tabindex="2">
                                  <option value=""></option> 
                                  
						<c:forEach items="${sessionScope.obj_all}" var="record">
                					<option value="${record.parkingID}">${record.parkingName}</option>      
						</c:forEach>
						
						 
								</select>
						</span>
					</p>  
					
						    	
	
					<p class="stdformbutton">
                                <button class="btn btn-primary">Allocate </button>
                                <button type="reset" class="btn">Reset </button>
                            </p>
                    	
                   </form>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        