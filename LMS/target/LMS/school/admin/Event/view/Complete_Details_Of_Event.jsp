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
    
    <!-- /page styles -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- load modernizer -->
    <script src="<%=request.getContextPath()%>/vendor/modernizr.js"></script>
    
    
    
    
    
    
    
    
    
</head>

<!-- body -->

<body>
		

	
    <div class="app" data-sidebar="locked">
        <!-- top header -->
        
               <%@include file="../../common/tab.jsp" %>
               
           
		<%
		String Event_id=(String)request.getParameter("lm");
		Event_Table_Model obj_Event_Table_Model=new Event_Table_Model();
		
		Event_Use_Bean obj_Event_Use_Bean=obj_Event_Table_Model.get_complete_details_event(Event_id);
		%>
           

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-6"> 
                            <h3 class="no-margin">Event:<%=obj_Event_Use_Bean.getEvent_name() %></h3>
                            
                        </div>
                        <a href="<%=Common_Things.url %>/event-search/?kou=<%=12 %>" class="btn btn-info">Search Event</a>             
                    </div>

                    <div class="col-lg-8">
                    
                    
                    
                    
                    
                    		<%
							String message=(String)session.getAttribute("add__message");
							if(message!=null){
							%>
								
								 <div class="alert alert-success">
                                        <%=message%>
                                    </div>


							<%			session.removeAttribute("add_event_message");
							}
							%>
                    
                    
                    
                    
                    
                    
                    
                    
                                            <section class="panel">
                                                <header class="panel-heading">Complete Details</header>
                                                <div class="panel-body">

                                                    <form action="<%=Common_Things.url%>/add-event-contro/" class="form-horizontal" role="form">
                                                        
                                                        
                                                       
                                                        
                                                           
                                                       
                                                         
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Event Name</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Event Name" name="event_name" value="<%if(obj_Event_Use_Bean.getEvent_name()!=null){out.println(obj_Event_Use_Bean.getEvent_name());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                       		<hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Event Date</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Event Date" name="event_date" value="<%if(obj_Event_Use_Bean.getEvent_date()!=null){out.println(obj_Event_Use_Bean.getEvent_date());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                       		
                                         
                                                       
                                                    
                                                          <hr> 
                                                          
                                                          <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">No Of Participants</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="No Of Participants" name="mo_participants" value="<%if(obj_Event_Use_Bean.getMo_participants()!=null){out.println(obj_Event_Use_Bean.getMo_participants());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                       <hr> 
                                                          
                                                          <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Chief Guest</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Chief Guest" name="chief_guest" value="<%if(obj_Event_Use_Bean.getChief_guest()!=null){out.println(obj_Event_Use_Bean.getChief_guest());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                       <hr> 
                                                          
                                                          <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Starting Time</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Starting Time" name="starting_time" value="<%if(obj_Event_Use_Bean.getStarting_time()!=null){out.println(obj_Event_Use_Bean.getStarting_time());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                       
                                                    
                                                          <hr> 
                                                          <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Event Type</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Event Type" name="event_type" value="<%if(obj_Event_Use_Bean.getEvent_type()!=null){out.println(obj_Event_Use_Bean.getEvent_type());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                         <hr> 
                                                          <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Added On</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Added On" name="added_on" value="<%if(obj_Event_Use_Bean.getAdded_on()!=null){out.println(obj_Event_Use_Bean.getAdded_on());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                           
                                                       
                            
                                                     
                                                     <hr>  
                                                     
                                                        </div>
                                                        <div class="form-group">  
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                
                                                                
                                                                
                                                                <a href="<%=Common_Things.url %>/edit-event/?lm=<%=obj_Event_Use_Bean.getEvent_id() %>" class="btn btn-warning">Edit Event</a>
                                                                
                                                            </div>
                                                        </div>
                                                        
                                                        </div>
                                                    </form>

                                                </div> 
                                                
                                                  



                    
                </div>
                <!-- /content wrapper -->
            </section>
            <!-- /main content -->
        </section>

    </div>

    <!-- core scripts --> 
 	
    <!-- /core scripts -->

    <!-- page scripts -->
  	<script src="<%=Common_Things.url %>/vendor/bootstrap-select/bootstrap-select.js"></script>
    <script src="<%=Common_Things.url %>/vendor/datatables/jquery.dataTables.js"></script>
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

</body>
<!-- /body -->

</html>

