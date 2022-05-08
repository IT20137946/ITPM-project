<!DOCTYPE html>


<%@page import="common_use_bean.Transport_Use_Bean"%>
<%@page import="transport_table.Transport_Table_Model"%>
<%@page import="student_table.Student_Table_Model"%>
<%@page import="common_use_bean.Student_Use_Bean"%><html class="no-js">

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
	
		String transport_id=(String)request.getParameter("tid");
	transport_table.Transport_Table_Model obj_transport_Table_Model=new transport_table.Transport_Table_Model();
		                          				
													Transport_Use_Bean obj_transport_Use_Bean=obj_transport_Table_Model.get_complete_transport_details_staff(transport_id);
													
													System.out.println("Transport ID From DB: " + obj_transport_Use_Bean.getTransport_id());
		                          					/* System.out.println(obj_transport_Table_Model.getStudent_name());
		                          					System.out.println(" Student ID : "+ obj_transport_Table_Model.getStudent_id());
		                          					String student_id = obj_transport_Table_Model.getStudent_id(); */
		%>
           

		<!-- main content -->
		<section class="main-content">

			<!-- content wrapper -->
			<div class="content-wrap">

				<div class="row mg-b">
					<div class="col-xs-6">
						<h3 class="no-margin">Edit Transport Details : <b><%=obj_transport_Use_Bean.getStaff_name()%></b></h3>

					</div>
					<a
						href="<%=Common_Things.url%>/add-staff/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna"%>"
						class="btn btn-info">Add Staff</a> <a
						href="<%=Common_Things.url%>/staff-search/?kou=<%=12%>"
						class="btn btn-info">Search Staff</a>

				</div>

				<div class="col-lg-6">





					<%
					String message = (String) session.getAttribute("hostel_result_message");
					if (message != null) {
					%>

					<div class="alert alert-success">
						<%=message%>
					</div>


					<%
					session.removeAttribute("add_student_message");
					}
					%>








					<section class="panel">
						<header class="panel-heading">Edit Transport Details</header>
						<div class="panel-body">
						

							<form action="<%=Common_Things.url%>/edit-transport-controller/?tid=<%=obj_transport_Use_Bean.getTransport_id()%>"
								class="form-horizontal" role="form" name="myForm"
								onsubmit="return validateForm()">

<%-- 								<input type="hidden" name="student_id" value="<%=obj_Hostel_Use_Bean.getHostel_id()%>"> --%>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Staff
										Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="staff_name"
											data-parsley-required="true" value="<%=obj_transport_Use_Bean.getStaff_name()%>"
											data-parsley-trigger="change" placeholder="Name"
											readonly="readonly">
									</div>

								</div>


								<hr>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Transport ID</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="transport_id"
											data-parsley-required="true" value="<%=obj_transport_Use_Bean.getTransport_id()%>"
											data-parsley-trigger="change" placeholder="Transport ID"
											readonly="readonly">
									</div>

								</div>


								<hr>




								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Admission
										No </label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="admission_no"
											data-parsley-required="true" value="<%=obj_transport_Use_Bean.getAdmission_no()%>"
											data-parsley-trigger="change" placeholder="Admition No"
											readonly="readonly">
									</div>

								</div>


								<hr>








								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Pickup Point</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Pickup Point"
											name="pickup_point" value="<%=obj_transport_Use_Bean.getPickup_point()%>">
									</div>
								</div>
								<hr>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Pickup Time</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="pickup_time"
											name="pickup_time" value="<%=obj_transport_Use_Bean.getPickup_time()%>">
									</div>
								</div>
								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Licernce Plate</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="licernce_plate"
											name="licernce_plate" value="<%=obj_transport_Use_Bean.getLicernce_plate()%>">
									</div>
								</div>
								 <hr>  
                                                     <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Contact Number</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="contact_number"
											name="contact_number" value="<%=obj_transport_Use_Bean.getContact_number()%>">
									</div>
								</div>
								<hr>
								
								    <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Driver Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="driver_name"
											name="driver_name" value="<%=obj_transport_Use_Bean.getDriver_name()%>">
									</div>
								</div>
								<hr>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Diver Contact</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="diver_contact_number"
											name="diver_contact_number" value="<%=obj_transport_Use_Bean.getDiver_contact_number()%>">
									</div>
								</div>
								<hr>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Diver Nic</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="diver_nic"
											name="diver_nic" value="<%=obj_transport_Use_Bean.getDiver_nic()%>">
									</div>
								</div>
								<hr>
								
								
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Vehicle Type</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="vehicle_type"
											name="vehicle_type" value="<%=obj_transport_Use_Bean.getVehicle_type()%>">
									</div>
								</div>
						<hr>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-15">
								<button type="submit" class="btn btn-info">Edit Transport
									Report</button>
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

