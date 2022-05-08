package home_page_model.clinic_table;

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
import common_use_bean.Clinic_Use_Bean;
import common_use_bean.Sequence_Clinic_Id;



public class Clinic_Table_Model {
	public int insert_clinic(Clinic_Use_Bean obj_Clinic_Use_Bean){
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
		
		String query="insert into clinic_table (" +
				"clinic_id," +
				"patient_name," +
				"doctor_name," +
				"time," +
				"doc," +
				"added_by," +
				"added_on,clinic_no,type" +
				") values(?,?,?,?," +
					"?,?,?,?,?)";
			ps=connection.prepareStatement(query);
		
			Sequence_Clinic_Id obj_Sequence_Clinic_id=new Sequence_Clinic_Id();
			
			
			
			ps.setString(1,obj_Sequence_Clinic_id.get_clinic_id());
			ps.setString(2,obj_Clinic_Use_Bean.getPatient_name());
			ps.setString(3,obj_Clinic_Use_Bean.getDoctor_name());
			ps.setString(4,obj_Clinic_Use_Bean.getTime());
			ps.setString(5,obj_Clinic_Use_Bean.getDoc());
			ps.setString(6,obj_Clinic_Use_Bean.getAdded_by());
			ps.setString(7,date4);
			ps.setString(8,obj_Clinic_Use_Bean.getClinic_no());
			ps.setString(9,obj_Clinic_Use_Bean.getType());
			
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
	
	public int delete_clinic(String clinic_id) {
	    Connection connection = null;
	    DBConnection_SMS_Portal obj_DBConnection_SMS_Portal = new DBConnection_SMS_Portal();
	    connection = obj_DBConnection_SMS_Portal.getConnection();
	    PreparedStatement ps = null;
	    int flag = 0;

	    try {
	        
	        String query = "delete from clinic_table where clinic_id=?";

	        ps = connection.prepareStatement(query);
	        ps.setString(1, clinic_id);

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

	
	public int edit_clinic(Clinic_Use_Bean obj_Clinic_Use_Bean){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		int flag=0;
		
		
		
	try { 
		
		String query="update clinic_table set " +
				"patient_name=?," +
				"doctor_name=?," +
				"time=?," +
				"type=?," +
				"doc=?," +
				"clinic_no=? where clinic_id=?";
			ps=connection.prepareStatement(query);
			ps.setString(1,obj_Clinic_Use_Bean.getPatient_name());
			ps.setString(2,obj_Clinic_Use_Bean.getDoctor_name());
			ps.setString(3,obj_Clinic_Use_Bean.getTime());
			ps.setString(4,obj_Clinic_Use_Bean.getType());
			ps.setString(5,obj_Clinic_Use_Bean.getDoc());
			ps.setString(6,obj_Clinic_Use_Bean.getClinic_no());
			ps.setString(7,obj_Clinic_Use_Bean.getClinic_id());
			
			    System.out.println(ps);
			    
			    
			 flag=ps.executeUpdate();
			 
			 query="clinic_no=?,patient_name=? where clinic_id=?";
				ps=connection.prepareStatement(query);
				
				ps.setString(1,obj_Clinic_Use_Bean.getClinic_no());
				ps.setString(2, obj_Clinic_Use_Bean.getPatient_name());
				ps.setString(3, obj_Clinic_Use_Bean.getClinic_id());
					
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
	
	
	
	
	
	
	
	public List<Clinic_Use_Bean> get_all_recently_added_clinic(){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Clinic_Use_Bean> list=new ArrayList<Clinic_Use_Bean>();
	try { 
		
		String query="select * from clinic_table order by added_on desc limit 20";
		ps=connection.prepareStatement(query);
		
		
		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		while(rs.next()){
			Clinic_Use_Bean obj_Clinic_Use_Bean=new Clinic_Use_Bean();
			obj_Clinic_Use_Bean.setClinic_no(rs.getString("clinic_no"));
			obj_Clinic_Use_Bean.setClinic_id(rs.getString("clinic_id"));
			obj_Clinic_Use_Bean.setPatient_name(rs.getString("patient_name"));
			list.add(obj_Clinic_Use_Bean);
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
	
	
	
	public List<Clinic_Use_Bean> search_result_clinic(String search){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Clinic_Use_Bean> list=new ArrayList<Clinic_Use_Bean>();
	try { 
		
		String query="select * from clinic_table where clinic_no like ? or patient_name like ? or time like ? order by patient_name desc limit 100";
		ps=connection.prepareStatement(query);
		ps.setString(1, "%"+search+"%");
		ps.setString(2, "%"+search+"%");
		ps.setString(3, "%"+search+"%");
//		ps.setString(4, "%"+search+"%");
		
		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		while(rs.next()){
			Clinic_Use_Bean obj_Clinic_Use_Bean=new Clinic_Use_Bean();
			obj_Clinic_Use_Bean.setClinic_no(rs.getString("clinic_no"));
			obj_Clinic_Use_Bean.setClinic_id(rs.getString("clinic_id"));
			obj_Clinic_Use_Bean.setPatient_name(rs.getString("patient_name"));
			obj_Clinic_Use_Bean.setDoctor_name(rs.getString("doctor_name"));
			obj_Clinic_Use_Bean.setTime(rs.getString("time"));
			obj_Clinic_Use_Bean.setDoc(rs.getString("doc"));
			obj_Clinic_Use_Bean.setType(rs.getString("type"));
			list.add(obj_Clinic_Use_Bean);
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
	
	
	public Clinic_Use_Bean get_complete_details_clinic(String clinic_id){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		Clinic_Use_Bean obj_Clinic_Use_Bean=new Clinic_Use_Bean();
	try { 
		
		String query="select * from clinic_table where clinic_id=?";
		ps=connection.prepareStatement(query);
		ps.setString(1, clinic_id);
		
		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		if(rs.next()){
			
			obj_Clinic_Use_Bean.setClinic_no(rs.getString("clinic_no"));
			obj_Clinic_Use_Bean.setClinic_id(rs.getString("clinic_id"));
			obj_Clinic_Use_Bean.setPatient_name(rs.getString("patient_name"));
			obj_Clinic_Use_Bean.setDoctor_name(rs.getString("doctor_name"));
			obj_Clinic_Use_Bean.setTime(rs.getString("time"));
			obj_Clinic_Use_Bean.setDoc(rs.getString("doc"));
			obj_Clinic_Use_Bean.setType(rs.getString("type"));
			
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
	
	return obj_Clinic_Use_Bean;

	}	
	
	
	
	public List<Clinic_Use_Bean> get_all_clinic(int lim){
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_SMS_Portal=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_SMS_Portal.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Clinic_Use_Bean> list=new ArrayList<Clinic_Use_Bean>();
	try { 
		
		String query="select * from clinic_table order by patient_name limit "+(lim*100)+",100";
		ps=connection.prepareStatement(query);

		System.out.println(ps);
		rs=ps.executeQuery();
		
		
		while(rs.next()){
			Clinic_Use_Bean obj_Clinic_Use_Bean=new Clinic_Use_Bean();
			obj_Clinic_Use_Bean.setClinic_no(rs.getString("clinic_no"));
			obj_Clinic_Use_Bean.setClinic_id(rs.getString("clinic_id"));
			obj_Clinic_Use_Bean.setPatient_name(rs.getString("patient_name"));
			obj_Clinic_Use_Bean.setDoctor_name(rs.getString("doctor_name"));
			obj_Clinic_Use_Bean.setTime(rs.getString("time"));
			obj_Clinic_Use_Bean.setDoc(rs.getString("doc"));
			obj_Clinic_Use_Bean.setType(rs.getString("type"));
			list.add(obj_Clinic_Use_Bean);
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