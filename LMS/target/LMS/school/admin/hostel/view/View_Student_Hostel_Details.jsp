<!DOCTYPE html>

<%@page import="common_use_bean.Hostel_Use_Bean"%>
<%@page import="hostel_Table_Model.Hostel_Table_Model"%>
<%@page import="Issue_Table_Model.Issue_Table_Model"%>
<%@page import="common_use_bean.Book_Use_Bean"%>
<%@page import="common_use_bean.Issue_Use_Bean"%><html class="no-js">

<head>
    <!-- meta -->
    <meta charset="utf-8">
    


     <link rel="stylesheet" href="<%=Common_Things.url%>/bootstrap/css/bootstrap.min.css">
    <!-- /bootstrap -->

    <!-- core styles -->
    <link rel="stylesheet" href="<%=Common_Things.url%>/css/main.css">
    <link rel="stylesheet" href="<%=Common_Things.url%>/css/animate.min.css">
    <link rel="stylesheet" href="<%=Common_Things.url%>/vendor/offline/theme.css">
    <!-- /core styles -->

    <!-- page styles -->
    <link rel="stylesheet" href="<%=Common_Things.url%>/vendor/bootstrap-select/bootstrap-select.css">
    <link rel="stylesheet" href="<%=Common_Things.url%>/vendor/dropzone/dropzone.css">
    <link rel="stylesheet" href="<%=Common_Things.url%>/vendor/slider/slider.css">
    <link rel="stylesheet" href="<%=Common_Things.url%>/vendor/bootstrap-datepicker/datepicker.css">
    <!-- /page styles -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- load modernizer -->
    <script src="<%=Common_Things.url%>/vendor/modernizr.js"></script>
    <script type="text/javascript">
		function validateForm() {
		    var x = document.forms["myForm"]["admission_no"].value;
		    if (x==null || x=="") {
		        alert("Please enter Admission No of Student");
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
               
            
			<%
                           			String student_id=(String)request.getParameter("id");
                           			                           				String student_name=(String)request.getParameter("n"); 
                           			                           				hostel_Table_Model.Hostel_Table_Model obj_hostel_Table_Model=new hostel_Table_Model.Hostel_Table_Model();
                           			                           			        	
                           			                           			        	List<Hostel_Use_Bean> list_hostel_detail=obj_hostel_Table_Model.get_all_hostel_detail_from_student_id(student_id);
                           			%>
           

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-8"> 
                            <h3 class="no-margin">Hostel Details: <b><%=student_name%></b></h3>
                             
                        </div> 
                       <a href="<%=Common_Things.url%>/add-student/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna"%>" class="btn btn-info">Add Student</a>
                       
                    </div>             

                    
                   


                    <%

                                                                        %>
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <div class="panel-body">
                                
                                    <div class="col-lg-12">
                                            <section class="panel panel-primary">
                                <div class="panel-heading">Hostel Details
                                    
                                </div>
                                
                                 
                                <ul class="list-group">
                                
                                
                                	 <table class="table table-hover no-margin">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                 <th>HostelID</th>
                                                <th>Name </th>
                                                <th>Admisson No</th>
                                                <th>Bed NO</th>
                                                <th>Locker NO</th>
                                                <th>Parent Name</th>
                                                <th>Distance</th>
                                                <th>Description</th> 
                                                <th>Actions</th> 
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
                                          
                                 
                                	<%
                                                                                                                                                      	if(list_hostel_detail!=null){
                                                                                                                                                      	                       	                                	
                                                                                                                                                      	                       	                                		Iterator<Hostel_Use_Bean> it_hostel_details=list_hostel_detail.iterator();
                                                                                                                                                      	                       	                                		Hostel_Use_Bean obj_Hostel_Detail_Bean=new Hostel_Use_Bean();
                                                                                                                                                      	                       	                                	int temp_count=1;
                                                                                                                                                      	                       	                                		while(it_hostel_details.hasNext()){
                                                                                                                                                      	                       	                                		obj_Hostel_Detail_Bean=it_hostel_details.next();
                                                                                                                                                      	%>
 
                                	                                    
                                   			 <tr>
                                                <td><%=temp_count++ %></td>
                                                <td><%=obj_Hostel_Detail_Bean.getHostel_id() %></td>
                                                <td><%=obj_Hostel_Detail_Bean.getStudent_name() %></td>
                                                <td><%=obj_Hostel_Detail_Bean.getAdmission_no() %></td>
                                                <td><%=obj_Hostel_Detail_Bean.getBed_number()%></td>
                                                <td><%=obj_Hostel_Detail_Bean.getLocker_number() %></td>
                                                <td><%=obj_Hostel_Detail_Bean.getParent_name() %></td>
                                                <td><%=obj_Hostel_Detail_Bean.getDistance() %></td>
                                                <td><%=obj_Hostel_Detail_Bean.getDescription() %></td>
                                               
                                               <td><a href="<%=Common_Things.url %>/edit-hostel-details/?hid=<%=obj_Hostel_Detail_Bean.getHostel_id() %> " class="btn btn-success btn-xs">Update</a> </td> 
                                               <td><a href="<%=Common_Things.url %>/delete-hostel-details/?hid=<%=obj_Hostel_Detail_Bean.getHostel_id() %> " class="btn btn-danger btn-xs" style="margin-left: -37px;">delete</a> </td> 
                                               
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
                    
                 <%
                    }
                 
                 %>   
                    
                    
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
    <script src="<%=Common_Things.url %>/js/off-canvas.js"></script>
    <script src="<%=Common_Things.url %>/vendor/offline/offline.min.js"></script>
    <script src="<%=Common_Things.url %>/js/main.js"></script>
    <!-- /theme scripts -->

    <script src="<%=Common_Things.url %>/js/forms.js"></script>
      
</body>
<!-- /body -->

</html>
