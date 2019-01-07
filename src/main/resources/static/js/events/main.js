 $(function () {
	    //Enable iCheck plugin for checkboxes
	    //iCheck for checkbox and radio inputs
	    $('.tb-event input[type="checkbox"]').iCheck({
	      checkboxClass: 'icheckbox_flat-blue',
	      radioClass: 'iradio_flat-blue'
	    });

	    //Enable check and uncheck all functionality
	   $(".checkbox-toggle55").click(function () {
	      var clicks = $(this).data('clicks');
	      if (clicks) {
	        //Uncheck all checkboxes
	        $(".tb-event input[type='checkbox']").iCheck("uncheck");
	        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
	      } else {
	        //Check all checkboxes
	        $(".tb-event input[type='checkbox']").iCheck("check");
	        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
	      }
	      $(this).data("clicks", !clicks);
	    });
	   
	   
	   
	   
	   tinymce.init({
			  selector: '#my_editor_events',
			  height: 300,
			  menubar: 'file edit insert view format table tools',
			 /* plugins: [
			    'advlist autolink lists link image charmap print preview anchor',
			    'searchreplace visualblocks code fullscreen',
			    'insertdatetime media table contextmenu paste code'
			  ],*/
			   plugins: ["image","link","textcolor","code","charmap","searchreplace","visualblocks","preview","fullscreen","table","lists"],
			  toolbar: 'undo redo | bold italic | fontselect fontsizeselect | forecolor backcolor |alignleft aligncenter alignright  alignjustify | bullist numlist indent outdent | link unlink image',
			  content_css: '//www.tinymce.com/css/codepen.min.css',
			  file_browser_callback_types: 'image',
			    file_browser_callback: function(field_name, url, type, win) {
			        if(type=='image'){
			        	$('#my_form_uploadevents input').click();
			        }
			    }
		});
		$("#btnSaveevents").click(function(){
				//var pdata=$("#frm-about").serialize();
						var MCEeditor=tinymce.get('my_editor_events');
						var content=MCEeditor.getContent();		
						$("#frm_events_edit #my_editor_events").val(content);
						//var pdata=$("#frm_about_edit").serialize();
						$("#frm_events_edit").submit();
				
		});
		
		$('#txtimage_events').ajaxfileupload({
			'valid_extensions' : ['gif','png','jpg','jpeg'],
		    'action': "upload/publicimg/?folder=event",
		    'onComplete': function(response) {	
		        if (response.status==false) {
		        	$.messager.alert('Error',response.message,'error');
		        	 //$("#strongmessage").html("<font color='red'>" + JSON.stringify(response.message) + " </font>");
		        }
		        if (response.status==true) {
		        	//$.messager.alert('Info',response.message,'info');
		            var pram = response.pram;
		            var url_img=baseurl+"upload/event/"+pram;
		            top.$('.mce-btn.mce-open').parent().find('.mce-textbox').val(url_img);
		           // $("#id_uploadsuccess").val(pram);
		            //$("#branchimg_@index").attr('src','upload/branch/'+pram);
		           // $("#strongmessage").html("<font color='green'>" + JSON.stringify(response.message) + " </font>");
		            
		        }
		    },
		    'onStart': function() {
		    
		    }
		});
	   
	   
	   $("#feature_image_btn").click(function(){
		   $("#txtimage_events_feature").click();
	   });
	
	   $("#txtimage_events_feature").ajaxfileupload({
		   'action': "upload/publicimg/?folder=event",
	        'valid_extensions' : ['jpg','png','gif'],
	        'onComplete': function(response) {   
	        
	        		 if (response.status==false) {
	                     alert(response.message);
	                 }
	                 if (response.status==true) {
	                     var pram = response.pram;
	                     var fullpath= baseurl+"/upload/event/" +pram;
	                     var imgtag='<img alt="" src="'+fullpath+'" class="img img-responsive">';
	                     $("#feature_image_input").val(pram);
	                     $("#feature_image_div").html(imgtag);
	                 }
	        },
	        'onStart': function() {
	        }
	    });
	   
	   $("#do_active_event").click(function(){
		   var ids = [];
		     $.each($("#frm-table-event input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 $("#frm-table-event").attr('action',"admin/events/active");
		    	 $("#frm-table-event").submit();
		     }else{
		    	 return;
		     }
	   });
	   
	   
	   $("#do_disabled_event").click(function(){
		   var ids = [];
		     $.each($("#frm-table-event input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 $("#frm-table-event").attr('action',"admin/events/disabled");
		    	 $("#frm-table-event").submit();
		     }else{
		    	 return;
		     }
	   });
	   
	   $("#do_delete_event").click(function(){
		   var ids = [];
		     $.each($("#frm-table-event input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 $("#frm-table-event").attr('action',"admin/events/delete");
		    	 $("#frm-table-event").submit();
		     }else{
		    	 return;
		     }
	   });
	   
	   
	   
 });	   