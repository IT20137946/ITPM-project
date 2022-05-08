<!DOCTYPE html>



<%@page import="home_page_model.Home_Page_Model"%>
<%@page import="common_use_bean.Home_Page_Use_Bean"%>
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
    <!-- /core styles -->

    <!-- page styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/toastr/toastr.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- /page styles -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- load modernizer -->
    <script src="<%=request.getContextPath()%>/vendor/modernizr.js"></script>
    
    
    
    
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.2.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.autocomplete.js"></script>
   
    
    
    
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
                            <h3 class="no-margin">All Staffs </h3>
                             
                        </div> 
                       <a href="<%=Common_Things.url %>/add-event/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna" %>" class="btn btn-info">Add Event</a>
                        <a href="<%=Common_Things.url %>/event-search/?kou=<%=12 %>" class="btn btn-info">Search Event</a>
                        <a href="<%=Common_Things.url %>/view-all-event/<%=12 %>" class="btn btn-info">View All Events</a>
                      
                    </div>             

                    


                    <%
                    int temp_count=1;
                    int int_lim=0;
					
                    
                    String lim=(String)request.getParameter("lim");	
                    if(lim==null){
                    	int_lim=0;
                    }else{
                    	int_lim=Integer.parseInt(lim.trim());
                    }
                    
                    %>
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <div class="panel-body">
                                
                                    <div class="col-lg-12">
                                            <section class="panel panel-primary">
                                <div class="panel-heading">View All Events 
                                    
                                </div>
                                <ul class="list-group">
                                
                                
                                	 <table class="table table-hover no-margin">
                                         <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Event Name</th>
                                                <th>Event Date</th>
                                                 <th>Event Time</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
                                          
                                 
                                	<% 
                                	
                                	Event_Table_Model obj_Event_Table_Model=new Event_Table_Model();  
                       	                  	List<Event_Use_Bean> list_event=obj_Event_Table_Model.get_all_event(int_lim);
                       	                                	 
                       	                                	
                       	                                	if(list_event!=null){
                       	                                		Iterator<Event_Use_Bean> it_list_event=list_event.iterator();
                       	                                		Event_Use_Bean obj_Event_Use_Bean=new Event_Use_Bean();
                       	                                		while(it_list_event.hasNext()){
                       	                                			obj_Event_Use_Bean=it_list_event.next();
                           	%>
 
                                	                                    
                                   			  <tr>
                                                <td><%=temp_count++ %></td>
                                               <td> <a href="<%=Common_Things.url %>/complete-details-event/?lm=<%=obj_Event_Use_Bean.getEvent_id() %>" class="btn btn-primary btn-xs"><%=obj_Event_Use_Bean.getEvent_name() %></a>          </td>
                                               <td><%=obj_Event_Use_Bean.getEvent_date() %></td>
                                               <td><%=obj_Event_Use_Bean.getStarting_time() %></td>
                                               
                                            </tr>
                                   
                                    
                                   
                                   
                                   
                                	<%		
                                			
                                			
                                		}
                                		
                                		
                                	}
                                	 
                                		if(temp_count==101){  
                                	%>
                                			<tr>
                                					<td></td>
		                                			<td></td>
		                                			<td>
		                              <%
		                              					if(int_lim==1){
		                              %>
		            	          						 <a href="<%=Common_Things.url %>/view-all-event/?lim=<%=0 %>"  class="btn btn-danger btn-xs">Previous</a>
                     											
		                              <%						
		                              					}else if(int_lim!=0){    
		                              %>
		            	          								<a href="<%=Common_Things.url %>/view-all-event/?lim=<%=int_lim-1 %>"  class="btn btn-danger btn-xs">Previous</a>
                    
		                              <%						
		                             						
		                              					}
		                              %>  			
		                                			
		                                				 
		                                			</td>
		                							<td>
		                                				   <a href="<%=Common_Things.url %>/view-all-event/?lim=<%=int_lim+1 %>"  class="btn btn-danger btn-xs">Next</a>
                    
		                                			</td>
		                                			<td></td>
		                                			<td></td>
                                			
                                			</tr>
                                  <%
                                		}
                                  %>
                                        </tbody>
                                    </table>
                                
                                  	
                                  

                                </ul>

                            </section> 
                                        </div>
                                
                                
                                
                                
                                
                                
                                
                                
                                </div>
                            </section>
                        </div>
                    </div>
                    
                 
                </div>
                <!-- /content wrapper -->
            </section>
            <!-- /main content -->
        </section>

    </div>

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
      
</body>
<!-- /body -->

</html>
