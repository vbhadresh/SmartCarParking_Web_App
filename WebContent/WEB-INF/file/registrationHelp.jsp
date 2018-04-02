<script type="text/javascript" 	src="${pageContext.request.contextPath}/backEnd/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
    	
     
    	$("#AddDeceased").click(function(event) {  
    		 
    	
    	var $personType="Deceased";	 
    	var $caseID=<%=session.getAttribute("caseID") %>+" ";
        var $mode="registerPerson";
           
        $.get('<%=request.getContextPath()%>/CasePersonController',{caseID:$caseID,mode:$mode},function(responseJson) {   
        	   
        	   var $select = $(".state");
        	  
             
        	   $select.find('option').remove();                          
             
               $.each(responseJson, function(key, value) {      
            	   
            	   $('<option>').val(key).text(value).appendTo($select);      
                    });
            
           
        });
        });
    	
    
			
				
           
		
	});
</script>
