<!DOCTYPE html>


<%@page import="common_use_bean.Exam_Use_Bean_6_9"%>
<%@page import="Exam_Table_Model.Exam_Table_6_9_Model"%>
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
	String exam_id=(String)request.getParameter("eid");
		Exam_Table_Model.Exam_Table_6_9_Model obj_ExamTable_Model=new Exam_Table_Model.Exam_Table_6_9_Model();
	
		Exam_Use_Bean_6_9 obj_Exam_Results_Use_Bean=obj_ExamTable_Model.get_complete_exam_results_details_student(exam_id);
		System.out.println(obj_Exam_Results_Use_Bean.getStudent_name());
		System.out.println(" Student ID : "+ obj_Exam_Results_Use_Bean.getStudent_id());
		String student_id = obj_Exam_Results_Use_Bean.getStudent_id();
%>
           

		<!-- main content -->
		<section class="main-content">

			<!-- content wrapper -->
			<div class="content-wrap">

				<div class="row mg-b">
					<div class="col-xs-6">
						<h3 class="no-margin">Edit Exam Results : <b><%=obj_Exam_Results_Use_Bean.getStudent_name()%></b></h3>

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
							11</header>
						<div class="panel-body">
						

							<form action="<%=Common_Things.url%>/edit-exam-result-controller/?sid=<%=student_id%>"
								class="form-horizontal" role="form" name="myForm"
								onsubmit="return validateForm()">

<%-- 								<input type="hidden" name="student_id" value="<%=obj_Exam_Results_Use_Bean.getExam_id()%>"> --%>

								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Student
										Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="student_name"
											data-parsley-required="true" value="<%=obj_Exam_Results_Use_Bean.getStudent_name()%>"
											data-parsley-trigger="change" placeholder="Name"
											readonly="readonly">
									</div>

								</div>


								<hr>
								
							<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Exam
										ID </label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="exam_id"
											data-parsley-required="true" value="<%=obj_Exam_Results_Use_Bean.getExam_id()%>"
											data-parsley-trigger="change" placeholder="Exam ID"
											readonly="readonly">
									</div>

								</div>

<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Admission
										No </label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="admission_no"
											data-parsley-required="true" value="<%=obj_Exam_Results_Use_Bean.getAdmission_no()%>"
											data-parsley-trigger="change" placeholder="Admition No"
											readonly="readonly">
									</div>

								</div>






								<hr>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Semester</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"
											placeholder="Semester | 1, 2 or 3" data-toggle="tooltip" data-placement="bottom" title="Semester | 1, 2 or 3" name="semester" value="<%=obj_Exam_Results_Use_Bean.getSemester()%>">
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
											name="sinnhala" value="<%=obj_Exam_Results_Use_Bean.getSinnhala()%>">
									</div>
								</div>
								<hr>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Religon</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Religon"
											name="religon" value="<%=obj_Exam_Results_Use_Bean.getReligon()%>">
									</div>
								</div>
								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">History</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="History"
											name="history" value="<%=obj_Exam_Results_Use_Bean.getHistory()%>">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Maths</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Maths"
											name="maths" value="<%=obj_Exam_Results_Use_Bean.getMaths()%>">
									</div>
								</div>
								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">English</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="English"
											name="english" value="<%=obj_Exam_Results_Use_Bean.getEnglish()%>">
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Science</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Science"
											name="science" value="<%=obj_Exam_Results_Use_Bean.getScience()%>">
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Geography</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"
											placeholder="Geography" name="geography" value="<%=obj_Exam_Results_Use_Bean.getGeography()%>">
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Civic
										Education</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"
											placeholder="Civic Education" name="civic_education" value="<%=obj_Exam_Results_Use_Bean.getCivic_education()%>">
									</div>
								</div>




								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Health</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Health"
											name="health" value="<%=obj_Exam_Results_Use_Bean.getHealth()%>">
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Tamil</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Tamil"
											name="tamil" value="<%=obj_Exam_Results_Use_Bean.getTamil()%>">
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">PTS</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="PTS"
											name="pts" value="<%=obj_Exam_Results_Use_Bean.getTamil()%>">
									</div>
								</div>

								<hr>


								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Bucket
										Subject</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"
											placeholder="Bucket Subject" name="bucket_subject" value="<%=obj_Exam_Results_Use_Bean.getBucket_subject()%>">
									</div>
								</div>
						</div>
						<hr>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-15">
								<button type="submit" class="btn btn-info">Edit Exam
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

