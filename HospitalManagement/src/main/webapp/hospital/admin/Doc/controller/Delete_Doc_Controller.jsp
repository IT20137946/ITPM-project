<%@page import="doc_table.Doc_Table_Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<%@page import="common.Common_Things"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<jsp:useBean id="obj_Doc_Use_Bean" class="common_use_bean.Doc_Use_Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj_Doc_Use_Bean"/>
	
	<%
		String doc_id=(String)request.getParameter("lm");

			doc_table.Doc_Table_Model obj_Doc_Table_Model=new doc_table.Doc_Table_Model();
			     
			   int flag=obj_Doc_Table_Model.delete_doc(doc_id);
			   
			   if(flag==1){
				   
			
			session.setAttribute("add_doc_message","Updated Successfully");
				
			
			
			   }else{

			 session.setAttribute("add_doc_message","Failed");
				 
			   }
		%>
		
		
		 
		  
		  		 <script type="text/javascript">
		  		window.location.href="<%=Common_Things.url%>/view-all-doc/";
				</script>
	
	
	  
</body>
</html>