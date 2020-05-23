package mm.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mm.db.Family;
import mm.db.Provider;
import mm.db.Users;




public class FamilyDao


{


	public static int eatingMore(Family f) 
	{
		int status = 0 ;
		try 
		{
			Connection con = Provider.getConnection();
			String sql ="insert into family(emailid,eating_habit,drinking_habit,smoking_habit) values(?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1,f.getEmailid());
			pst.setString(2,f.getEating_habit());
			pst.setString(3, f.getDrinking_habit());
			pst.setString(4,f.getSmoking_habit());

			status= pst.executeUpdate();
			System.out.println(status);
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int familyMore(Family p) 
	{
		int status = 0 ;
		try 
		{
			Connection con = Provider.getConnection();
			String sql = "update family set family_status=? , family_type=? , family_values=? , father_status=? , mother_status=?,brothers=? , sisters=?,family_location=? , phone=?,ancestral_origin=?,favourite_cousion=?  where emailid=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1,p.getFamily_status());
			pst.setString(2, p.getFamily_type());
			pst.setString(3,p.getFamily_values());
			pst.setString(4,p.getFather_status());
			pst.setString(5, p.getMother_status());
			pst.setString(6, p.getBrothers());
			pst.setString(7, p.getSisters());
			pst.setString(8,p.getFamily_location());
			pst.setString(9, p.getPhone());
			
			
			pst.setString(10, p.getAncestral_origin());
			pst.setString(11, p.getFavourite_cousion());
			
			
			
			
			
			
			
			pst.setString(12,p.getEmailid());
			

			
			
			
			status = pst.executeUpdate();
			System.out.println(status);
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}

	public static Family getDetails(Users users)
	{
		Family ff = new Family();
		String sql = "select * from family where emailid = ?";
		Connection con = Provider.getConnection();
		try 
		{
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, users.getEmailid());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
										
				ff.setFamily_type(rs.getString("family_type"));       
				ff.setFamily_values(rs.getString("family_values")); 
				ff.setFamily_status(rs.getString("family_status"));       
				ff.setFather_status(rs.getString("father_status"));		
				ff.setMother_status(rs.getString("mother_status"));       
				ff.setBrothers(rs.getString("brothers")); 		    
				ff.setSisters(rs.getString("sisters"));             
				ff.setFamily_location(rs.getString("family_location")); 	
				ff.setFavourite_cousion(rs.getString("favourite_cousion"));    
				ff.setAbout_family(rs.getString("about_family")); 		
				ff.setPhone(rs.getString("phone"));               
				ff.setEducation_details(rs.getString("education_details"));   
				ff.setOccupation_details(rs.getString("occupation_details"));   
				ff.setEating_habit(rs.getString("eating_habit"));        
				ff.setDrinking_habit(rs.getString("drinking_habit"));		
				ff.setSmoking_habit(rs.getString("smoking_habit"));       
				ff.setDistrict(rs.getString("district"));		    
				ff.setState(rs.getString("state"));
				ff.setAncestral_origin(rs.getString("ancestral_origin"));

			}
		} 
		catch (SQLException e) 
		{
        // TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ff;
	}

	public static int updateFamily(Family uf) 
	
	
	
	{
		int status = 0 ;
		try 
		{
	
			
		
			Connection con = Provider.getConnection();
			String sql = "update family set family_type=? , family_status=? , family_values=? ,father_status=?, mother_status=?,brothers=? , sisters=?,family_location=?,favourite_cousion=?,about_family=?,phone=?,education_details=?,occupation_details=?,eating_habit=?,drinking_habit=?,smoking_habit=?,ancestral_origin=?,state=?,district=? where emailid=?";
			PreparedStatement pst = con.prepareStatement(sql);
			
			
	
			pst.setString(1, uf.getFamily_type());
			pst.setString(2,uf.getFamily_status());
			pst.setString(3,uf.getFamily_values());
			pst.setString(4, uf.getFather_status());
			pst.setString(5, uf.getMother_status());
			pst.setString(6, uf.getBrothers());
			pst.setString(7, uf.getSisters());
			
			pst.setString(8,uf.getFamily_location());
			pst.setString(9, uf.getFavourite_cousion());
			pst.setString(10, uf.getAbout_family());
			pst.setString(11, uf.getPhone());
			
			pst.setString(12, uf.getEducation_details());
			
			pst.setString(13, uf.getOccupation_details());
			pst.setString(14, uf.getEating_habit());
			pst.setString(15, uf.getDrinking_habit());
			pst.setString(16, uf.getSmoking_habit());

			
			pst.setString(17, uf.getAncestral_origin());
			pst.setString(18, uf.getState());
			pst.setString(19, uf.getDistrict());

			
			

			pst.setString(20, uf.getEmailid());
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

	
	

