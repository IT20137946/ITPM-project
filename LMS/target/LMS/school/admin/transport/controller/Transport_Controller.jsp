<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<%@page import="transport_table.Transport_Table_Model"%>
<%@page import="common.Common_Things"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<jsp:useBean id="obj_Transport_Use_Bean" class="common_use_bean.Transport_Use_Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj_Transport_Use_Bean"/>
	
	<%
		String sid=(String)request.getParameter("tid");
			
			  
			  
			   
	transport_table.Transport_Table_Model obj_Transport_Table_Model=new transport_table.Transport_Table_Model();
						
// 			System.out.println(" Edit Hostel Results Student Name : " + obj_Hostel_Use_Bean.getStudent_name());
// 			System.out.println(" Edit Hostel Results Student Name : " + obj_Hostel_Use_Bean.getHostel_id());
// 			System.out.println(" Edit Hostel Results Student IDD : " + obj_Hostel_Use_Bean.getStudent_id());

			     
			   int flag=obj_Transport_Table_Model.insert_transport(obj_Transport_Use_Bean);
			   
			   if(flag==1){
				   
			
			session.setAttribute("Edit_exam_message","Hostel Edited Successfully");
				
			
			
			   }else{

			 session.setAttribute("Edit_exam_message","Failed");
				 
			   }
		%>
		
				  
		  		 <script type="text/javascript">
						window.location.href="<%=Common_Things.url%>/view-all-staff/";
				</script>
	
	
	
	  
</body>
</html>