<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<%@page import="event_table.Event_Table_Model"%>
<%@page import="common.Common_Things"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<jsp:useBean id="obj_Event_Use_Bean" class="common_use_bean.Event_Use_Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj_Event_Use_Bean"/>
	
	<%
			
	
	  
	  
	   
	Event_Table_Model obj_Event_Table_Model=new Event_Table_Model();
	     
	   int flag=obj_Event_Table_Model.edit_event(obj_Event_Use_Bean);
	   
	   if(flag==1){
		   
			
			session.setAttribute("add_event_message","Updated Successfully");
		
			
			
	   }else{

			 session.setAttribute("add_event_message","Failed");
		 
	   } 
	   
	    
	   
		%>
		
		
		 
		  
		  		 <script type="text/javascript">
						window.location.href="<%=Common_Things.url%>/complete-details-event/?lm=<%=obj_Event_Use_Bean.getEvent_id()%>";
				</script>
	
	
	  
</body>
</html>