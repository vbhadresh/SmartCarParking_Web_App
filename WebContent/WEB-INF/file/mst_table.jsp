 
 <script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery.dataTables.min.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/responsive-tables.js"></script>
 <script type="text/javascript">
    jQuery(document).ready(function(){
        // dynamic table
        jQuery('#dyntable').dataTable({
            "sPaginationType": "full_numbers",
            "aaSortingFixed": [[0,'asc']],
            "fnDrawCallback": function(oSettings) {
                jQuery.uniform.update();
            }
        });
        
        jQuery('#dyntable2').dataTable( {
            "bScrollInfinite": true,
            "bScrollCollapse": true,
            "sScrollY": "300px"
        });
        
    });
</script>