<!DOCTYPE html>

<%@page import="common_use_bean.Transport_Use_Bean"%>
<%@page import="transport_table.Transport_Table_Model"%>
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
                           			String staff_id=(String)request.getParameter("id");
                           			                           				String staff_name=(String)request.getParameter("n"); 
                           			                           			transport_table.Transport_Table_Model obj_transport_Table_Model=new transport_table.Transport_Table_Model();
                           			                           			        	
                           			                           			        	List<Transport_Use_Bean> list_transport_detail=obj_transport_Table_Model.get_all_transport_detail_from_staff_id(staff_id);
                           			%>
           

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-8"> 
                            <h3 class="no-margin">Transport Details : <b><%=staff_name%></b></h3>
                             
                        </div> 
                       <a href="<%=Common_Things.url%>/add-staff/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna"%>" class="btn btn-info">Add Staff</a>
                       
                    </div>             

                    
                   


                    <%

                                                                        %>
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <div class="panel-body">
                                
                                    <div class="col-lg-12">
                                            <section class="panel panel-primary">
                                <div class="panel-heading">Transport Details
                                    
                                </div>
                                <ul class="list-group">
                                
                                
                                	 <table class="table table-hover no-margin">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                 <th>ID</th>
                                                <th>Name</th>
                                                <th>AdmNo</th>
                                                <th>StfNIC</th>
                                                <th>StfPhnNo</th>
                                                <th>PickUpPt</th>
                                                <th>PickTim</th>
                                                <th>LicPlt</th> 
                                                <th>DrivrNam</th> 
                                                <th>DrivrPhnNo</th> 
                                                <th>DriverNIC</th> 
                                                <th>VehiclTyp</th> 
                                                <th>Added On</th> 
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
                                          
                                 
                                	<%
                                				if(list_transport_detail!=null){
     	                                	
 	                                			Iterator<Transport_Use_Bean> it_transport_details=list_transport_detail.iterator();
 	                                			Transport_Use_Bean obj_Transport_Detail_Bean=new Transport_Use_Bean();
 	                                			int temp_count=1;
 	                                			while(it_transport_details.hasNext()){
 	                                			obj_Transport_Detail_Bean=it_transport_details.next();
									%>                                                                                                            	
 
                                	                                    
                                   			 <tr>
                                                <td><%=temp_count++ %></td>
                                                <td><%=obj_Transport_Detail_Bean.getStaff_id()%></td>
                                                <td><%=obj_Transport_Detail_Bean.getStaff_name() %></td>
                                                <td><%=obj_Transport_Detail_Bean.getAdmission_no() %></td>
                                                <td><%=obj_Transport_Detail_Bean.getStaff_nic()%></td>
                                                <td><%=obj_Transport_Detail_Bean.getStaff_phone_number()%></td>
                                                <td><%=obj_Transport_Detail_Bean.getPickup_point() %></td>
                                                <td><%=obj_Transport_Detail_Bean.getPickup_time()%></td>
                                                <td><%=obj_Transport_Detail_Bean.getLicernce_plate() %></td>
                                                <td><%=obj_Transport_Detail_Bean.getDriver_name() %></td>
                                                <td><%=obj_Transport_Detail_Bean.getDiver_contact_number() %></td>
                                                <td><%=obj_Transport_Detail_Bean.getDiver_nic() %></td>
                                                <td><%=obj_Transport_Detail_Bean.getVehicle_type()%></td>
                                                <td><%=obj_Transport_Detail_Bean.getAdded_on()%></td>
                                                
                                                
                                               
                                               
                                               <td><a href="<%=Common_Things.url %>/edit-transport-details/?tid=<%=obj_Transport_Detail_Bean.getTransport_id()%> " class="btn btn-success btn-xs">Update</a> </td> 
                                               
                                            </tr>
                                   
                                    
                                   
                                   
                                   
                                	<%		
                                			System.out.println("TRANSPORT ID for EDIT : " + obj_Transport_Detail_Bean.getTransport_id());
                                			
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
