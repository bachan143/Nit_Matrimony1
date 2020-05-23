package mm.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import mm.db.ChatUsers;
import mm.db.Provider;

public class ChatUsersDao {

	public static boolean validate(ChatUsers user) {
		boolean status = false;
		String sql = "select * from Users where email = ? and password = ?";
		String sql1="update User1 set status=1 where email = ? and password = ?";
		try 
		{
			Connection con = mm.db.Provider.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			PreparedStatement pst1 = con.prepareStatement(sql1);
			
			pst.setString(1, user.getEmail());
			pst.setString(2, user.getPassword());
			ResultSet rs = pst.executeQuery();
			pst1.setString(1, user.getEmail());
			pst1.setString(2, user.getPassword());
			ResultSet rs1=pst1.executeQuery();
			status = rs.next();
			//System.out.println(status);
			String name=rs.getString(1);
			user.setName(name);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
		
	}
	public static ArrayList<ChatUsers> fetchUser(ChatUsers s){
		ArrayList<ChatUsers> all =new ArrayList<ChatUsers>();
		String sql = "select * from ChatUsers where email !=?";
		try {
		      Connection con = Provider.getConnection();
		      PreparedStatement pst = con.prepareStatement(sql);
		      pst.setString(1, s.getEmail());
		      ResultSet rs = pst.executeQuery();
		      while(rs.next()){
		    	  ChatUsers u=new ChatUsers();
		    	  u.setName(rs.getString(1));
		    	  u.setEmail(rs.getString(2));
		    	  u.setPassword(rs.getString(3));
		    	  u.setStatus(rs.getString(4));
		    	  all.add(u);
		      }
		}
		catch (Exception e) {
		      // TODO: handle exception
		      e.printStackTrace();
		    }
				return all;
		
	}
	public static void doStatusInvalid(ChatUsers u) 
	{
		System.out.println("==================================================="+u.getEmail());
		String sql="update ChatUsers set status=null where email = ?";
		try 
		{
			Connection con = Provider.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, u.getEmail());
			pst.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}
}
