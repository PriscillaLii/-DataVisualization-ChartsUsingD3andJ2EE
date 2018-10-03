package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import utils.DBbean;

public class HLineTwoDao {
	public List<Object> findAll() {
		// TODO Auto-generated method stub
		List<Object> list = new ArrayList<Object>();
		String sql = "select value1,value2 from hline2 as a where 1=1 ORDER BY a.id asc";

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try{
			con = DBbean.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				List<Object> list1 = new ArrayList<Object>();
				list1.add(rs.getString(1));
				list1.add(rs.getString(2));
				list.add(list1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
}
