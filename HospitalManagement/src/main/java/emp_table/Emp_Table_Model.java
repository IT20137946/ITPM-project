package emp_table;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;


import common.DBConnection_SMS_Portal;
import common_use_bean.Employee_Use_Bean;
import common_use_bean.Sequence_Emp_Id;



public class Emp_Table_Model {
	public int insert_emp(Employee_Use_Bean obj_Emp_Use_Bean){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		int flag=0;
		
		
		TimeZone.setDefault(TimeZone.getTimeZone("Asia/Colombo"));
		SimpleDateFormat format = new SimpleDateFormat("dd-MMM-yyyy hh:mm:ss a");
		 
		  Date today4 = new Date();
		  String date4 = format.format(today4);
	try { 
		
		String query="insert into employee_table (" +
				"emp_id," +
				"emp_no," +
				"emp_name," +
				"nic," +
				"address," +
				"added_by," +
				"added_on,"+
				"dob,"+
				"contact_no,"+
				"email,gender" +
				") values(?,?,?,?,?,?," +
					"?,?,?,?,?)";
			ps=connection.prepareStatement(query);
		
			Sequence_Emp_Id obj_Sequence_Emp_id=new Sequence_Emp_Id();
			
			
			
			ps.setString(1,obj_Sequence_Emp_id.get_emp_id());
			ps.setString(2,obj_Emp_Use_Bean.getEmp_no());
			ps.setString(3,obj_Emp_Use_Bean.getEmp_name());
			ps.setString(4,obj_Emp_Use_Bean.getNic());
			ps.setString(5,obj_Emp_Use_Bean.getAddress());
			ps.setString(6,obj_Emp_Use_Bean.getAdded_by());
			ps.setString(7,date4);
			ps.setString(8,obj_Emp_Use_Bean.getDob());
			ps.setString(9,obj_Emp_Use_Bean.getContact_no());
			ps.setString(10,obj_Emp_Use_Bean.getEmail());
			ps.setInt(11,obj_Emp_Use_Bean.getGender());
			
			    System.out.println(ps);
			    
			    
			 flag=ps.executeUpdate();
			 
			 
		
		
	 }catch(Exception e){
		e.printStackTrace();
	}finally{
		if(connection!=null){
			try {
					connection.close();
				}
			 	catch (Exception e2) {
				// TODO: handle exception
			 	}
		}
		if(ps!=null){
			try {
				
				ps.close();
				}
			 catch (Exception e2) {
				// TODO: handle exception
			}
		}
	
}
	
	return flag;

	}	
	
	public int delete_emp(String emp_id) {
	    Connection connection = null;
	    DBConnection_SMS_Portal obj_DBConnection_SMS_Portal = new DBConnection_SMS_Portal();
	    connection = obj_DBConnection_SMS_Portal.getConnection();
	    PreparedStatement ps = null;
	    int flag = 0;

	    try {
	        
	        String query = "delete from employee_table where emp_id=?";

	        ps = connection.prepareStatement(query);
	        ps.setString(1, emp_id);

	        System.out.println(ps);

	        flag = ps.executeUpdate();
	        
	        
	        System.out.println("flag: "+flag);


	        ps.executeUpdate();

	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        if (connection != null) {
	            try {
	                connection.close();
	            } catch (Exception e2) {
	                // TODO: handle exception
	            }
	        }
	        if (ps != null) {
	            try {

	                ps.close();
	            } catch (Exception e2) {
	                // TODO: handle exception
	            }
	        }

	    }

	    return flag;

	}

	
	public int edit_emp(Employee_Use_Bean obj_Emp_Use_Bean){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		int flag=0;
		
		
		
	try { 
		
		String query="update employee_table set " +
				"emp_no=?," +
				"emp_name=?," +
				"nic=?," +
				"address=?," +
				"dob=?," +
				"contact_no=?," +
				"gender=?," +
				"email=? where emp_id=?";
			ps=connection.prepareStatement(query);
			ps.setString(1,obj_Emp_Use_Bean.getEmp_no());
			ps.setString(2,obj_Emp_Use_Bean.getEmp_name());
			ps.setString(3,obj_Emp_Use_Bean.getNic());
			ps.setString(4,obj_Emp_Use_Bean.getAddress());
			ps.setString(5,obj_Emp_Use_Bean.getDob());
			ps.setString(6,obj_Emp_Use_Bean.getContact_no());
			ps.setInt(7,obj_Emp_Use_Bean.getGender());
			ps.setString(8,obj_Emp_Use_Bean.getEmail());
			ps.setString(9,obj_Emp_Use_Bean.getEmp_id());
			
			    System.out.println(ps);
			    
			    
			 flag=ps.executeUpdate();
			 
			 query="emp_no=?,emp_name=? where emp_id=?";
				ps=connection.prepareStatement(query);
				
				ps.setString(1,obj_Emp_Use_Bean.getEmp_no());
				ps.setString(2, obj_Emp_Use_Bean.getEmp_name());
				ps.setString(3, obj_Emp_Use_Bean.getEmp_id());
					
				ps.executeUpdate();
			 
		
		
	 }catch(Exception e){
		e.printStackTrace();
	}finally{
		if(connection!=null){
			try {
					connection.close();
				}
			 	catch (Exception e2) {
				// TODO: handle exception
			 	}
		}
		if(ps!=null){
			try {
				
				ps.close();
				}
			 catch (Exception e2) {
				// TODO: handle exception
			}
		}
	
}
	
	return flag;

	}	
	
	
	
	
	
	
	
	public List<Employee_Use_Bean> get_all_recently_added_emp(){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Employee_Use_Bean> list=new ArrayList<Employee_Use_Bean>();
	try { 
		
		String query="select * from employee_table order by added_on desc limit 20";
		ps=connection.prepareStatement(query);
		
		
		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		while(rs.next()){
			Employee_Use_Bean obj_Emp_Use_Bean=new Employee_Use_Bean();
			obj_Emp_Use_Bean.setEmp_no(rs.getString("emp_no"));
			obj_Emp_Use_Bean.setEmp_id(rs.getString("emp_id"));
			obj_Emp_Use_Bean.setEmp_name(rs.getString("emp_name"));
			list.add(obj_Emp_Use_Bean);
		}
		
	 }catch(Exception e){
		e.printStackTrace();
	}finally{
		if(connection!=null){
			try {
					connection.close();
				}
			 	catch (Exception e2) {
				// TODO: handle exception
			 	}
		}
		if(ps!=null){
			try {
				
				ps.close();
				}
			 catch (Exception e2) {
				// TODO: handle exception
			}
		}
	
}
	
	return list;

	}	
	
	
	
	public List<Employee_Use_Bean> search_result_emp(String search){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Employee_Use_Bean> list=new ArrayList<Employee_Use_Bean>();
	try { 
		
		String query="select * from employee_table where emp_no like ? or emp_name like ? or contact_no like ? order by emp_name desc limit 100";
		ps=connection.prepareStatement(query);
		ps.setString(1, "%"+search+"%");
		ps.setString(2, "%"+search+"%");
		ps.setString(3, "%"+search+"%");
//		ps.setString(4, "%"+search+"%");
		
		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		while(rs.next()){
			Employee_Use_Bean obj_Emp_Use_Bean=new Employee_Use_Bean();
			obj_Emp_Use_Bean.setEmp_no(rs.getString("emp_no"));
			obj_Emp_Use_Bean.setEmp_id(rs.getString("emp_id"));
			obj_Emp_Use_Bean.setEmp_name(rs.getString("emp_name"));
			obj_Emp_Use_Bean.setNic(rs.getString("nic"));
			obj_Emp_Use_Bean.setAddress(rs.getString("address"));
			obj_Emp_Use_Bean.setDob(rs.getString("dob"));
			obj_Emp_Use_Bean.setContact_no(rs.getString("contact_no"));
			obj_Emp_Use_Bean.setGender(rs.getInt("gender"));
			obj_Emp_Use_Bean.setEmail(rs.getString("email"));
			list.add(obj_Emp_Use_Bean);
		}
		
	 }catch(Exception e){
		e.printStackTrace();
	}finally{
		if(connection!=null){
			try {
					connection.close();
				}
			 	catch (Exception e2) {
				// TODO: handle exception
			 	}
		}
		if(ps!=null){
			try {
				
				ps.close();
				}
			 catch (Exception e2) {
				// TODO: handle exception
			}
		}
	
}
	
	return list;

	}	
	
	
	public Employee_Use_Bean get_complete_details_emp(String emp_id){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		Employee_Use_Bean obj_Emp_Use_Bean=new Employee_Use_Bean();
	try { 
		
		String query="select * from employee_table where emp_id=?";
		ps=connection.prepareStatement(query);
		ps.setString(1, emp_id);
		
		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		if(rs.next()){
			
			obj_Emp_Use_Bean.setEmp_no(rs.getString("emp_no"));
			obj_Emp_Use_Bean.setEmp_id(rs.getString("emp_id"));
			obj_Emp_Use_Bean.setEmp_name(rs.getString("emp_name"));
			obj_Emp_Use_Bean.setNic(rs.getString("nic"));
			obj_Emp_Use_Bean.setAddress(rs.getString("address"));
			obj_Emp_Use_Bean.setDob(rs.getString("dob"));
			obj_Emp_Use_Bean.setContact_no(rs.getString("contact_no"));
			obj_Emp_Use_Bean.setGender(rs.getInt("gender"));
			obj_Emp_Use_Bean.setEmail(rs.getString("email"));
			
		}
		
	 }catch(Exception e){
		e.printStackTrace();
	}finally{
		if(connection!=null){
			try {
					connection.close();
				}
			 	catch (Exception e2) {
				// TODO: handle exception
			 	}
		}
		if(ps!=null){
			try {
				
				ps.close();
				}
			 catch (Exception e2) {
				// TODO: handle exception
			}
		}
		if(rs!=null){
			try {
				
				rs.close();
				}
			 catch (Exception e2) {
				// TODO: handle exception
			}
		}
	
}
	
	return obj_Emp_Use_Bean;

	}	
	
	
	
	public List<Employee_Use_Bean> get_all_emp(int lim){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Employee_Use_Bean> list=new ArrayList<Employee_Use_Bean>();
	try { 
		
		String query="select * from employee_table order by emp_name limit "+(lim*100)+",100";
		ps=connection.prepareStatement(query);

		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		while(rs.next()){
			Employee_Use_Bean obj_Emp_Use_Bean=new Employee_Use_Bean();
			obj_Emp_Use_Bean.setEmp_no(rs.getString("emp_no"));
			obj_Emp_Use_Bean.setEmp_id(rs.getString("emp_id"));
			obj_Emp_Use_Bean.setEmp_name(rs.getString("emp_name"));
			obj_Emp_Use_Bean.setNic(rs.getString("nic"));
			obj_Emp_Use_Bean.setAddress(rs.getString("address"));
			obj_Emp_Use_Bean.setDob(rs.getString("dob"));
			obj_Emp_Use_Bean.setContact_no(rs.getString("contact_no"));
			obj_Emp_Use_Bean.setGender(rs.getInt("gender"));
			obj_Emp_Use_Bean.setEmail(rs.getString("email"));
			list.add(obj_Emp_Use_Bean);
		}
		
	 }catch(Exception e){
		e.printStackTrace();
	}finally{
		if(connection!=null){
			try {
					connection.close();
				}
			 	catch (Exception e2) {
				// TODO: handle exception
			 	}
		}
		if(ps!=null){
			try {
				
				ps.close();
				}
			 catch (Exception e2) {
				// TODO: handle exception
			}
		}
	
}
	
	return list;

	}	
	
	
}