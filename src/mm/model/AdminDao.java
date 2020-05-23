package mm.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import mm.db.Admin;
import mm.db.Provider;

public class AdminDao {

	public static boolean validate(Admin admin) 
	{
		boolean result = false;
		
		try 
		{
			Connection con = Provider.getConnection();
			String sql = "select * from admin where emailid=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, admin.getEmailid());
			pst.setString(2, admin.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
				result=true;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return result;
	}

}

