<!DOCTYPE html>


<%@page import="home_page_model.clinic_table.Clinic_Table_Model"%>
<%@page import="common_use_bean.Clinic_Use_Bean"%><html class="no-js">

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
                          		String Clinic_id=(String)request.getParameter("lm");
                          		                          				Clinic_Table_Model obj_Clinic_Table_Model=new Clinic_Table_Model();
                          		                          				
                          		                          				Clinic_Use_Bean obj_Clinic_Use_Bean=obj_Clinic_Table_Model.get_complete_details_clinic(Clinic_id);
                          		%>
           

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-6"> 
                            <h3 class="no-margin">Patient Name:<%=obj_Clinic_Use_Bean.getPatient_name() %></h3>
                            
                        </div>
                        <a href="<%=Common_Things.url %>/clinic-search/?kou=<%=12 %>" class="btn btn-info">Search Clinic</a>
                     
                    </div>

                    <div class="col-lg-8">
                    
                    
                    
                    
                    
                    		<%
							String message=(String)session.getAttribute("add_clinic_message");
							if(message!=null){
							%>
								
								 <div class="alert alert-success">
                                        <%=message%>
                                    </div>


							<%			session.removeAttribute("add_clinic_message");
							}
							%>
                    
                    
                    
                    
                    
                    
                    
                    
                                            <section class="panel">
                                                <header class="panel-heading">Complete Details</header>
                                                <div class="panel-body">

                                                    <form action="<%=Common_Things.url%>/edit-profile-clinic-controller/" class="form-horizontal" role="form">
                                                      <input type="hidden" name="clinic_id" value="<%=Clinic_id %>">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Clinic No</label>
                                                            	<div class="col-sm-10">
                                                               	<input type="text" class="form-control" name="clinic_no" data-parsley-required="true" data-parsley-trigger="change" placeholder="Clinic No" value="<%if(obj_Clinic_Use_Bean.getClinic_no()!=null){out.println(obj_Clinic_Use_Bean.getClinic_no());} %>" >
                                                               </div> 
                                                             
                                                        </div> 
                                                        
                                                       
                                                        	<hr>
                                                           
                                                       
                                                         
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Patient Name</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Patient Name" name="patient_name" value="<%if(obj_Clinic_Use_Bean.getPatient_name()!=null){out.println(obj_Clinic_Use_Bean.getPatient_name());} %>" >
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                       		<hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Clinic Type</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Clinic Type" name="type" value="<%if(obj_Clinic_Use_Bean.getType()!=null){out.println(obj_Clinic_Use_Bean.getType());} %>" >
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                        
                                                        <hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Doctor Name</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Doctor Name" name="doctor_name" value="<%if(obj_Clinic_Use_Bean.getDoctor_name()!=null){out.println(obj_Clinic_Use_Bean.getDoctor_name());} %>" >
                                                            </div>
                                                        </div>
                                                        <hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Clinic Date</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="MM/DD/YYYY" name="doc" value="<%if(obj_Clinic_Use_Bean.getDoc()!=null){out.println(obj_Clinic_Use_Bean.getDoc());} %>" >
                                                            </div>
                                                        </div>
                                                       <hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Time</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Time" name="time" value="<%if(obj_Clinic_Use_Bean.getTime()!=null){out.println(obj_Clinic_Use_Bean.getTime());} %>" >
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


