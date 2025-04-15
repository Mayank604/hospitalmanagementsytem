package com.dao;

import java.util.ArrayList; // ✅ Correct import
import java.util.List;     // ✅ Correct import
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.doctor;

public class DoctorDao {
	private Connection conn;

	public DoctorDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean registerDoctor(doctor d) {
		boolean f= false;
		
		try {
			String sql="insert into doctor(full_name, dob, qualification, specialist, email, mobno, password) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, d.getFullName());
			ps.setString(2, d.getDob());
			ps.setString(3, d.getQualification());
			ps.setString(4, d.getSpecialist());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMobNo());
			ps.setString(7, d.getPassword());
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public List<doctor> getAllDoctor(){
		List<doctor> list=new ArrayList<doctor>();
		doctor d=null;
		try {
			String sql="select * from doctor order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				d=new doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobNo(rs.getString(7));
				d.setPassword(rs.getString(8));
				list.add(d);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	public doctor getDoctorById(int id){
		
		doctor d=null;
		try {
			String sql="select * from doctor where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				d=new doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobNo(rs.getString(7));
				d.setPassword(rs.getString(8));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return d;
	}
	
	
	
	public boolean updateDoctor(doctor d) {
		
		boolean f= false;
		
		try {
			String sql= "update doctor set full_name=?, dob=?, qualification=?, specialist=?, email=?, mobno=?, password=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, d.getFullName());
			ps.setString(2, d.getDob());
			ps.setString(3, d.getQualification());
			ps.setString(4, d.getSpecialist());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMobNo());
			ps.setString(7, d.getPassword());
			ps.setInt(8, d.getId());
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public boolean deleteDoctor(int id) {
		boolean f = false ;
				try {
					
					String sql = "delete from doctor where id=?";
					PreparedStatement ps= conn.prepareStatement(sql);
					ps.setInt(1, id);
					
					int i = ps.executeUpdate();
					if(i ==1) {
						f = true;
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				return f;
	}
}
