<!DOCTYPE html>

<%@page import="doc_table.Doc_Table_Model"%>
<%@page import="common_use_bean.Doc_Use_Bean"%>
<%@page import="home_page_model.Home_Page_Model"%>
<%@page import="common_use_bean.Home_Page_Use_Bean"%><html class="no-js">

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
    <!-- /core styles -->

    <!-- page styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/toastr/toastr.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- /page styles -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- load modernizer -->
    <script src="<%=request.getContextPath()%>/vendor/modernizr.js"></script>
    
    
    
    
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.2.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.autocomplete.js"></script>
   
    <script> 
	jQuery(function(){  
		$("#search").autocomplete("<%=Common_Things.url%>/search-form-doc/");
	});
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
                            <h3 class="no-margin">Doctor Search </h3>
                             
                        </div> 
                       <a href="<%=Common_Things.url%>/add-doc/" class="btn btn-info">Add Doctor Details</a>
                        <a href="<%=Common_Things.url%>/doc-search/" class="btn btn-info">Search Doctor Details</a>
                        <a href="<%=Common_Things.url%>/view-all-doc/<%=12%>" class="btn btn-info">View All Doctor Details</a>
                      
                    </div>             

                    
                                                


							


						
                    <div class="col-lg-6">
                    
                    
                    
                        
                    
                                            <section class="panel">
                                                <header class="panel-heading">Search Doctor</header>
                                                <div class="panel-body">

                                                    <form action="<%=Common_Things.url%>/doc-search/" class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Doctor Name </label>
                                                            	<div class="col-sm-10">
                                                               	<input type="text" class="form-control" name="search" id="search" data-parsley-required="true" data-parsley-trigger="change" placeholder="Doctor Search">
                                                               </div> 
                                                             
                                                        </div> 
                                                        
                                                       
                                                         
                                                     
                                                     <hr> 
                                                     
                                                         
                                                        </div>
                                                        <div class="form-group">   
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                <button type="submit" class="btn btn-default">Search Doctor</button>
                                                            </div>
                                                        </div>
                                                    </form>

                                                </div> 

<%
 Home_Page_Model obj_Home_Page_Model=new Home_Page_Model();
        					Home_Page_Use_Bean obj_Home_Page_Use_Bean=obj_Home_Page_Model.select_counts();
 %>
    					 
                    <%
    					                     String search=(String)request.getParameter("search");
    					                         					                         					                         					                                         
    					                         					                         					                         					                                         if(search!=null && !search.equals("")){
    					                     %>
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <div class="panel-body">
                                
                                    <div class="col-lg-12">
                                            <section class="panel panel-primary">
                                <div class="panel-heading">Search Doctor : <%=search%>
                                    
                                </div>
                                <ul class="list-group">
                                
                                
                                	 <table class="table table-hover no-margin">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Doctor No</th>
                                                <th>Doctor Name</th>
                                                <th>Contact Number</th>
                                                 <th>NIC</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
                                          
                                 
                                	<%
                                                                                                                                                      	Doc_Table_Model obj_Doc_Table_Model=new Doc_Table_Model();  
                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                       	                  	List<Doc_Use_Bean> list_doc=obj_Doc_Table_Model.search_result_doc(search);
                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                       	                                	 
                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                       	                                	
                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                       	                                	if(list_doc!=null){
                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                       	                                		Iterator<Doc_Use_Bean> it_list_doc=list_doc.iterator();
                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                       	                                		Doc_Use_Bean obj_Doc_Use_Bean=new Doc_Use_Bean();
                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                       	                                	int temp_count=1;
                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                       	                                		while(it_list_doc.hasNext()){
                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                                                                                                                                                      	                       	                                			obj_Doc_Use_Bean=it_list_doc.next();
                                                                                                                                                      	%>
 
                                	                                    
                                   			 <tr>
                                                <td><%=temp_count++ %></td>
                                                <td><%=obj_Doc_Use_Bean.getDoc_no() %></td>
                                               <td> <a href="<%=Common_Things.url %>/complete-details-doc/?lm=<%=obj_Doc_Use_Bean.getDoc_id() %>" class="btn btn-primary btn-xs"><%=obj_Doc_Use_Bean.getDoc_name() %></a>          </td>
                                               <td><%=obj_Doc_Use_Bean.getContact_no() %></td>
                                               <td><%=obj_Doc_Use_Bean.getNic() %></td>
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
      
</body>
<!-- /body -->

</html>
