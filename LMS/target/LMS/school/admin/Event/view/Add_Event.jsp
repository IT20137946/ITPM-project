<!DOCTYPE html>


<%@page import="event_table.Event_Table_Model"%>
<%@page import="common_use_bean.Event_Use_Bean"%><html class="no-js">

<head>
    <!-- meta -->
    <meta charset="utf-8">
    


    <!-- bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css">
    <!-- /bootstrap -->

    <!-- core styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/offline/theme.css">     
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/bootstrap-datepicker/datepicker.css">
    <!-- /core styles -->

    <!-- page styles -->
        <link rel="stylesheet" href="<%=Common_Things.url %>/vendor/bootstrap-select/bootstrap-select.css">
    <link rel="stylesheet" href="<%=Common_Things.url %>/vendor/dropzone/dropzone.css">
    <link rel="stylesheet" href="<%=Common_Things.url %>/vendor/slider/slider.css">
    <link rel="stylesheet" href="<%=Common_Things.url %>/vendor/bootstrap-datepicker/datepicker.css">
    <!-- /page styles -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- load modernizer -->
    <script src="<%=request.getContextPath()%>/vendor/modernizr.js"></script>
    
    
    
     <script type="text/javascript">
		function validateForm() {
		    

 
		    var x = document.forms["myForm"]["event_name"].value;
		    if (x==null || x=="") {
		        alert("Please enter Event Name");
		        return false;
		    }




		    
		}
	</script>
    
    
    
    
    
</head>

<!-- body -->

<body>
		

	
    <div class="app" data-sidebar="locked">
        <!-- top header -->
        
               <%@include file="../../common/tab.jsp" %>
               
           

           

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-6"> 
                            <h3 class="no-margin">Add Event</h3>
                            
                        </div>
                        <a href="<%=Common_Things.url %>/add-event/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna" %>" class="btn btn-info">Add Event</a>
                        <a href="<%=Common_Things.url %>/event-search/?kou=<%=12 %>" class="btn btn-info">Search Event5</a>
                      
                    </div>
 
                    <div class="col-lg-8">
                    
                    
                    
                    
                    
                    		<%
							String message=(String)session.getAttribute("add_event_message");
							if(message!=null){
							%>
								
								 <div class="alert alert-success">
                                        <%=message%>
                                    </div>


							<%			session.removeAttribute("add_event_message");
							}
							%>
                    
                    
                    
                    
                    
                    
                    
                    
                                            <section class="panel">
                                                <header class="panel-heading">Add Event Form</header>
                                                <div class="panel-body">

                                                    <form action="<%=Common_Things.url%>/add-event-controller/" class="form-horizontal" role="form" name="myForm"  onsubmit="return validateForm()">
                                                    
                                                           
                                                       
                                                         
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Event Name</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Name" name="event_name" required>
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                       		<hr> 
                                                        
                                                        <div class="form-group">
                                                            <label class="col-sm-2 control-label">Event Date</label>
                                                            <div class="col-sm-6">
																<%
																TimeZone.setDefault(TimeZone.getTimeZone("Asia/Qatar"));
																SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
																 
																  Date today4 = new Date();
																  String date4 = format.format(today4);
																
																
																%>
                                                                <div class="input-group mg-b-md input-append date datepicker"  data-date="<%=date4 %>"  data-date-format="dd-mm-yyyy">
                                                                    <input type="text" class="form-control" value="<%=date4 %>" name="event_date" required>
                                                                    <span class="input-group-btn">
                                                                        <button class="btn btn-white add-on" type="button">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </button>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        
                                                        <hr>
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">No Of Participants</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="No Of Participants" name="mo_participants" required>
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                       		
                                                          	<hr> 
                                                        
                                                        
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Chief Guest</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Chief Guest" name="chief_guest">
                                                            </div>
                                                        </div>
                                                        <hr> 
                                                        
                                                        
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Starting Time</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="HH:MM" name="starting_time" required>
                                                            </div>
                                                        </div>
                                                        <hr> 
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Event Type</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Event Type" name="event_type" required>
                                                            </div>
                                                        </div>
                                                      
                                                         <hr>
                                                        
                                                        <div class="form-group">  
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                <button type="submit" class="btn btn-default">Add Event</button>
                                                            </div>
                                                        </div>
                                                        
                                                        </div>
                                                    </form>




                                                  <div class="col-lg-4">
                                            <section class="panel panel-primary">
                                <div class="panel-heading">Recently Added Events 
                                    
                                </div>
                                <ul class="list-group">
                                
                                
                                
                                
                                	<%
                                	Event_Table_Model obj_Event_Table_Model=new Event_Table_Model(); 
                              	List<Event_Use_Bean> list_event=obj_Event_Table_Model.get_all_recently_added_event();
            	                                	
            	                                	
            	                                	if(list_event!=null){
            	                                		Iterator<Event_Use_Bean> it_list_event=list_event.iterator();
            	                                		Event_Use_Bean obj_Event_Use_Bean=new Event_Use_Bean();
            	                                		while(it_list_event.hasNext()){
            	                                			obj_Event_Use_Bean=it_list_event.next();
                                    	%>
                                	
                                	  <li class="list-group-item">
                                        <span class="pull-left mg-t-xs mg-r-md">
                                           1.
                                        </span>
                                        <div class="show no-margin pd-t-xs">
                                            
                                           
                                       <a href="<%=Common_Things.url %>/complete-details-event/?lm=<%=obj_Event_Use_Bean.getEvent_id() %>" class="btn btn-primary btn-xs"><%=obj_Event_Use_Bean.getEvent_name() %></a>  </div>
                                         
                                    </li>
                                   
                                	<%		 
                                			
                                			
                                		}
                                		
                                		
                                	}
                                	
                                	%>
                                
                                
                                
                                  
                                  

                                </ul>

                            </section> 
                                        </div> 










                                                </div> 
                                                



                    
                </div>
                <!-- /content wrapper -->
            </section>
            <!-- /main content -->
        </section>

    </div>

    <!-- core scripts --> 
     <script src="<%=Common_Things.url %>/vendor/jquery-1.11.0.min.js"></script>
    <script src="<%=Common_Things.url %>/bootstrap/js/bootstrap.js"></script>	
    <!-- /core scripts -->

    <!-- page scripts -->
   <script src="<%=Common_Things.url %>/vendor/bootstrap-select/bootstrap-select.js"></script>
    <script src="<%=Common_Things.url %>/vendor/dropzone/dropzone.js"></script>
    <script src="<%=Common_Things.url %>/vendor/parsley.min.js"></script>
    <script src="<%=Common_Things.url %>/vendor/jquery.maskedinput.min.js"></script>
    <script src="<%=Common_Things.url %>/vendor/fuelux/checkbox.js"></script>
    <script src="<%=Common_Things.url %>/vendor/fuelux/radio.js"></script>
    <script src="<%=Common_Things.url %>/vendor/fuelux/wizard.js"></script>
    <script src="<%=Common_Things.url %>/vendor/fuelux/pillbox.js"></script>
    <script src="<%=Common_Things.url %>/vendor/fuelux/spinner.js"></script>
    <script src="<%=Common_Things.url %>/vendor/slider/bootstrap-slider.js"></script>
    <script src="<%=Common_Things.url %>/vendor/bootstrap-datepicker/bootstrap-datepicker.js"></script>
    <script src="<%=Common_Things.url %>/vendor/wysiwyg/jquery.hotkeys.js"></script>
    <script src="<%=Common_Things.url %>/vendor/wysiwyg/bootstrap-wysiwyg.js"></script>
    <script src="<%=Common_Things.url %>/vendor/switchery/switchery.js"></script>
    <!-- /page scripts -->

    <!-- theme scripts -->
    <script src="<%=Common_Things.url %>/vendor/slider/bootstrap-slider.js"></script>
    <script src="<%=Common_Things.url %>/js/off-canvas.js"></script>
    <script src="<%=Common_Things.url %>/vendor/offline/offline.min.js"></script>
     <script src="<%=Common_Things.url %>/vendor/bootstrap-datepicker/bootstrap-datepicker.js"></script>
       
     
        <script src="<%=Common_Things.url %>/js/main.js"></script>
	<script src="<%=Common_Things.url %>/js/datatables.js"></script>
	 <script src="<%=Common_Things.url %>/vendor/switchery/switchery.js"></script>
     <script src="<%=Common_Things.url %>/js/forms.js"></script>
      
	  

    <!-- /theme scripts -->
 <script src="<%=Common_Things.url %>/js/forms.js"></script>
</body>
<!-- /body -->

</html>
