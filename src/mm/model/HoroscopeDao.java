package mm.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mm.db.Horoscope;
import mm.db.Provider;
import mm.db.Users;


public class HoroscopeDao 


{
	public static int registerCastedosh(Horoscope h )
	{
		int i = 0 ;
		try 
		{
			System.out.println(h.getEmailid());
			Connection con = Provider.getConnection();
			String sql ="insert into horoscope(emailid,caste,sub_caste,dosh,marryother_communities) values(?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1,h.getEmailid() );
			pst.setString(2,h.getCaste());
			pst.setString(3, h.getSub_caste());
			pst.setString(4,h.getDosh());
			pst.setString(5,h.getMarryother_communities());
		
			i = pst.executeUpdate();
			System.out.println(i);
		
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return i;
}
	
	public static int religionMore(Horoscope r )
	{
		int x = 0 ;
		try 
		{
	
			System.out.println("---------------------------------1");
		
			Connection con = Provider.getConnection();
			String sql = "update horoscope set star=? , rasi=? , gotra=? , time_of_birth=? , place_of_birth=?,manglik=?  where emailid=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1,r.getStar());
			pst.setString(2, r.getRasi());
			pst.setString(3,r.getGotra());
			pst.setString(4, r.getTime_of_birth());
			pst.setString(5,r.getPlace_of_birth());
			pst.setString(6,r.getManglik());
			pst.setString(7, r.getEmailid());
			System.out.println("---------------------------------2");
			x = pst.executeUpdate();
			System.out.println(x);
			System.out.println("---------------------------------3");
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return x;
	}

	public static Horoscope getDetails(Users users)
	{
		Horoscope hh = new Horoscope();
		String sql = "select * from horoscope where emailid = ?";
		Connection con = Provider.getConnection();
		try 
		{
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, users.getEmailid());
			
			
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				hh.setCaste(rs.getString("caste"));
				hh.setDosh(rs.getString("dosh"));
				
				
				hh.setSub_caste(rs.getString("sub_caste"));
				hh.setRasi(rs.getString("rasi"));
				hh.setStar("star");
				
				
		        
				
				hh.setMarryother_communities(rs.getString("marryother_communities"));
				hh.setManglik(rs.getString("manglik")) ;         
				hh.setGotra(rs.getString("gotra")) ;          
		     
				hh.setTime_of_birth(rs.getString("time_of_birth"));    
				hh.setPlace_of_birth(rs.getString("place_of_birth"));
			}
		} 
		catch (SQLException e) 
		{
        // TODO Auto-generated catch block
			e.printStackTrace();
		}
		return hh;
	}

	public static int updateHoroscope(Horoscope uh) 
	
	
	
	
	{
		int status = 0 ;
		try 
		{
	
			
		
			Connection con = Provider.getConnection();
			String sql = "update horoscope set star=? , rasi=? , gotra=? , time_of_birth=? , place_of_birth=?,manglik=?,caste=?,sub_caste=?,dosh=?  where emailid=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1,uh.getStar());
			pst.setString(2, uh.getRasi());
			pst.setString(3,uh.getGotra());
			pst.setString(4, uh.getTime_of_birth());
			pst.setString(5,uh.getPlace_of_birth());
			pst.setString(6,uh.getManglik());
			
			pst.setString(7, uh.getCaste());
			pst.setString(8,uh.getSub_caste());
			pst.setString(9,uh.getDosh());
			
			
			
			
			pst.setString(10, uh.getEmailid());
			
			status = pst.executeUpdate();
			System.out.println(status);
			
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}

		return 0;
	}

}
