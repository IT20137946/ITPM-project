<!DOCTYPE html>


<%@page import="doc_table.Doc_Table_Model"%>
<%@page import="common_use_bean.Doc_Use_Bean"%><html class="no-js">

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
    
    
    
     <script type="text/javascript">
		function validateForm() {
		    var x = document.forms["myForm"]["admission_no"].value;
		    if (x==null || x=="") {
		        alert("Please enter Admission No");
		        return false;
		    }

 
		    var x = document.forms["myForm"]["patient_name"].value;
		    if (x==null || x=="") {
		        alert("Please enter Patient Name");
		        return false;
		    }

		   

		    var x = document.forms["myForm"]["nic"].value;
		    if (x==null || x=="") {
		        alert("Please enter nic");
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
               
           

           

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-6"> 
                            <h3 class="no-margin">Add Doctor Details</h3>
                            
                        </div>
                        <a href="<%=Common_Things.url%>/add-doc/?kou=<%="232323243kihnadfhlacfhdkaudfhnakcdfchakdfhbkavhdfhna"%>" class="btn btn-info">Add Doctor Details</a>
                        <a href="<%=Common_Things.url%>/doc-search/?kou=<%=12%>" class="btn btn-info">Search Doctor Details</a>
                      
                    </div>
 
                    <div class="col-lg-8">
                    
                    
                    
                    
                    
                    		<%
                                                                                                                        		String message=(String)session.getAttribute("add_doc_message");
                                                                                                                        							if(message!=null){
                                                                                                                        		%>
								
								 <div class="alert alert-success">
                                        <%=message%>
                                    </div>


							<%
							session.removeAttribute("add_doc_message");
												}
							%>
                    
                    
                    
                    
                    
                    
                    
                    
                                            <section class="panel">
                                                <header class="panel-heading">Add Doctor Details Form</header>
                                                <div class="panel-body">

                                                    <form action="<%=Common_Things.url%>/add-doc-control/" class="form-horizontal" role="form" name="myForm"  onsubmit="return validateForm()">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Doctor NO</label>
                                                            	<div class="col-sm-10">
                                                               	<input type="text" class="form-control" name="doc_no" data-parsley-required="true" data-parsley-trigger="change" placeholder="Doctor NO" required>
                                                               </div> 
                                                             
                                                        </div> 
                                                        
                                                       
                                                        	<hr>
                                                           
                                                       
                                                         
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Doctor Name</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Doctor Name" name="doc_name" required>
                                                            </div>
                                                        </div>
                                                         
                                                        <hr>
                                                           
                                                       
                                                         
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">NIC</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="NIC" name="nic" required>
                                                            </div>
                                                        </div>
                                                         
                                                       		<hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Address</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Address" name="address" required>
                                                            </div>
                                                        </div>
                                                        
                                                        <hr> 
                                                        
                                                        
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Date of Birth</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="MM/DD/YYYY" name="dob" pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" required>
                                                            </div>
                                                        </div>
                                                       		
                                                          	<hr> 
                                                        
                                                        
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Contact NO</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="0XXXXXXXXX" name="contact_no" required>
                                                            </div>
                                                        </div>
                                                       
                                                        
                                                        <hr>  
                                                      <div class="form-group">
                                                             <label for="inputPassword3" class="col-sm-2 control-label">Gender</label>
                                                            <div class="col-sm-10">
                                                                    <label> 
                                                                        <input type="radio" name="gender" value="1" checked="checked">Male
																		<input type="radio" name="gender" value="0">Female
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        
                                                         <hr> 
                                                        
                                                        
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                                            <div class="col-sm-10">
                                                                <input type="email" class="form-control" placeholder="Email" name="email" required>
                                                            </div>
                                                        </div>	
                                                        
                                                      
                                                    
                                                     
                                                    
                                                        
                                                         <hr>
                                                        
                                                        <div class="form-group">  
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                <button type="submit" class="btn btn-default">Add Details</button>
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
