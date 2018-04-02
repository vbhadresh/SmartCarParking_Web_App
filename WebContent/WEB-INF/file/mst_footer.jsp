
 <div class="footer">
                    <div class="footer-left">
                        <span>&copy; 2015. S.P.M.S. All Rights Reserved.</span>
                    </div>
                    <div class="footer-right">
                        <span>Designed by: <a href="#">S.P.M.S. Team</a></span>
                    </div>
                </div><!--footer-->


     
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        


    
</div><!--mainwrapper-->



<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery-migrate-1.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery-ui-1.10.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/bootstrap-fileupload.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/bootstrap-timepicker.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery.uniform.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery.autogrow-textarea.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/charCount.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/colorpicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/ui.spinner.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/chosen.jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/modernizr.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery.slimscroll.js"></script>


	
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/forms.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
                                    
        //Replaces data-rel attribute to rel.
        //We use data-rel because of w3c validation issue
        jQuery('a[data-rel]').each(function() {
            jQuery(this).attr('rel', jQuery(this).data('rel'));
        });
        
        // tooltip sample
	if(jQuery('.tooltip').length > 0)
		jQuery('.tooltip').tooltip({selector: "a[rel=tooltip]"});
		
	jQuery('.mypopover').popover({selector: 'a[rel=popover]', trigger: 'hover'});
        
    });
</script>
</body>


</html>
