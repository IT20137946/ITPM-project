<%@page import="hostel_Table_Model.Hostel_Table_Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<%@page import="student_table.Student_Table_Model"%>
<%@page import="common.Common_Things"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<jsp:useBean id="obj_Hostel_Use_Bean" class="common_use_bean.Hostel_Use_Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj_Hostel_Use_Bean"/>
	
	<%
	
	String hostel_id=(String)request.getParameter("hid");

		hostel_Table_Model.Hostel_Table_Model obj_Hostel_Table_Model=new hostel_Table_Model.Hostel_Table_Model();
			     
			   int flag=obj_Hostel_Table_Model.delete_hostel(hostel_id);
			   
			   if(flag==1){
				   
			
			session.setAttribute("add_student_message","Updated Successfully");
				
			
			
			   }else{

			 session.setAttribute("add_student_message","Failed");
				 
			   }
		%>
		
		
		 
		  
		  		 <script type="text/javascript">
		  		window.location.href="<%=Common_Things.url%>/view-all-students/";
				</script>
	
	
	  
</body>
</html>