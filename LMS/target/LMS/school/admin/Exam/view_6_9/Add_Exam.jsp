<!DOCTYPE html>


<%@page import="student_table.Student_Table_Model"%>
<%@page import="common_use_bean.Student_Use_Bean"%><html class="no-js">

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
		String student_id = (String) request.getParameter("id");
		String Student_name = (String) request.getParameter("n");
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
						href="<%=Common_Things.url%>/add-student/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna"%>"
						class="btn btn-info">Add Student</a> <a
						href="<%=Common_Things.url%>/student-search/?kou=<%=12%>"
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
						<header class="panel-heading">Add Exam Result Grade 6 -
							9</header>
						<div class="panel-body">

							<form action="<%=Common_Things.url%>/exam-result-controller/"
								class="form-horizontal" role="form" name="myForm"
								onsubmit="return validateForm()">

								<input type="hidden" name="student_id" value="<%=student_id%>">

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Student
										Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="student_name"
											data-parsley-required="true" value="<%=Student_name%>"
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


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Grade</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Grade"
											name="grade" required>
									</div>
								</div>




								<hr>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Semester</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"
											placeholder="Semester | 1, 2 or 3" data-toggle="tooltip" data-placement="bottom" title="Semester | 1, 2 or 3" name="semester">
									</div>
								</div>
								<hr>
								<hr>






								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Subjects</label>
									<div class="col-sm-10">
										<label for="inputEmail3" class="col-sm-2 control-label">Marks</label>
									</div>
								</div>
								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Sinhala</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Sinhala"
											name="sinnhala" required>
									</div>
								</div>
								<hr>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Religon</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Religon"
											name="religon" required>
									</div>
								</div>
								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">History</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="History"
											name="history" required>
									</div>
								</div>
								<hr>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Maths</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Maths"
											name="maths" required>
									</div>
								</div>
								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">English</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="English"
											name="english" required>
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Science</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Science"
											name="science" required>
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Geography</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"
											placeholder="Geography" name="geography" required>
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Civic
										Education</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"
											placeholder="Civic Education" name="civic_education" required>
									</div>
								</div>




								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Health</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Health"
											name="health" required>
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Tamil</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Tamil"
											name="tamil" required>
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">PTS</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="PTS"
											name="pts" required>
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Bucket
										Subject</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"
											placeholder="Bucket Subject" name="bucket_subject" required>
									</div>
								</div>
						</div>
						<hr>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-15">
								<button type="submit" class="btn btn-default">Add Exam
									Report</button>
							</div>
						</div>


						</form>
				</div>


				<%
				String search = (String) request.getParameter("search");

				if (search != null && !search.equals("")) {
				%>

				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<div class="panel-body">

								<div class="col-lg-12">
									<section class="panel panel-primary">
										<div class="panel-heading">
											Search Student :
											<%=search%>

										</div>
										<ul class="list-group">


											<table class="table table-hover no-margin">
												<thead>
													<tr>
														<th>#</th>
														<th>Admission No</th>
														<th>Name</th>
														<th>Grade</th>
														<th>Section</th>
														<th>Status</th>

													</tr>
												</thead>
												<tbody>



													<%
													Student_Table_Model obj_Student_Table_Model = new Student_Table_Model();
													List<Student_Use_Bean> list_students = obj_Student_Table_Model.search_result_student(search);

													if (list_students != null) {
														Iterator<Student_Use_Bean> it_list_students = list_students.iterator();
														Student_Use_Bean obj_Student_Use_Bean = new Student_Use_Bean();
														int temp_count = 1;
														while (it_list_students.hasNext()) {
															obj_Student_Use_Bean = it_list_students.next();
													%>


													<tr>
														<td><%=temp_count++%></td>
														<td><%=obj_Student_Use_Bean.getAdmission_no()%></td>
														<td><a
															href="<%=Common_Things.url%>/complete-details-student/?lm=<%=obj_Student_Use_Bean.getStudent_id()%>"
															class="btn btn-warning btn-outline btn-rounded"><%=obj_Student_Use_Bean.getStudent_name()%></a>
														</td>
														<td><%=obj_Student_Use_Bean.getGrade()%></td>
														<td><%=obj_Student_Use_Bean.getSection()%></td>
														<td>
															<%
															if (obj_Student_Use_Bean.getStatus() == 1) {
																out.println("Active");
															} else {
																out.println("Not Active");
															}
															%>




														</td>
													</tr>





													<%
													}

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
