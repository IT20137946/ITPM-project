<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<%@page import="Exam_Table_Model.Exam_Table_10_11_Model"%>
<%@page import="common.Common_Things"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<jsp:useBean id="obj_Exam_Use_Bean" class="common_use_bean.Exam_Use_Bean_10_11"></jsp:useBean>
	<jsp:setProperty property="*" name="obj_Exam_Use_Bean"/>
	
	<%
		String sid=(String)request.getParameter("sid");
			
			  
			  
			   
			Exam_Table_Model.Exam_Table_10_11_Model obj_Exam_Table_Model=new Exam_Table_Model.Exam_Table_10_11_Model();
			
			System.out.println(" Edit Exam Results Student Name : " + obj_Exam_Use_Bean.getStudent_name());
			System.out.println(" Edit Exam Results Student Name : " + obj_Exam_Use_Bean.getExam_id());
			System.out.println(" Edit Exam Results Student IDD : " + obj_Exam_Use_Bean.getStudent_id());

			     
			   int flag=obj_Exam_Table_Model.insert_exam(obj_Exam_Use_Bean);
			   
			   if(flag==1){
				   
			
			session.setAttribute("Edit_exam_message","Exam Edited Successfully");
				
			
			
			   }else{

			 session.setAttribute("Edit_exam_message","Failed");
				 
			   }
		%>
		
				  
		  		 <script type="text/javascript">
						window.location.href="<%=Common_Things.url%>/view-all-students/";
				</script>
	
	
	
	  
</body>
</html>