<!DOCTYPE html>


<%@page import="transport_table.Transport_Table_Model"%>
<%@page import="common_use_bean.Transport_Use_Bean"%><html class="no-js">

<head>
<!-- meta -->
<meta charset="utf-8">



<!-- bootstrap -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css">
<!-- /bootstrap -->

<!-- core styles -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/animate.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendor/offline/theme.css">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendor/bootstrap-datepicker/datepicker.css">
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




<script> 
	jQuery(function(){  
		$("#search").autocomplete("<%=Common_Things.url%>
	/search-bar-code-form/");
	});
</script>





</head>

<!-- body -->

<body>



	<div class="app" data-sidebar="locked">
		<!-- top header -->

		<%@include file="../../common/tab.jsp"%>

		<%
		String staff_id = (String) request.getParameter("id");
		String Staff_name = (String) request.getParameter("n");
		String admission_no = (String) request.getParameter("ad");
		//Inventry_Table_Model obj_Inventry_Table_Model=new Inventry_Table_Model();
		//Book_Use_Bean obj_Book_Use_Bean=obj_Inventry_Table_Model.get_serial_status(inventry_sl);
		%>





		<!-- main content -->
		<section class="main-content">

			<!-- content wrapper -->
			<div class="content-wrap">

				<div class="row mg-b">
					<div class="col-xs-6">
						<h3 class="no-margin">Add Student</h3>

					</div>
					<a
						href="<%=Common_Things.url%>/add-staff/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna"%>"
						class="btn btn-info">Add Student</a> <a
						href="<%=Common_Things.url%>/staff-search/?kou=<%=12%>"
						class="btn btn-info">Search Student</a>

				</div>

				<div class="col-lg-6">





					<%
					String message = (String) session.getAttribute("exam_result_message");
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
						<header class="panel-heading">Add Transport Details</header>
						<div class="panel-body">

							<form action="<%=Common_Things.url%>/transport-controller/"
								class="form-horizontal" role="form" name="myForm"
								onsubmit="return validateForm()">

								<input type="hidden" name="staff_id" value="<%=staff_id%>">

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Staff
										Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="staff_name"
											data-parsley-required="true" value="<%=Staff_name%>"
											data-parsley-trigger="change" placeholder="Name"
											readonly="readonly">
									</div>

								</div>


								<hr>





								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Admission
										No </label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="admission_no"
											data-parsley-required="true" value="<%=admission_no%>"
											data-parsley-trigger="change" placeholder="Admition No"
											readonly="readonly">
									</div>

								</div>

								<hr>


								<!-- <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Staff Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Staff Name"
											name="staff_name">
									</div>
								</div> -->




								<hr>








								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Pickup Point</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Pickup Point"
											name="pickup_point" required>
									</div>
								</div>
								<hr>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Pickup Time</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="pickup_time"
											name="pickup_time" required>
									</div>
								</div>
								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Licernce Plate</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="licernce_plate"
											name="licernce_plate" required>
									</div>
								</div>
								 <hr>  
                                                     <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Contact Number</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="contact_number"
											name="contact_number" required>
									</div>
								</div>
								<hr>
								
								    <div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Driver Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="driver_name"
											name="driver_name" required>
									</div>
								</div>
								<hr>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Diver Contact</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="diver_contact_number"
											name="diver_contact_number" required>
									</div>
								</div>
								<hr>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Diver NIC</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="diver_nic"
											name="diver_nic" required>
									</div>
								</div>
								<hr>
								
								
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Vehicle Type</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="vehicle_type"
											name="vehicle_type" required>
									</div>
								</div>
								<hr>
								
							
								
								
                                                        
                                
						<hr>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-15">
								<button type="submit" class="btn btn-default">Add Transport Details</button>
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
	<script src="<%=Common_Things.url%>/vendor/jquery-1.11.0.min.js"></script>
	<script src="<%=Common_Things.url%>/bootstrap/js/bootstrap.js"></script>
	<!-- /core scripts -->

	<!-- page scripts -->
	<script
		src="<%=Common_Things.url%>/vendor/bootstrap-select/bootstrap-select.js"></script>
	<script src="<%=Common_Things.url%>/vendor/dropzone/dropzone.js"></script>
	<script src="<%=Common_Things.url%>/vendor/parsley.min.js"></script>
	<script src="<%=Common_Things.url%>/vendor/jquery.maskedinput.min.js"></script>
	<script src="<%=Common_Things.url%>/vendor/fuelux/checkbox.js"></script>
	<script src="<%=Common_Things.url%>/vendor/fuelux/radio.js"></script>
	<script src="<%=Common_Things.url%>/vendor/fuelux/wizard.js"></script>
	<script src="<%=Common_Things.url%>/vendor/fuelux/pillbox.js"></script>
	<script src="<%=Common_Things.url%>/vendor/fuelux/spinner.js"></script>
	<script src="<%=Common_Things.url%>/vendor/slider/bootstrap-slider.js"></script>
	<script
		src="<%=Common_Things.url%>/vendor/bootstrap-datepicker/bootstrap-datepicker.js"></script>
	<script src="<%=Common_Things.url%>/vendor/wysiwyg/jquery.hotkeys.js"></script>
	<script
		src="<%=Common_Things.url%>/vendor/wysiwyg/bootstrap-wysiwyg.js"></script>
	<script src="<%=Common_Things.url%>/vendor/switchery/switchery.js"></script>
	<!-- /page scripts -->

	<!-- theme scripts -->
	<script src="<%=Common_Things.url%>/js/off-canvas.js"></script>
	<script src="<%=Common_Things.url%>/vendor/offline/offline.min.js"></script>
	<script src="<%=Common_Things.url%>/js/main.js"></script>
	<!-- /theme scripts -->

	<script src="<%=Common_Things.url%>/js/forms.js"></script>
</body>
<!-- /body -->

</html>
