 <%@page import="java.util.Iterator"%>
<%@page import="vo.SlotsVO"%>
<%@page import="java.util.List"%>
<head><title>Slots</title></head>

 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
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
  	<style>
  	.parkingSlot{
  	line-height: 78px!IMPORTANT;
  	}
  	
  	
  	.parkingSlots-vertical{
			margin-bottom: 0px!IMPORTANT; 
			width: 78px!IMPORTANT; 	
			line-height: 40px!IMPORTANT;
  	}
  	</style>
  	
  	<script type="text/javascript">
  	function fn(){
  		alert("hi");
  	}
  	</script>
		<div class="maincontent">
            <div class="maincontentinner">
            
            <div class="widget">
            <h4 class="widgettitle">Booking</h4>
            <div class="widgetcontent">
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/PreBookingController_ImageProcessing" method="post">
                    	<input type="hidden" name="mode" value="1">
            
          		  <div>
          		  
          		  <%  
          		 
          		  
          		  List booked_ls = (List) session.getAttribute("obj_Booked");
          		 List preBooked_ls = (List) session.getAttribute("obj_preBooked");
          		  List ls = (List) session.getAttribute("obj_all");
          		  
          		  int size = ls.size();
          		  int adjustment = 0;
          		 SlotsVO slotsVO = null;
          		
                
                int flag = 0 ;
               
          		  %>
          		  
          		  
          		  
          		  
          		   <div class="btn-toolbar" style="margin-left:100px;">
                          
                         
                            <div class="btn-group">
                                <%   
                               
                                if(size < 4){
                                	adjustment = 4 -size;
                                }else{
                                	 adjustment = 0;
                                }
                                
                                for(int i = 0; i < 4 - adjustment ;i++){
                                	 slotsVO = (SlotsVO) ls.get(i);
                                %>
                                
                                
                                
                            
                                <button class="btn parkingSlot   <%
                                flag = 0;
                               Iterator  itr = booked_ls.iterator();
                  			  
                  			    while (itr.hasNext()) {
                  			    	SlotsVO boVo = (SlotsVO) itr.next();
                  			    	
                  			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                  			    		flag = 1;
                  			    	}
                  			    }
                  			    
                  			    
                  			    if(flag == 0){
                  			    	
                  			    	Iterator  preitr = preBooked_ls.iterator();
                        			  
                      			    while (preitr.hasNext()) {
                      			    	SlotsVO boVo = (SlotsVO) preitr.next();
                      			    	
                      			    	
                      			    	
                      			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                      			    		flag = 2;
                      			    	}
                      			    }
                  			    	
                  			    }
                                
                                if(flag == 1){ %> btn-danger <% }else if(flag == 2){ %> btn-success <% } %>" <% if(flag == 2 || flag == 1){ %> disabled="disabled" <% } %> name="slotID" value="<%=slotsVO.getSlotID() %>"><%=slotsVO.getSlotName() %></button>
                               
                              <% } //first 1-4 group %>
                           
                              
                            </div>
                           
                           
                           
                           
                            <div class="btn-group">
                                  <%  
                                  if(size < 8){
                                  	adjustment = 8 -size;
                                  }else{
                                  	 adjustment = 0;
                                  }
                                  
                                  for(int i = 4; i < 7 - adjustment ;i++){
                                	 slotsVO = (SlotsVO) ls.get(i);
                                %>
                                <button class="btn parkingSlot   <%
                                flag = 0;
                                Iterator itr = booked_ls.iterator();
                  			  
                  			    while (itr.hasNext()) {
                  			    	SlotsVO boVo = (SlotsVO) itr.next();
                  			    	
                  			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                  			    		flag = 1;
                  			    	}
                  			    }
                  			    
                  			    
	    					if(flag == 0){
                  			    	
                  			    	Iterator  preitr = preBooked_ls.iterator();
                        			  
                      			    while (preitr.hasNext()) {
                      			    	SlotsVO boVo = (SlotsVO) preitr.next();
                      			    	
                      			    	
                      			    	
                      			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                      			    		flag = 2;
                      			    	}
                      			    }
                  			    	
                  			    }
                                
                                if(flag == 1){ %> btn-danger <% }else if(flag == 2){ %> btn-success <% } %>" <% if(flag == 2 || flag == 1){ %> disabled="disabled" <% } %>  name="slotID" value="<%=slotsVO.getSlotID() %>"><%=slotsVO.getSlotName() %></button>
                               
                              <% } //first 5-7 group %>
                            </div>
        
        
        
        
        
        
        
        
        
                            <div class="btn-group">
                                 <%  
                                 if(size < 9){
                                   	adjustment = 9 -size;
                                   }else{
                                   	 adjustment = 0;
                                   }
                                 
                                 
                                 for(int i = 7; i < 8 - adjustment ;i++){
                                	 slotsVO = (SlotsVO) ls.get(i);
                                %>
                                <button class="btn parkingSlot   <%
                                flag = 0;
                                Iterator itr = booked_ls.iterator();
                  			  
                  			    while (itr.hasNext()) {
                  			    	SlotsVO boVo = (SlotsVO) itr.next();
                  			    	
                  			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                  			    		flag = 1;
                  			    	}
                  			    }
                  			    
	    					if(flag == 0){
                  			    	
                  			    	Iterator  preitr = preBooked_ls.iterator();
                        			  
                      			    while (preitr.hasNext()) {
                      			    	SlotsVO boVo = (SlotsVO) preitr.next();
                      			    	
                      			    	
                      			    	
                      			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                      			    		flag = 2;
                      			    	}
                      			    }
                  			    	
                  			    }
                                if(flag == 1){ %> btn-danger <% }else if(flag == 2){ %> btn-success <% } %>" <% if(flag == 2 || flag == 1){ %> disabled="disabled" <% } %> name="slotID" value="<%=slotsVO.getSlotID() %>"><%=slotsVO.getSlotName() %></button>
                               
                              <% } //first 8 group %>
                            </div>
                            
                            
                            
                        </div><!--btn-toolbar-->
                        
                        
                        
                        
                        
                        
                         <div class="btn-group btn-group-vertical">
                             <%   
                             if(size < 12){
                                	adjustment = 12 -size;
                                }else{
                                	 adjustment = 0;
                                }
                              
                             for(int i = 8; i < 11 - adjustment;i++){
                                	 slotsVO = (SlotsVO) ls.get(i);
                                %>
                                <button class="btn parkingSlots-vertical   <%
                                flag = 0;
                                Iterator itr = booked_ls.iterator();
                  			  
                  			    while (itr.hasNext()) {
                  			    	SlotsVO boVo = (SlotsVO) itr.next();
                  			    	
                  			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                  			    		flag = 1;
                  			    	}
                  			    }
                  			    
	    						if(flag == 0){
                  			    	
                  			    	Iterator  preitr = preBooked_ls.iterator();
                        			  
                      			    while (preitr.hasNext()) {
                      			    	SlotsVO boVo = (SlotsVO) preitr.next();
                      			    	
                      			    	
                      			    	
                      			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                      			    		flag = 2;
                      			    	}
                      			    }
                  			    	
                  			    }
                                if(flag == 1){ %> btn-danger <% }else if(flag == 2){ %> btn-success <% } %>" <% if(flag == 2 || flag == 1){ %> disabled="disabled" <% } %> name="slotID" value="<%=slotsVO.getSlotID() %>"><%=slotsVO.getSlotName() %></button>
                               
                              <% } //first 9 -11 group %>
                            
                        </div>
                        
          		    <div class="btn-toolbar" >
          		    
          		    <div>
          		    </div>
        
                            <div class="btn-group"  style="margin-left:100px;">
                                <%  
                                if(size < 16){
                                	adjustment = 16 -size;
                                }else{
                                	 adjustment = 0;
                                }
                                
                                
                                for(int i = 11; i < 15 - adjustment ;i++){
                                	 slotsVO = (SlotsVO) ls.get(i);
                                %>
                                <button class="btn parkingSlot   <%
                                flag = 0;
                                Iterator itr = booked_ls.iterator();
                  			  
                  			    while (itr.hasNext()) {
                  			    	SlotsVO boVo = (SlotsVO) itr.next();
                  			    	
                  			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                  			    		flag = 1;
                  			    	}
                  			    }
                  			    
	    					if(flag == 0){
                  			    	
                  			    	Iterator  preitr = preBooked_ls.iterator();
                        			  
                      			    while (preitr.hasNext()) {
                      			    	SlotsVO boVo = (SlotsVO) preitr.next();
                      			    	
                      			    	
                      			    	
                      			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                      			    		flag = 2;
                      			    	}
                      			    }
                  			    	
                  			    }
                                
                                if(flag == 1){ %> btn-danger <% }else if(flag == 2){ %> btn-success <% } %> " name="slotID" <% if(flag == 2 || flag == 1){ %> disabled="disabled" <% } %> value="<%=slotsVO.getSlotID() %>"><%=slotsVO.getSlotName() %></button>
                               
                              <% } //first 12-15 group %>
                            </div>
                            
                            
                            
                            <div class="btn-group">
                                <%  
                                
                                if(size < 18){
                                	adjustment = 18 -size;
                                }else{
                                	 adjustment = 0;
                                }
                                
                                for(int i = 15; i < 18 - adjustment;i++){
                                	 slotsVO = (SlotsVO) ls.get(i);
                                %>
                                <button class="btn parkingSlot   <%
                                flag = 0;
                                Iterator itr = booked_ls.iterator();
                  			  
                  			    while (itr.hasNext()) {
                  			    	SlotsVO boVo = (SlotsVO) itr.next();
                  			    	
                  			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                  			    		flag = 1;
                  			    	}
                  			    }
                  			    
	    					if(flag == 0){
                  			    	
                  			    	Iterator  preitr = preBooked_ls.iterator();
                        			  
                      			    while (preitr.hasNext()) {
                      			    	SlotsVO boVo = (SlotsVO) preitr.next();
                      			    	
                      			    	
                      			    	
                      			    	if(slotsVO.getSlotID() == boVo.getSlotID()){
                      			    		flag = 2;
                      			    	}
                      			    }
                  			    	
                  			    }
                                if(flag == 1){ %> btn-danger <% }else if(flag == 2){ %> btn-success <% } %> " name="slotID" <% if(flag != 0){ %> disabled="disabled" <% } %> value="<%=slotsVO.getSlotID() %>"><%=slotsVO.getSlotName() %></button>
                               
                              <% } //first 16-18 group %>
                            </div>
        
        
        
        
        
        
                        </div><!--btn-toolbar-->
                      
                      
                        <%   %>
          		  </div><!--  parking design ends here  -->
          		  </form>
                        
                        
                   </div>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        