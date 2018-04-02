 
 <script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery.smartWizard.min.js"></script>
 <script type="text/javascript">
jQuery(document).ready(function(){
    
    // Smart Wizard 	
    jQuery('#wizard').smartWizard({onFinish: onFinishCallback});
    jQuery('#wizard2').smartWizard({onFinish: onFinishCallback});
    jQuery('#wizard3').smartWizard({onFinish: onFinishCallback});
    jQuery('#wizard4').smartWizard({onFinish: onFinishCallback});
    function onFinishCallback(){
        alert('Finish Clicked');
    } 
			
    jQuery('select, input:checkbox').uniform();
    
});
</script>