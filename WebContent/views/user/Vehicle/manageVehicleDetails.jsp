 <head><title>Vehicle</title></head>
 <%@include file="/WEB-INF/file/mst_user_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>User</li>
            <li><span class="separator"></span>Manage Vehicle</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>User</h5>
                <h1>Manage Vehicle</h1>
            </div>
        </div><!--pageheader-->
        
		
		
		
		<div class="maincontent">
            <div class="maincontentinner">
            
      <a href="${pageContext.request.contextPath}/RU_VehicleController" class="btn btn-info"><i class="iconfa-pencil"></i></a> Add Vehicle       
                <h4 class="widgettitle">User</h4>
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
                            <th class="head0">User Name </th>
                            <th class="head1">Name </th>
                      <th class="head0">Vehicle Details  </th>
                           
                            <th class="head1">Action</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                    
                                           
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					
 				
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                            <td>${record.userID.userName}</td>
                            <td>${record.userID.personID.firstName } ${record.userID.personID.lastName }</td>
                         <td>${record.model} - ${record.numberOfVehicle }</td>
                            
                            
                            <td class="center">
                             
                                                         
                            <a href="<%=request.getContextPath() %>/RU_VehicleController?mode=2&id=${record.vehicleID}" class="btn btn-info"><i class="icon-edit"></i></a>
                            <a href="<%=request.getContextPath() %>/RU_VehicleController?mode=4&id=${record.vehicleID}" class="btn btn-info"><i class="iconsweets-trashcan"></i></a>
                           
                           
                             
                            
                           
                            </td>
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 