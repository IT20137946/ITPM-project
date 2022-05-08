<!DOCTYPE html>


<%@page import="Staff_table.Staff_Table_Model"%>
<%@page import="common_use_bean.Staff_Use_Bean"%><html class="no-js">

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
		String Staff_id=(String)request.getParameter("lm");
		Staff_Table_Model obj_Staff_Table_Model=new Staff_Table_Model();
		
		Staff_Use_Bean obj_Staff_Use_Bean=obj_Staff_Table_Model.get_complete_details_staff(Staff_id);
		%>
           

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-6"> 
                            <h3 class="no-margin">Staff:<%=obj_Staff_Use_Bean.getStaff_name() %></h3>
                            
                        </div>
                        <a href="<%=Common_Things.url %>/issue-history-staff/?sid=<%=obj_Staff_Use_Bean.getStaff_id()%>&n=<%=obj_Staff_Use_Bean.getStaff_name()%>" class="btn btn-success">Issue History</a>
                        <a href="<%=Common_Things.url %>/staff-search/?kou=<%=12 %>" class="btn btn-info">Search Staff</a>
                     
                    </div>

                    <div class="col-lg-8">
                    
                    
                    
                    
                    
                    		<%
							String message=(String)session.getAttribute("add_staff_message");
							if(message!=null){
							%>
								
								 <div class="alert alert-success">
                                        <%=message%>
                                    </div>


							<%			session.removeAttribute("add_staff_message");
							}
							%>
                    
                    
                    
                    
                    
                    
                    
                    
                                            <section class="panel">
                                                <header class="panel-heading">Complete Details</header>
                                                <div class="panel-body">

                                                    <form action="<%=Common_Things.url%>/edit-profile-staff-controller/" class="form-horizontal" role="form">
                                                      <input type="hidden" name="staff_id" value="<%=Staff_id %>">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Admission No</label>
                                                            	<div class="col-sm-10">
                                                               	<input type="text" class="form-control" name="admission_no" data-parsley-required="true" data-parsley-trigger="change" placeholder="Admission No" value="<%if(obj_Staff_Use_Bean.getAdmission_no()!=null){out.println(obj_Staff_Use_Bean.getAdmission_no());} %>" >
                                                               </div> 
                                                             
                                                        </div> 
                                                        
                                                       
                                                        	<hr>
                                                           
                                                       
                                                         
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Name" name="staff_name" value="<%if(obj_Staff_Use_Bean.getStaff_name()!=null){out.println(obj_Staff_Use_Bean.getStaff_name());} %>" >
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                       		<hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">NIC</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="NIC" name="nic" value="<%if(obj_Staff_Use_Bean.getNic()!=null){out.println(obj_Staff_Use_Bean.getNic());} %>" >
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                        
                                                        <hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Address</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Address" name="address" value="<%if(obj_Staff_Use_Bean.getAddress()!=null){out.println(obj_Staff_Use_Bean.getAddress());} %>" >
                                                            </div>
                                                        </div>
                                                        <hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Dare of Birth</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="MM/DD/YYYY" name="dob" value="<%if(obj_Staff_Use_Bean.getDob()!=null){out.println(obj_Staff_Use_Bean.getDob());} %>" >
                                                            </div>
                                                        </div>
                                                       <hr> 
                                                       <hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Contact Number</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Contact Number" name="phone_number" value="<%if(obj_Staff_Use_Bean.getPhone_number()!=null){out.println(obj_Staff_Use_Bean.getPhone_number());} %>" >
                                                            </div>
                                                        </div>
                                                        
                                                        <hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                          
                                                       
                                                       
                                                       
                                                    <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Status</label>
                                                            <div class="col-sm-10">
                                                         			<label>
                                                         			
                                                         			<%
                                                         			String active_selected=null;
                                                         			String inactive_selected=null;
                                                         			if(obj_Staff_Use_Bean.getStatus()==1){
                                                         				active_selected="checked='checked'";
                                                         			}else{
                                                         				inactive_selected="checked='checked'";
                                                         			}
                                                         			
                                                         			%>
                                                         			
                                                         			 
                                                                        <input type="radio" name="status" value="1" <%=active_selected %>>Active
																		<input type="radio" name="status" value="0" <%=inactive_selected %>>Inactive
                                                                    </label> 
                                                              </div>
                                                        </div>
                                                       
                                                        
                                                     
                                                     <hr>  
                                                     
                                                        </div>
                                                        <div class="form-group">  
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                <button type="submit" class="btn btn-warning">Update</button>
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


