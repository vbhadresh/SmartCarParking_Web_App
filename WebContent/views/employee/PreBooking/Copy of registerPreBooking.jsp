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
                <form class="stdform stdform2" action="<%=request.getContextPath() %>/PreBookingController" method="post">
                    	<input type="hidden" name="mode" value="1">
            
          		  <div>
          		  
          		  
          		   <div class="btn-toolbar" style="margin-left:100px;">
                            <div class="btn-group">
                            <c:forEach begin="0" end="3" step="1" var="count"> 
                               
                                <button class="btn parkingSlot " name="slotID" value="${sessionScope.obj_all[count].slotID }">Slot ${count +1 }</button>
                               
                                
                              </c:forEach>
                              
                            </div>
                            
                            <div class="btn-group">
                                <button class="btn parkingSlot">Slot 5</button>
                                <button class="btn parkingSlot ">Slot 6</button>
                                <button class="btn parkingSlot">Slot 7</button>
                            </div>
        
                            <div class="btn-group">
                                <button class="btn parkingSlot">Slot 8</button>
                            </div>
                        </div><!--btn-toolbar-->
                        
                        
                         <div class="btn-group btn-group-vertical">
                            <button class="btn parkingSlots-vertical  ">Slot 9</button>
                            <button class="btn parkingSlots-vertical">Slot 10</button>
                            <button class="btn parkingSlots-vertical">Slot 11</button>
                        </div>
                        
          		    <div class="btn-toolbar" >
          		    
          		    <div>
          		    </div>
                            <div class="btn-group"  style="margin-left:100px;">
                                <button class="btn parkingSlot">Slot 12</button>
                                <button class="btn parkingSlot">Slot 13</button>
                                <button class="btn parkingSlot">Slot 14</button>
                                <button class="btn parkingSlot">Slot 15</button>
                            </div>
                            
                            <div class="btn-group">
                                <button class="btn parkingSlot">Slot 16</button>
                                <button class="btn parkingSlot"> Slot 17</button>
                                <button class="btn parkingSlot">Slot 18</button>
                            </div>
        
                        </div><!--btn-toolbar-->
                        
          		  </div>
          		  </form>
                        
                        
                   </div>
              	</div>
          	</div>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
        