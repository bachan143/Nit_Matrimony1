package mm.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import mm.db.Feedback;
import mm.db.Provider;

public class FeedbackDao {

	public static int feedbackUsers(Feedback uf) 
	{
		int status = 0 ;
		try 
		{
			Connection con = Provider.getConnection();
			String sql ="insert into feedback(emailid,name,subject,feedback) values(?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1,uf.getEmailid());
			pst.setString(2, uf.getName());
			pst.setString(3,uf.getSubject());
			pst.setString(4,uf.getFeedback());
			
			status = pst.executeUpdate();
			System.out.println(status);
			
			} 
				catch (Exception e) 
					{
						e.printStackTrace();
					}
		return status;
	}
	public static ArrayList<Feedback> fetch() 
	{
		ArrayList<Feedback> all = new ArrayList<Feedback>();
		String sql = "select * from Feedback ";
		try 
		{
			Connection con = Provider.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Feedback fa = new Feedback();
 
				
				fa.setEmailid(rs.getString(1));
				fa.setName(rs.getString(2));
				fa.setSubject(rs.getString(3));
				fa.setFeedback(rs.getString(4));
				all.add(fa);
			}
			} 
		catch (Exception e) 
		{
					// TODO: handle exception
			e.printStackTrace();
		}
		return all;
	}
}


