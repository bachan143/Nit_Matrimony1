package mm.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mm.db.Match;
import mm.db.Provider;
import mm.db.Users;


public class MatchDao 


{
	public static int matchInfo(Match s) 
	{
		int status = 0 ;
		try 
		{
			Connection con = Provider.getConnection();
			System.out.println(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,1");
			String sql ="insert into match(emailid,hobbies,songs,interest,movies,sports,language,fitness) values(?,?,?,?,?,?,?,?)";
			System.out.println(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,2");
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1,s.getEmailid() );
			System.out.println(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,3");
			pst.setString(2,s.getHobbies());
			pst.setString(3, s.getSongs());
			System.out.println(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,4");
			
			
			pst.setString(4,s.getInterest());
			pst.setString(5, s.getMovies());
			pst.setString(6,s.getSports());
			pst.setString(7, s.getLanguage());
			pst.setString(8,s.getFitness());


	

			status= pst.executeUpdate();
			System.out.println(status);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;

	}
	public static Match getDetails(Users users)
	{
		Match view = new Match();
		String sql = "select * from Match where emailid = ?";
		Connection con = Provider.getConnection();
		try 
		{
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, users.getEmailid());
			
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				
		
				
				
				
				 		  
				view.setHobbies(rs.getString("hobbies"));          
				view.setInterest(rs.getString("interest"));		  
				view.setLike_to_do(rs.getString("like_to_do"));        
				view.setPrefer_style(rs.getString("prefer_style"));      
				view.setSongs(rs.getString("songs")) ;            
				view.setMovies(rs.getString("movies"));		      
				view.setSports(rs.getString("sports")) ;            
				view.setFitness(rs.getString("fitness")) ;		  
				view.setWhat_in_partner(rs.getString("what_in_partner"));   
				view.setResident_state(rs.getString("resident_state")) ;	  
				view.setCitizenship(rs.getString("citizenship")) ;      
				view.setBride_age(rs.getString("bride_age")) ;		  
				view.setGroom_age(rs.getString("groom_age")) ;
				view.setAbout_partner(rs.getString("about_partner"));
				view.setLanguage(rs.getString("language")) ;
				
				
						
			}
		} 
		catch (SQLException e) 
		{
        // TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
	public static int updateMatch(Match um)
	
	{
		int status = 0 ;
		try 
		{
	
			
			Connection con = Provider.getConnection();
			String sql = "update match set hobbies=? , interest=? , like_to_do=? ,prefer_style=?, songs=?,movies=? , sports=?,fitness=?,what_in_partner=?,resident_state=?,citizenship=?,bride_age=?,groom_age=?,about_partner=?,language=? where emailid=?";
			PreparedStatement pst = con.prepareStatement(sql);
			
	
			pst.setString(1, um.getHobbies());
			pst.setString(2,um.getInterest());
			pst.setString(3,um.getLike_to_do());
			pst.setString(4, um.getPrefer_style());
			pst.setString(5, um.getSongs());
			pst.setString(6, um.getMovies());
			pst.setString(7, um.getSports());
			
			pst.setString(8,um.getFitness());
			pst.setString(9, um.getWhat_in_partner());
			pst.setString(10, um.getResident_state());
			pst.setString(11, um.getCitizenship());
			
			pst.setString(12, um.getBride_age());
			
			pst.setString(13, um.getGroom_age());
			pst.setString(14, um.getAbout_partner());
			pst.setString(15, um.getLanguage());
		
			

			pst.setString(16, um.getEmailid());
			status = pst.executeUpdate();
			System.out.println(status);
			System.out.println("---------------------------------4");
					
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return status;
	}
}
	
