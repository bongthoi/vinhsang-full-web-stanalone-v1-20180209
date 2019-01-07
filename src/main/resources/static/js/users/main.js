 $(function () {
	    //Enable iCheck plugin for checkboxes
	    //iCheck for checkbox and radio inputs
	 $('.tb-user input[type="checkbox"]').iCheck({
	      checkboxClass: 'icheckbox_flat-blue',
	      radioClass: 'iradio_flat-blue'
	    });

	    //Enable check and uncheck all functionality
	   $(".checkbox-toggle55").click(function () {
	      var clicks = $(this).data('clicks');
	      if (clicks) {
	        //Uncheck all checkboxes
	        $(".tb-user input[type='checkbox']").iCheck("uncheck");
	        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
	      } else {
	        //Check all checkboxes
	        $(".tb-user input[type='checkbox']").iCheck("check");
	        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
	      }
	      $(this).data("clicks", !clicks);
	    });
	   
	   $("#do_active_user").click(function(){
		   var ids = [];
		     $.each($("#frm-table-user input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 $("#frm-table-user").attr('action',"admin/user/active");
		    	 $("#frm-table-user").submit();
		     }else{
		    	 return;
		     }
	   });
	   
	   $("#do_disabled_user").click(function(){
		   var ids = [];
		     $.each($("#frm-table-user input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 $("#frm-table-user").attr('action',"admin/user/disabled");
		    	 $("#frm-table-user").submit();
		     }else{
		    	 return;
		     }
	   });
	   
	   $("#do_delete_user").click(function(){
		   var ids = [];
		     $.each($("#frm-table-user input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 $("#frm-table-user").attr('action',"admin/user/delete");
		    	 $("#frm-table-user").submit();
		     }else{
		    	 return;
		     }
	   });
	   
 });	   