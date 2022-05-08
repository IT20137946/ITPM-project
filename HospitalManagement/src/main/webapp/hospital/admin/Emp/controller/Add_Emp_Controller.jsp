<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!empTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<%@page import="emp_table.Emp_Table_Model"%>
<%@page import="common.Common_Things"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<jsp:useBean id="obj_Emp_Use_Bean" class="common_use_bean.Employee_Use_Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj_Emp_Use_Bean"/>
	
	<%
		Emp_Table_Model obj_Staff_Table_Model=new Emp_Table_Model();
    
  int flag=obj_Staff_Table_Model.insert_emp(obj_Emp_Use_Bean);
			   
			   if(flag==1){
				   
			
			session.setAttribute("add_emp_message","Employee Added Successfully");
				
			
			
			   }else{

			 session.setAttribute("add_emp_message","Failed");
				 
			   }
		%>
		
		
		 
		  
		  		 <script type="text/javascript">
						window.location.href="<%=Common_Things.url%>/add-emp/";
				</script>
	
	
	  
</body>
</html>