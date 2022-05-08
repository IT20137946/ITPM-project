<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<%@page import="home_page_model.clinic_table.Clinic_Table_Model"%>
<%@page import="common.Common_Things"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<jsp:useBean id="obj_Staff_Use_Bean" class="common_use_bean.Clinic_Use_Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj_Staff_Use_Bean"/>
	
	<%
		Clinic_Table_Model obj_Staff_Table_Model=new Clinic_Table_Model();
			     
			   int flag=obj_Staff_Table_Model.insert_clinic(obj_Staff_Use_Bean);
			   
			   if(flag==1){
				   
			
			session.setAttribute("add_clinic_message"," Added Successfully");
				
			
			
			   }else{

			 session.setAttribute("add_clinic_message","Failed");
				 
			   }
		%>
		
		
		 
		  
		  		 <script type="text/javascript">
						window.location.href="<%=Common_Things.url%>/add-clinic/";
				</script>
	
	
	  
</body>
</html>