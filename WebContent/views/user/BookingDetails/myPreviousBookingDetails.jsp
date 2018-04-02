 <head><title>Previous Booking Details</title></head>
 <%@include file="/WEB-INF/file/mst_user_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Previous Booking Details</li>
            
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Previous Booking Details</h5>
                <h1>My Previous Booking Details</h1>
            </div>
        </div><!--pageheader-->
        
		
		
		
		<div class="maincontent">
            <div class="maincontentinner">
            
             
                <h4 class="widgettitle">Previous Booking Details</h4>
                <table id="dyntable" class="table table-bordered responsive">
                    <colgroup>
                        <col class="con0" style="align: center; width: 4%" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        
                        <col class="con0" />
                    </colgroup>
                    <thead>
                 <tr>
                          	<th class="head0 nosort"><input type="checkbox" class="checkall" /></th>
                            <th class="head0">vehicle </th>
                            <th class="head1">Timing Details </th>
                            <th class="head0">Parking   </th>
                           
                            <th class="head1">Payments</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                
                       
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 				        <tr class="gradeX">
								<td class="aligncenter"><span class="center"> <input
										type="checkbox" />
								</span></td>
								<td>${record.vehicleID.model}
									${record.vehicleID.numberOfVehicle}</td>
								<td>${record.inTime } to ${record.outTime }</td>
								<td>${record.parkingID.parkingName }</td>
								<td>${record.paymentInitial} and ${record.paymentFinal}</td>




							</tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 