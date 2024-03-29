 <head><title>Slots</title></head>

 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Slots</li>
            <li><span class="separator"></span>Add Slots</li>
        </ul>   
  <div class="pageheader">
            
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Slots</h5>
                <h1>Add Slots</h1>
            </div>
        </div><!--pageheader-->
  	
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Add Slots:</h4>
            <div class="widgetcontent">
             <c:forEach items="${sessionScope.obj}" var="record">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/SlotsController" method="post">
                    	<input type="hidden" name="mode" value="3">
                    	<input type="hidden" name="slotID" value="${record.slotID }">
                    	<input type="hidden" name="parkingID" value="${record.parkingID.parkingID }">
                   	
                <p>
                            <label>Slots Details</label>
               </p>
                               	
                              
					
					<p>
                            <label>Slots Name</label>
                            <span class="field">		
                            <input type="text" name="slotName" value="${record.slotName}"class="input-large" placeholder="Slot Name" />
							
							</span>
					</p>

  <div class="userloggedinfo">
                  
                        <img src="${pageContext.request.contextPath}/attachments/${record.attachmentID.path}" style="height:86px;width:86px;" alt="" />
                       
                        
                        </div>
         		  <iframe src="<%=request.getContextPath() %>/backEnd/fileupload/fileUpload.jsp" width="100%" height="230"></iframe>
				    	
	
						<p>
							<label>description </label> <span class="field"><textarea
									id="autoResizeTA" name="description" cols="80" rows="5"
									class="span5" style="resize: vertical; height: 100px;"
									placeholder="Description">${record.description }</textarea></span>
						</p>

					
	
					<p class="stdformbutton">
                                <button class="btn btn-primary">Update </button>
                                <button type="reset" class="btn">Reset </button>
                            </p>
                    	
                   </form>
                   </c:forEach>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        