 <head><title>Pre Booking</title></head>
 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Pre Booking</li>
            <li><span class="separator"></span>Manage Pre Booking</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Pre Booking</h5>
                <h1>Manage Pre Booking</h1>
            </div>
        </div><!--pageheader-->
        
		
		
		
		<div class="maincontent">
            <div class="maincontentinner">
            
      <a href="${pageContext.request.contextPath}/PreBookingController" class="btn btn-info"><i class="iconfa-pencil"></i></a> Register Pre Booking       
                <h4 class="widgettitle">User</h4>
                <table id="dyntable" class="table table-bordered responsive">
                    <colgroup>
                        <col class="con0" style="align: center; width: 4%" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                    </colgroup>
                    <thead>
                   
                        <tr>
                          	<th class="head0 nosort"><input type="checkbox" class="checkall" /></th>
                            <th class="head0">User Details </th>
                            <th class="head1">Slots </th>
                      <th class="head0"> Vehicle</th>
                           <th class="head0"> Booking Time </th>
                           <th class="head0"> Parking Time </th>
                           <th class="head0"> Extended Time </th>
                            <th class="head1">Action</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                    
                                           
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					
 				
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                           <td>${record.userID.userName} ( ${record.userID.personID.firstName}  ${record.userID.personID.lastName} ) </td>
                            <td>${record.slotID.slotName }</td>
                         <td>${record.vehicleID.model} - ${record.vehicleID.numberOfVehicle}</td>
		                         <td>${record.bookingTime }</td>
		                         <td>${record.parkingTime }</td>	
		                          <td>${record.extendedTime1 } - ${record.extendedTime2 }</td>					

                         <td class="center">
                              <c:set var="flag" value="0"></c:set>
                             <c:forEach items="${sessionScope.obj_booked}" var="recordBooked">
 					
 							 <c:if test="${record.preBookingID==recordBooked.preBookingID.preBookingID}">
                            		  <c:set var="flag" value="1"></c:set>
                              </c:if>
 								
 								 
                                
                                </c:forEach>
                                
                                <c:if test="${flag==0}">
                                <a href="<%=request.getContextPath() %>/BookingController?mode=6&id=${record.preBookingID}" class="btn btn-danger"><i class="icon-edit"></i> Confirm Booking</a>
                                </c:if>
                                <c:if test="${flag==1}">
                                <a href="#" class="btn  btn-success"> Booking Done</a>
                            </c:if>
                                
                            <a href="<%=request.getContextPath() %>/PreBookingController?mode=2&id=${record.preBookingID}" class="btn btn-info"><i class="icon-edit"></i></a>
                            <a href="<%=request.getContextPath() %>/PreBookingController?mode=4&id=${record.preBookingID}" class="btn btn-info"><i class="iconsweets-trashcan"></i></a>
                           
                           
                             
                            
                           
                            </td>
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 