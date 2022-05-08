<!DOCTYPE html>

<%@page import="common_use_bean.Exam_Use_Bean_10_11"%>
<%@page import="Exam_Table_Model.Exam_Table_10_11_Model"%>
<%@page import="Issue_Table_Model.Issue_Table_Model"%>
<%@page import="common_use_bean.Book_Use_Bean"%>
<%@page import="common_use_bean.Issue_Use_Bean"%><html class="no-js">

<head>
<!-- meta -->
<meta charset="utf-8">



<link rel="stylesheet"
	href="<%=Common_Things.url%>/bootstrap/css/bootstrap.min.css">
<!-- /bootstrap -->

<!-- core styles -->
<link rel="stylesheet" href="<%=Common_Things.url%>/css/main.css">
<link rel="stylesheet" href="<%=Common_Things.url%>/css/animate.min.css">
<link rel="stylesheet"
	href="<%=Common_Things.url%>/vendor/offline/theme.css">
<!-- /core styles -->

<!-- page styles -->
<link rel="stylesheet"
	href="<%=Common_Things.url%>/vendor/bootstrap-select/bootstrap-select.css">
<link rel="stylesheet"
	href="<%=Common_Things.url%>/vendor/dropzone/dropzone.css">
<link rel="stylesheet"
	href="<%=Common_Things.url%>/vendor/slider/slider.css">
<link rel="stylesheet"
	href="<%=Common_Things.url%>/vendor/bootstrap-datepicker/datepicker.css">
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
	
	 <script> 
	jQuery(function(){  
		$("#search").autocomplete("<%=Common_Things.url%>/search-form-results/");
	});
   </script>


</head>

<!-- body -->

<body>



	<div class="app" data-sidebar="locked">
		<!-- top header -->

		<%@include file="../../common/tab.jsp"%>


		<%
                           			String student_id=(String)request.getParameter("id");
		System.out.println("Student ID Serch :" + student_id );

                           			                           				String student_name=(String)request.getParameter("n"); 
/*                            			                           				Exam_Table_Model.Exam_Table_10_11_Model obj_Exam_Table_Model=new Exam_Table_Model.Exam_Table_10_11_Model();
 */                           			                           			        	
/*                            			                           			        	List<Exam_Use_Bean_10_11> list_exam_results=obj_Exam_Table_Model.get_all_exam_detail_from_student_id(student_id);
 */                           			%>


		<!-- main content -->
		<section class="main-content">

			<!-- content wrapper -->
			<div class="content-wrap">

				<div class="row mg-b">
					<div class="col-xs-8">
					
						<h3 class="no-margin">
						<%
				
				
      				String sname=(String)request.getParameter("n"); 
						System.out.println("Student Name Serch :" + sname );


                                                                        %>
							Exam Results Filtered
						</h3>

					</div>
					<a
						href="<%=Common_Things.url%>/add-student/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna"%>"
						class="btn btn-info">Add Student</a>
						<a href="<%=Common_Things.url %>/view-all-students/<%=12 %>" class="btn btn-info">View All Students</a>

				</div>





				<%
				
				String search=(String)request.getParameter("search");


                                                                        %>

				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<div class="panel-body">

								<div class="col-lg-12">
									<section class="panel panel-primary">
										<div class="panel-heading">Exam Results Details</div>
										<div class="col-lg-6">
                    
                    
                    
                        
                    
                                            <section class="panel">
                                                <header class="panel-heading">Search Category</header>
                                                <div class="panel-body">

                                                    <form action="<%=Common_Things.url%>/results-search1/" class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Grade</label>
                                                            	<div class="col-sm-6">
                                                               	<input type="text" class="form-control" name="search" id="search" data-parsley-required="true" data-parsley-trigger="change" placeholder="Filter Results | Enter Grade">
                                                               </div> 
                                                               <div class="col-sm-2">
                                                               <button type="submit" class="form-control btn btn-default">Filter</button>
                                                               </div> 
                                                             
                                                        </div> 
                                                        
                                                       
                                                         
                                                     
                                                     <hr> 
                                                     
                                                         
                                                        </div>

                                                    </form>

                                                </div> 
										<ul class="list-group">


											<table class="table table-hover no-margin">
												<thead>
													<tr>
														<th>#</th>
														<th>ExamId</th>
														<th>Name</th>
														<th>Admisson No</th>
														<th>Section</th>
														<th>Grade</th>
														<th>Semester</th>
														<th>Sinhala</th>
														<th>Religon</th>
														<th>History</th>
														<th>Maths</th>
														<th>Eng</th>
														<th>Science</th>
														<th>B Subject 01</th>
                                                		<th>B Subject 02</th>
                                                		<th>B Subject 03</th>
														

													</tr>
												</thead>
												<tbody>



													<%
													
   			                           				Exam_Table_Model.Exam_Table_10_11_Model obj_Exam_Table_Model=new Exam_Table_Model.Exam_Table_10_11_Model();
		                       	                  	List<Exam_Use_Bean_10_11> list_exam_results=obj_Exam_Table_Model.search_result_exam(search);
		                       	                                	 
		                       	                                	
		                       	                                			
		                       	                                			
		                       	                                			
		                       	                                			if(list_exam_results!=null){
                  	                       	                                	
              	                       	                                		Iterator<Exam_Use_Bean_10_11> it_exam_results=list_exam_results.iterator();
              	                       	                                		Exam_Use_Bean_10_11 obj_Exam_Results_Bean=new Exam_Use_Bean_10_11();
              	                       	                                	int temp_count=1;
              	                       	                                		while(it_exam_results.hasNext()){
              	                       	                                			obj_Exam_Results_Bean=it_exam_results.next();
                                                                                                                                                      	
                                                                                                                                                      	%>


													<tr>
														<td><%=temp_count++ %></td>
														<td><%=obj_Exam_Results_Bean.getExam_id() %></td>
														<td><%=obj_Exam_Results_Bean.getStudent_name() %></td>
														<td><%=obj_Exam_Results_Bean.getAdmission_no() %></td>
														<td><%=obj_Exam_Results_Bean.getSection()%></td>
														<td><%=obj_Exam_Results_Bean.getGrade() %></td>
														<td><%=obj_Exam_Results_Bean.getSemester() %></td>
														<td><%=obj_Exam_Results_Bean.getSinnhala() %></td>
														<td><%=obj_Exam_Results_Bean.getReligon() %></td>
														<td><%=obj_Exam_Results_Bean.getHistory() %></td>
														<td><%=obj_Exam_Results_Bean.getMaths() %></td>
														<td><%=obj_Exam_Results_Bean.getEnglish() %></td>
														<td><%=obj_Exam_Results_Bean.getScience() %></td>
														<td><%=obj_Exam_Results_Bean.getBucket_subject_01() %></td>
                                               			<td><%=obj_Exam_Results_Bean.getBucket_subject_02() %></td>
                                                		<td><%=obj_Exam_Results_Bean.getBucket_subject_03() %></td>

														<td><a
															href="<%=Common_Things.url %>/update-exam-results/?eid=<%=obj_Exam_Results_Bean.getExam_id() %> "
															class="btn btn-success btn-xs">Update</a></td>

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
	<script
		src="<%=Common_Things.url %>/vendor/bootstrap-select/bootstrap-select.js"></script>
	<script src="<%=Common_Things.url %>/vendor/dropzone/dropzone.js"></script>
	<script src="<%=Common_Things.url %>/vendor/parsley.min.js"></script>
	<script src="<%=Common_Things.url %>/vendor/jquery.maskedinput.min.js"></script>
	<script src="<%=Common_Things.url %>/vendor/fuelux/checkbox.js"></script>
	<script src="<%=Common_Things.url %>/vendor/fuelux/radio.js"></script>
	<script src="<%=Common_Things.url %>/vendor/fuelux/wizard.js"></script>
	<script src="<%=Common_Things.url %>/vendor/fuelux/pillbox.js"></script>
	<script src="<%=Common_Things.url %>/vendor/fuelux/spinner.js"></script>
	<script src="<%=Common_Things.url %>/vendor/slider/bootstrap-slider.js"></script>
	<script
		src="<%=Common_Things.url %>/vendor/bootstrap-datepicker/bootstrap-datepicker.js"></script>
	<script src="<%=Common_Things.url %>/vendor/wysiwyg/jquery.hotkeys.js"></script>
	<script
		src="<%=Common_Things.url %>/vendor/wysiwyg/bootstrap-wysiwyg.js"></script>
	<script src="<%=Common_Things.url %>/vendor/switchery/switchery.js"></script>
	<!-- /page scripts -->

	<!-- theme scripts -->
	<script src="<%=Common_Things.url %>/js/off-canvas.js"></script>
	<script src="<%=Common_Things.url %>/vendor/offline/offline.min.js"></script>
	<script src="<%=Common_Things.url %>/js/main.js"></script>
	<script src="<%=Common_Things.url %>/js/forms.js"></script>
	<!-- /theme scripts -->

	
</body>
<!-- /body -->

</html>
