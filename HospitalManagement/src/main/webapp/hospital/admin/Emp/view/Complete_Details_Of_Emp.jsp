<!DOCTYPE html>


<%@page import="emp_table.Emp_Table_Model"%>
<%@page import="common_use_bean.Employee_Use_Bean"%><html class="no-js">

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
                          		String Emp_id=(String)request.getParameter("lm");
                          		                          		                          		                          				Emp_Table_Model obj_Emp_Table_Model=new Emp_Table_Model();
                          		                          		                          		                          				
                          		                          		                          		                          				Employee_Use_Bean obj_Emp_Use_Bean=obj_Emp_Table_Model.get_complete_details_emp(Emp_id);
                          		%>
           

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-6"> 
                            <h3 class="no-margin">Employee :<%=obj_Emp_Use_Bean.getEmp_name() %></h3>
                            
                        </div>
                        <a href="<%=Common_Things.url %>/emp-search/?kou=<%=12 %>" class="btn btn-info">Search Emp</a>
						             
                    </div>

                    <div class="col-lg-8">
                    
                    
                    
                    
                    
                    		<%
							String message=(String)session.getAttribute("add_emp_message");
							if(message!=null){
							%>
								
								 <div class="alert alert-success">
                                        <%=message%>
                                    </div>


							<%			session.removeAttribute("add_emp_message");
							}
							%>
                    
                    
                    
                    
                    
                    
                    
                    
                                            <section class="panel">
                                                <header class="panel-heading">Complete Details</header>
                                                <div class="panel-body">

                                                    <form action="<%=Common_Things.url%>/add-emp-contro/" class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Employee NO</label>
                                                            	<div class="col-sm-10">
                                                               	<input type="text" class="form-control" name="emp_no" data-parsley-required="true" data-parsley-trigger="change" placeholder="Employee No" value="<%if(obj_Emp_Use_Bean.getEmp_no()!=null){out.println(obj_Emp_Use_Bean.getEmp_no());} %>" readonly="readonly">
                                                               </div> 
                                                             
                                                        </div> 
                                                        
                                                       
                                                        	<hr>
                                                           
                                                       
                                                         
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Employee Name</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Name" name="emp_name" value="<%if(obj_Emp_Use_Bean.getEmp_name()!=null){out.println(obj_Emp_Use_Bean.getEmp_name());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                       	<hr>
                                                           
                                                       
                                                         
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">NIC</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="NIC" name="nic" value="<%if(obj_Emp_Use_Bean.getNic()!=null){out.println(obj_Emp_Use_Bean.getNic());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                       		<hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Address</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Address" name="address" value="<%if(obj_Emp_Use_Bean.getAddress()!=null){out.println(obj_Emp_Use_Bean.getAddress());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                         <hr> 
                                                          
                                                          <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Date of Birth</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="MM/DD/YYYY" name="dob" value="<%if(obj_Emp_Use_Bean.getDob()!=null){out.println(obj_Emp_Use_Bean.getDob());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                       		
                                         
                                                       
                                                    
                                                          <hr> 
                                                          
                                                          <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Contact Number</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Contact Number" name="contact_no" value="<%if(obj_Emp_Use_Bean.getContact_no()!=null){out.println(obj_Emp_Use_Bean.getContact_no());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                        <hr> 
                                                          
                                                          <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Email" name="email" value="<%if(obj_Emp_Use_Bean.getEmail()!=null){out.println(obj_Emp_Use_Bean.getEmail());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                        <hr> 
                                                          
                                                          <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Gender</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Section" name="section" value="<%if(obj_Emp_Use_Bean.getGender()==1){out.println("Male");}else{out.println("Female");} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                      
                                                       
                                                       
                            
                                                     
                                                     <hr>  
                                                     
                                                        </div>
                                                        <div class="form-group">  
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                
                                                                
                                                                
                                                                <a href="<%=Common_Things.url %>/edit-emp/?lm=<%=obj_Emp_Use_Bean.getEmp_id() %>" class="btn btn-warning">Edit Employee Details</a>
                                                                
                                                                <a href="<%=Common_Things.url %>/delete-emp/?lm=<%=obj_Emp_Use_Bean.getEmp_id() %>" class="btn btn-warning">Delete</a>
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

