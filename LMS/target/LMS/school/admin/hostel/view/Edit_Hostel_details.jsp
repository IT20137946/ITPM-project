<!DOCTYPE html>


<%@page import="common_use_bean.Hostel_Use_Bean"%>
<%@page import="hostel_Table_Model.Hostel_Table_Model"%>
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
	
		String hostel_id=(String)request.getParameter("hid");
													hostel_Table_Model.Hostel_Table_Model obj_Hostel_Table_Model=new hostel_Table_Model.Hostel_Table_Model();
		                          				
		                          					Hostel_Use_Bean obj_Hostel_Use_Bean=obj_Hostel_Table_Model.get_complete_hostel_details_student(hostel_id);
		                          					System.out.println(obj_Hostel_Use_Bean.getStudent_name());
		                          					System.out.println(" Student ID : "+ obj_Hostel_Use_Bean.getStudent_id());
		                          					String student_id = obj_Hostel_Use_Bean.getStudent_id();
		%>
           

		<!-- main content -->
		<section class="main-content">

			<!-- content wrapper -->
			<div class="content-wrap">

				<div class="row mg-b">
					<div class="col-xs-6">
						<h3 class="no-margin">Edit Hostel Details : <b><%=obj_Hostel_Use_Bean.getStudent_name()%></b></h3>

					</div>
					<a
						href="<%=Common_Things.url%>/add-student/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna"%>"
						class="btn btn-info">Add Student</a> <a
						href="<%=Common_Things.url%>/student-search/?kou=<%=12%>"
						class="btn btn-info">Search Student</a>

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
						<header class="panel-heading">Add Hostel Details</header>
						<div class="panel-body">
						

							<form action="<%=Common_Things.url%>/edit-hostel-controller/?sid=<%=student_id%>"
								class="form-horizontal" role="form" name="myForm"
								onsubmit="return validateForm()">

<%-- 								<input type="hidden" name="student_id" value="<%=obj_Hostel_Use_Bean.getHostel_id()%>"> --%>

								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Student
										Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="student_name"
											data-parsley-required="true" value="<%=obj_Hostel_Use_Bean.getStudent_name()%>"
											data-parsley-trigger="change" placeholder="Name"
											readonly="readonly">
									</div>

								</div>


								<hr>
								
							<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Hostel
										ID </label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="hostel_id"
											data-parsley-required="true" value="<%=obj_Hostel_Use_Bean.getHostel_id()%>"
											data-parsley-trigger="change" placeholder="Hostel ID"
											readonly="readonly">
									</div>

								</div>

<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Admission
										No </label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="admission_no"
											data-parsley-required="true" value="<%=obj_Hostel_Use_Bean.getAdmission_no()%>"
											data-parsley-trigger="change" placeholder="Admition No"
											readonly="readonly">
									</div>

								</div>


							
								<hr>




								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Bed Number</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Bed Number"
											name="bed_number" value="<%=obj_Hostel_Use_Bean.getBed_number()%>">
									</div>
								</div>
								<hr>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Locker Number</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Locker Number"
											name="locker_number" value="<%=obj_Hostel_Use_Bean.getLocker_number()%>">
									</div>
								</div>
								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Parent Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Parent Name"
											name="parent_name" value="<%=obj_Hostel_Use_Bean.getParent_name()%>">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Distance to School</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Distance to School"
											name="distance" value="<%=obj_Hostel_Use_Bean.getDistance()%>">
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
                                                         			if(obj_Hostel_Use_Bean.getStatus()==1){
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


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Description</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Description"
											name="description" value="<%=obj_Hostel_Use_Bean.getDescription()%>">
									</div>
								</div>

								<hr>


								<hr>

						</div>
						<hr>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-15">
								<button type="submit" class="btn btn-info">Edit Hostel
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

