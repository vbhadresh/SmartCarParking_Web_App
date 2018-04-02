 <head><title>Booking Bill</title></head>
 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Booking Bill</li>
            <li><span class="separator"></span>Manage Booking Bill</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Booking Bill</h5>
                <h1>Manage Booking Bill</h1>
            </div>
        </div><!--pageheader-->
        
		
		
		
		<div class="maincontent">
            <div class="maincontentinner">
            
      <a href="${pageContext.request.contextPath}/PressReleaseController" class="btn btn-info"><i class="iconfa-pencil"></i></a> Add Booking Bill       
                <h4 class="widgettitle">Booking Bill</h4>
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
                            <th class="head0">subject</th>
                            <th class="head1">Description</th>
                      <th class="head0">Attachment</th>
                           
                            <th class="head1">Action</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                    
                     <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                            <td>demo</td>
                            <td>demo</td>
                         <td>demo</td>
                            
                            
                            <td class="center">
                            <a href="<%=request.getContextPath() %>/PressReleaseController?mode=2&id=" class="btn btn-info"><i class="icon-edit"></i></a>
                            <a href="<%=request.getContextPath() %>/PressReleaseController?mode=4&id=" class="btn btn-info"><i class="iconsweets-trashcan"></i></a>
                            </td>
                            
                        </tr>
                        
                        
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					<c:set var="document" value="${record[1] }" ></c:set>
 			<c:set var="recordm" value="${record[0] }" ></c:set>
 				
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                            <td>${recordm.subject}</td>
                            <td>${recordm.description }</td>
                         <td>${document.path }</td>
                            
                            
                            <td class="center">
                            <a href="<%=request.getContextPath() %>/PressReleaseController?mode=2&id=${recordm.pressID}" class="btn btn-info"><i class="icon-edit"></i></a>
                            <a href="<%=request.getContextPath() %>/PressReleaseController?mode=4&id=${recordm.pressID}" class="btn btn-info"><i class="iconsweets-trashcan"></i></a>
                            </td>
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 