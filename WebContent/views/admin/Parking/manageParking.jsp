 <head><title>Parking</title></head>
 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Parking</li>
            <li><span class="separator"></span>Manage Parking</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Parking</h5>
                <h1>Manage Parking</h1>
            </div>
        </div><!--pageheader-->
        
		
		
		
		<div class="maincontent">
            <div class="maincontentinner">
            
      <a href="${pageContext.request.contextPath}/ParkingController" class="btn btn-info"><i class="iconfa-pencil"></i></a> Add Parking       
                <h4 class="widgettitle">Parking</h4>
                <table id="dyntable" class="table table-bordered responsive">
                    <colgroup>
                        <col class="con0" style="align: center; width: 4%" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        
                        <col class="con1" />
                    </colgroup>
                    <thead>
          
                        <tr>
                          	<th class="head0 nosort"><input type="checkbox" class="checkall" /></th>
                            <th class="head0">parkingName</th>
                            <th class="head1">Address</th>
                            <th class="head0">Commission</th>
                           
                            <th class="head1">Action</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                    
                    
                        
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					
 				
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                                   
           
                            <td>${record.parkingName}</td>
                            <td>${record.addressLine1 }, ${record.addressLine2 }, ${record.landmark } ,
                            ${record.pincode }, ${record.mapLat } - ${record.mapLon } </td>
                         <td>${record.commission}</td>
                            
                            
                            <td class="center">
                            <a href="<%=request.getContextPath() %>/SlotsController?id=${record.parkingID}" class="btn btn-info"><i class="icon-edit"></i>Manage Slots</a>
                            <a href="<%=request.getContextPath() %>/ParkingController?mode=2&id=${record.parkingID}" class="btn btn-info"><i class="icon-edit"></i></a>
                            <a href="<%=request.getContextPath() %>/ParkingController?mode=4&id=${record.parkingID}" class="btn btn-info"><i class="iconsweets-trashcan"></i></a>
                           
                           
                            <a href="<%=request.getContextPath() %>/ParkingWiseReportController?id=${record.parkingID}" class="btn btn-info"><i class="iconsweets-trashcan"></i>Get Report</a>
                            </td>
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 