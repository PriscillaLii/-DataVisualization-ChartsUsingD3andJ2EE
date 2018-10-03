package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import utils.DBbean;

public class DBarDao {
	public List<Object> FindAll() {
		// TODO Auto-generated method stub
		List<Object> list = new ArrayList<Object>();
		String sql = "select month,apples,bananas,cherries from dbar as a where 1=1 ORDER BY a.month asc";

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
				list1.add(rs.getString(3));
				list1.add(rs.getString(4));
				list.add(list1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
}
