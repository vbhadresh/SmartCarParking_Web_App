 <%@include file="/WEB-INF/file/mst_user_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Home</li>
            
        </ul>   
 
  <div class="pageheader">
           
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
                <h5>Hello! <%=session.getAttribute("name") %>, </h5>
                <h1></h1>
            </div>
        </div><!--pageheader-->
        
        
        <div class="maincontent">
            <div class="maincontentinner">
                
             <div class="widgetbox box-inverse" >
                            <h4 class="widgettitle"> Booking<a class="close">X</a> <a class="minimize">-</a></h4>
                            <div class="widgetcontent" style="min-height: 600px;">

			<%  if(session.getAttribute("obj_bookingDetails") == null){ %>                            
				
				<p> Currently No bookings are done. </p>

			<% } %>
					<div class="tabs-left">
						<ul class="nav nav-tabs">
						<c:forEach items="${sessionScope.obj_bookingDetails}" var="record">
							<li ><a data-toggle="tab" href='#${record.bookingID}'>Get Direction at ${record.parkingID.parkingName }</a></li>
									
						</c:forEach>
						</ul>
						
						<div class="tab-content">
						
					
							
						<c:forEach items="${sessionScope.obj_bookingDetails}" var="record">
							<div id="${record.bookingID}" class="tab-pane">
								
								<p>Thank you for booking with us for your vehicle : ${record.vehicleID.numberOfVehicle} </p>
								
								<p> Kindly, follow below path for getting to designated parking slot </p>
								
								<img src="${pageContext.request.contextPath}/attachments/${record.slotID.attachmentID.path}" style="height:auto%;width:100%;max-width:300px;" alt="" />
								
								
								
							</div>
						</c:forEach>	
						
						

						</div>
						<!--tab-content-->
						
						
					</div>




				</div>
             </div>
                
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
<%@include file="/WEB-INF/file/mst_footer.jsp" %>       