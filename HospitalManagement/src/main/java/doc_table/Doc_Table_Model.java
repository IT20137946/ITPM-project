package doc_table;

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
import common_use_bean.Doc_Use_Bean;
import common_use_bean.Sequence_Doc_Id;



public class Doc_Table_Model {
	public int insert_doc(Doc_Use_Bean obj_Doc_Use_Bean){
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
		
		String query="insert into doctor_table (" +
				"doc_id," +
				"doc_no," +
				"doc_name," +
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
		
			Sequence_Doc_Id obj_Sequence_Doc_id=new Sequence_Doc_Id();
			
			
			
			ps.setString(1,obj_Sequence_Doc_id.get_doc_id());
			ps.setString(2,obj_Doc_Use_Bean.getDoc_no());
			ps.setString(3,obj_Doc_Use_Bean.getDoc_name());
			ps.setString(4,obj_Doc_Use_Bean.getNic());
			ps.setString(5,obj_Doc_Use_Bean.getAddress());
			ps.setString(6,obj_Doc_Use_Bean.getAdded_by());
			ps.setString(7,date4);
			ps.setString(8,obj_Doc_Use_Bean.getDob());
			ps.setString(9,obj_Doc_Use_Bean.getContact_no());
			ps.setString(10,obj_Doc_Use_Bean.getEmail());
			ps.setInt(11,obj_Doc_Use_Bean.getGender());
			
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
	
	public int delete_doc(String doc_id) {
	    Connection connection = null;
	    DBConnection_SMS_Portal obj_DBConnection_SMS_Portal = new DBConnection_SMS_Portal();
	    connection = obj_DBConnection_SMS_Portal.getConnection();
	    PreparedStatement ps = null;
	    int flag = 0;

	    try {
	        
	        String query = "delete from doctor_table where doc_id=?";

	        ps = connection.prepareStatement(query);
	        ps.setString(1, doc_id);

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

	
	public int edit_doc(Doc_Use_Bean obj_Doc_Use_Bean){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		int flag=0;
		
		
		
	try { 
		
		String query="update doctor_table set " +
				"doc_no=?," +
				"doc_name=?," +
				"nic=?," +
				"address=?," +
				"dob=?," +
				"contact_no=?," +
				"gender=?," +
				"email=? where doc_id=?";
			ps=connection.prepareStatement(query);
			ps.setString(1,obj_Doc_Use_Bean.getDoc_no());
			ps.setString(2,obj_Doc_Use_Bean.getDoc_name());
			ps.setString(3,obj_Doc_Use_Bean.getNic());
			ps.setString(4,obj_Doc_Use_Bean.getAddress());
			ps.setString(5,obj_Doc_Use_Bean.getDob());
			ps.setString(6,obj_Doc_Use_Bean.getContact_no());
			ps.setInt(7,obj_Doc_Use_Bean.getGender());
			ps.setString(8,obj_Doc_Use_Bean.getEmail());
			ps.setString(9,obj_Doc_Use_Bean.getDoc_id());
			
			    System.out.println(ps);
			    
			    
			 flag=ps.executeUpdate();
			 
			 query="doc_no=?,doc_name=? where doc_id=?";
				ps=connection.prepareStatement(query);
				
				ps.setString(1,obj_Doc_Use_Bean.getDoc_no());
				ps.setString(2, obj_Doc_Use_Bean.getDoc_name());
				ps.setString(3, obj_Doc_Use_Bean.getDoc_id());
					
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
	
	
	
	
	
	
	
	public List<Doc_Use_Bean> get_all_recently_added_doc(){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Doc_Use_Bean> list=new ArrayList<Doc_Use_Bean>();
	try { 
		
		String query="select * from doctor_table order by added_on desc limit 20";
		ps=connection.prepareStatement(query);
		
		
		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		while(rs.next()){
			Doc_Use_Bean obj_Doc_Use_Bean=new Doc_Use_Bean();
			obj_Doc_Use_Bean.setDoc_no(rs.getString("doc_no"));
			obj_Doc_Use_Bean.setDoc_id(rs.getString("doc_id"));
			obj_Doc_Use_Bean.setDoc_name(rs.getString("doc_name"));
			list.add(obj_Doc_Use_Bean);
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
	
	
	
	public List<Doc_Use_Bean> search_result_doc(String search){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Doc_Use_Bean> list=new ArrayList<Doc_Use_Bean>();
	try { 
		
		String query="select * from doctor_table where doc_no like ? or doc_name like ? or contact_no like ? order by doc_name desc limit 100";
		ps=connection.prepareStatement(query);
		ps.setString(1, "%"+search+"%");
		ps.setString(2, "%"+search+"%");
		ps.setString(3, "%"+search+"%");
//		ps.setString(4, "%"+search+"%");
		
		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		while(rs.next()){
			Doc_Use_Bean obj_Doc_Use_Bean=new Doc_Use_Bean();
			obj_Doc_Use_Bean.setDoc_no(rs.getString("doc_no"));
			obj_Doc_Use_Bean.setDoc_id(rs.getString("doc_id"));
			obj_Doc_Use_Bean.setDoc_name(rs.getString("doc_name"));
			obj_Doc_Use_Bean.setNic(rs.getString("nic"));
			obj_Doc_Use_Bean.setAddress(rs.getString("address"));
			obj_Doc_Use_Bean.setDob(rs.getString("dob"));
			obj_Doc_Use_Bean.setContact_no(rs.getString("contact_no"));
			obj_Doc_Use_Bean.setGender(rs.getInt("gender"));
			obj_Doc_Use_Bean.setEmail(rs.getString("email"));
			list.add(obj_Doc_Use_Bean);
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
	
	
	public Doc_Use_Bean get_complete_details_doc(String doc_id){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		Doc_Use_Bean obj_Doc_Use_Bean=new Doc_Use_Bean();
	try { 
		
		String query="select * from doctor_table where doc_id=?";
		ps=connection.prepareStatement(query);
		ps.setString(1, doc_id);
		
		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		if(rs.next()){
			
			obj_Doc_Use_Bean.setDoc_no(rs.getString("doc_no"));
			obj_Doc_Use_Bean.setDoc_id(rs.getString("doc_id"));
			obj_Doc_Use_Bean.setDoc_name(rs.getString("doc_name"));
			obj_Doc_Use_Bean.setNic(rs.getString("nic"));
			obj_Doc_Use_Bean.setAddress(rs.getString("address"));
			obj_Doc_Use_Bean.setDob(rs.getString("dob"));
			obj_Doc_Use_Bean.setContact_no(rs.getString("contact_no"));
			obj_Doc_Use_Bean.setGender(rs.getInt("gender"));
			obj_Doc_Use_Bean.setEmail(rs.getString("email"));
			
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
	
	return obj_Doc_Use_Bean;

	}	
	
	
	
	public List<Doc_Use_Bean> get_all_doc(int lim){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Doc_Use_Bean> list=new ArrayList<Doc_Use_Bean>();
	try { 
		
		String query="select * from doctor_table order by doc_name limit "+(lim*100)+",100";
		ps=connection.prepareStatement(query);

		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		while(rs.next()){
			Doc_Use_Bean obj_Doc_Use_Bean=new Doc_Use_Bean();
			obj_Doc_Use_Bean.setDoc_no(rs.getString("doc_no"));
			obj_Doc_Use_Bean.setDoc_id(rs.getString("doc_id"));
			obj_Doc_Use_Bean.setDoc_name(rs.getString("doc_name"));
			obj_Doc_Use_Bean.setNic(rs.getString("nic"));
			obj_Doc_Use_Bean.setAddress(rs.getString("address"));
			obj_Doc_Use_Bean.setDob(rs.getString("dob"));
			obj_Doc_Use_Bean.setContact_no(rs.getString("contact_no"));
			obj_Doc_Use_Bean.setGender(rs.getInt("gender"));
			obj_Doc_Use_Bean.setEmail(rs.getString("email"));
			list.add(obj_Doc_Use_Bean);
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