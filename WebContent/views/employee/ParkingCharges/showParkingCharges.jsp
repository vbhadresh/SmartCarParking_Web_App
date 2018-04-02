 <head><title>Parking Charges</title></head>
 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Parking Charges</li>
            <li><span class="separator"></span>View Parking Charges</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Parking Charges</h5>
                <h1>View Parking Charges</h1>
            </div>
        </div><!--pageheader-->
        
		
	
		
		<div class="maincontent">
            <div class="maincontentinner">
            
             
                <h4 class="widgettitle">Parking Charges</h4>
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
                            <th class="head0">Lower Limit </th>
                            <th class="head1">Upper Limit </th>
                              <th class="head0">Charges</th>
                             <th class="head1">Action</th>
                        </tr>
                       
                    </thead>
                    <tbody>
                    
                   
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                            <td>${record.lowerLimit} hrs </td>
                            <td> ${record.upperLimit} hrs </td>
                            <td>Rs ${record.charge }</td>
                             <td class="center">
                             
                               
                                
                            <a href="<%=request.getContextPath() %>/ParkingChargeController?mode=2&id=${record.parkingChargeID}" class="btn btn-info"><i class="icon-edit"></i></a>
                            <a href="<%=request.getContextPath() %>/ParkingChargeController?mode=4&id=${record.parkingChargeID}" class="btn btn-info"><i class="iconsweets-trashcan"></i></a>
                           
                           
                             
                            
                           
                            </td>                           
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 