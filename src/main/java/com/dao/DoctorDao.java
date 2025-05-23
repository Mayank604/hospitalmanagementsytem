package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList; // ✅ Correct import
import java.util.List; // ✅ Correct import

import com.entity.doctor;

public class DoctorDao {
	private Connection conn;

	public DoctorDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean registerDoctor(doctor d) {
		boolean f = false;

		try {
			String sql = "insert into doctor(full_name, dob, qualification, specialist, email, mobno, password) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getFullName());
			ps.setString(2, d.getDob());
			ps.setString(3, d.getQualification());
			ps.setString(4, d.getSpecialist());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMobNo());
			ps.setString(7, d.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public List<doctor> getAllDoctor() {
		List<doctor> list = new ArrayList<doctor>();
		doctor d = null;
		try {
			String sql = "select * from doctor order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new doctor();
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
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public doctor getDoctorById(int id) {

		doctor d = null;
		try {
			String sql = "select * from doctor where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				d = new doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobNo(rs.getString(7));
				d.setPassword(rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return d;
	}

	public boolean updateDoctor(doctor d) {

		boolean f = false;

		try {
			String sql = "update doctor set full_name=?, dob=?, qualification=?, specialist=?, email=?, mobno=?, password=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getFullName());
			ps.setString(2, d.getDob());
			ps.setString(3, d.getQualification());
			ps.setString(4, d.getSpecialist());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMobNo());
			ps.setString(7, d.getPassword());
			ps.setInt(8, d.getId());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public boolean deleteDoctor(int id) {
		boolean f = false;
		try {

			String sql = "delete from doctor where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public doctor login(String email, String psw) {
		doctor d = null;
		try {

			String sql = "select * from doctor where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, psw);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobNo(rs.getString(7));
				d.setPassword(rs.getString(8));

			}
			;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return d;
	}

	public int countDoctor() {
		int i = 0;
		try {
			String sql = "select * from doctor";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public int countApppointment() {
		int i = 0;
		try {
			String sql = "select * from appointment";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public int countUser() {
		int i = 0;
		try {
			String sql = "select * from user_details";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public int countSpecialist() {
		int i = 0;
		try {
			String sql = "select * from specialist";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public int countApppointmentByDoctorId(int did) {
		int i = 0;
		try {
			String sql = "select * from appointment where doctor_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, did);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public boolean checkOldPassword(int userId, String oldPassword) {

		boolean f = false;

		try {

			String sql = "select * from doctor where id=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.setString(2, oldPassword);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				f = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}

	public boolean changePassword(int userId, String newPassword) {

		boolean f = false;

		try {

			String sql = "update doctor set password=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, newPassword);
			ps.setInt(2, userId);

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}

	public boolean editDoctorProfile(doctor d) {

		boolean f = false;

		try {
			String sql = "update doctor set full_name=?, dob=?, qualification=?, specialist=?, email=?, mobno=?, where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getFullName());
			ps.setString(2, d.getDob());
			ps.setString(3, d.getQualification());
			ps.setString(4, d.getSpecialist());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMobNo());
			ps.setInt(7, d.getId());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

}
