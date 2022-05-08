package common;



import java.sql.Connection;
import java.sql.Statement;


import common_use_bean.Sequence_Doc_Id;
import common_use_bean.Sequence_Emp_Id;
import common_use_bean.Sequence_Clinic_Id;

public class Create_Table {

	public static void call_me() {
		Connection connection=null;
		DBConnection_SMS_Portal obj_DBConnection_LMC=new DBConnection_SMS_Portal();
		connection=obj_DBConnection_LMC.getConnection();
		Statement st=null;
		try {
			st=connection.createStatement();
				
				
				Sequence_Clinic_Id obj_Sequence_Clinic_Id=new Sequence_Clinic_Id();
				obj_Sequence_Clinic_Id.create_table();
				
				Sequence_Doc_Id obj_Sequence_Doc_Id=new Sequence_Doc_Id();
				obj_Sequence_Doc_Id.create_table();
				
				Sequence_Emp_Id obj_Sequence_Emp_Id=new Sequence_Emp_Id();
				obj_Sequence_Emp_Id.create_table();

				

				 st.execute("create table admin(" +
						"sl_no int(255) auto_increment," +
						"user_name varchar(100) not null," +
						"password varchar(100) not null," +
						"primary key(sl_no))");

				st.execute("insert into admin(user_name,password) values('admin','admin')");





				st.execute("create table doctor_table(" +
						"doc_id varchar(300) unique not null," +
						"doc_no varchar(300) unique not null," +
						"doc_name varchar(300) not null," +
						"nic varchar(300),"+
						"address varchar(300),"+
						"added_by varchar(300)," +
						"added_on varchar(300)," +
						"dob varchar(300),"+
						"contact_no varchar(300),"+
						"email varchar(300),"+
						"gender int(1) not null,"+
						"primary key(doc_id))");


				st.execute("create table employee_table(" +
						"emp_id varchar(300) unique not null," +
						"emp_no varchar(300) unique not null," +
						"emp_name varchar(300) not null," +
						"nic varchar(300),"+
						"address varchar(300),"+
						"added_by varchar(300)," +
						"added_on varchar(300)," +
						"dob varchar(300),"+
						"contact_no varchar(300),"+
						"email varchar(300),"+
						"gender int(1) not null,"+
						"primary key(emp_id))");

				st.execute("create table clinic_table(" +
						"clinic_id varchar(300) unique not null," +
						"clinic_no varchar(300) unique not null," +
						"patient_name varchar(300) not null," +
						"doc varchar(200),"+
						"doctor_name varchar(300),"+
						"added_by varchar(300)," +
						"added_on varchar(300)," +
						"type varchar(300),"+
						"time varchar(300),"+
						"primary key(clinic_id))");

			



		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(connection!=null){
					connection.close();
				}
			} catch (Exception e2) {
			}
			try {
				if(st!=null){
					st.close();
				}
			} catch (Exception e2) {
			}
		}
		System.out.println("all tables created");
	}



	public static void main(String[] args) {
		call_me();
	}



}
