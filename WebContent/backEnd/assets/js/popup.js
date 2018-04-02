
    $(function() {
        $( "#myDialog" ).dialog({
        	autoOpen: false,
            show: {
            	effect: "blind",
                duration: 1000
            },
            hide: {
                effect: "explode",
                duration: 1000
              },
          modal: true,
          buttons: {
            Ok: function() {
              $( this ).dialog( "close" );
            }
          }
        });
      });
   
      
    $( "#popup" ).click(function() {
      $( "#myDialog" ).dialog( "open" );
    });

  