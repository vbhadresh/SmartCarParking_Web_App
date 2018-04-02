 <head><title>User</title></head>
 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>User</li>
            <li><span class="separator"></span>Manage User</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>User</h5>
                <h1>Manage User</h1>
            </div>
        </div><!--pageheader-->
        
		
		
		
		<div class="maincontent">
            <div class="maincontentinner">
            
      <a href="${pageContext.request.contextPath}/UserController" class="btn btn-info"><i class="iconfa-pencil"></i></a> Add User       
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
                            <th class="head0">User Name </th>
                            <th class="head1">Name </th>
                      <th class="head0">Mobile Number </th>
                         <th class="head0">Profile Picture </th>
                       
                            <th class="head1">Action</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                    
                                           
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                            <td> ${record.userName}</td>
                            <td>${record.personID.firstName } ${record.personID.lastName }</td>
                         <td>${record.personID.mobileNumber }</td>
                             <td> 
                        <img src="${pageContext.request.contextPath}/attachments/${record.attachmentID.path }" style="height:86px;width:86px;" alt="" />
                    			  
                    		
                       </td>
                            
                            <td class="center">
                             <c:if test="${record.userType==2}">
                             
                             <c:set var="flag" value="0"></c:set>
                             <c:set var="parkingName" value=""></c:set>
                             
                             
                             <c:forEach items="${sessionScope.eList}" var="recordEmp">
                              <c:if test="${record.userID==recordEmp.userID.userID}">
                            		  <c:set var="flag" value="1"></c:set>
                            		<c:set var="parkingName" value=" ${recordEmp.parkingID.parkingName}"></c:set>
                              </c:if>
                            </c:forEach>
                            
                             <c:if test="${flag==0}">
                               <a href="<%=request.getContextPath() %>/UserController?mode=6&id=${record.userID}" class="btn btn-danger "><i class="icon-edit"></i> Allot Parking</a>
                            </c:if>
                             <c:if test="${flag==1}">
                                <a href="#" class="btn btn-success"><i class="icon-right"></i> ${parkingName}</a>
                            </c:if>
                              </c:if>
                            <a href="<%=request.getContextPath() %>/UserController?mode=2&id=${record.userID}" class="btn btn-info"><i class="icon-edit"></i></a>
                            <a href="<%=request.getContextPath() %>/UserController?mode=4&id=${record.userID}" class="btn btn-info"><i class="iconsweets-trashcan"></i></a>
                           
                           
                             
                            
                           
                            </td>
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 