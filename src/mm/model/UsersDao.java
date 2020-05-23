package mm.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mm.db.Provider;
import mm.db.Users;

public class UsersDao {
	

		public static int registerUsers(Users u) 
		{
			int i = 0 ;
			try 
			{
				Connection con = Provider.getConnection();
				String sql ="insert into users(emailid,password,name,gender,date_of_birth,religion,mother_tounge,country,about_me) values(?,?,?,?,?,?,?,?,?)";
				PreparedStatement pst = con.prepareStatement(sql);
				pst.setString(1,u.getEmailid());
				pst.setString(2, u.getPassword());
				pst.setString(3,u.getName());
				pst.setString(4,u.getGender());
				pst.setString(5, u.getDate_of_birth());
				pst.setString(6, u.getReligion());
				pst.setString(7, u.getMother_tounge());
				pst.setString(8,u.getCountry());
				pst.setString(9, u.getAbout_me()); 
				i = pst.executeUpdate();
				
				String sql1 = "Insert into ChatUsers values (name,email,password) values (?,?,?)";
				PreparedStatement pst1 = con.prepareStatement(sql1);
				pst1.setString(1,u.getName());
				pst1.setString(2,u.getEmailid());
				pst1.setString(3, u.getPassword());
				pst1.executeUpdate();
				
				System.out.println(i);
				
				} 
					catch (Exception e) 
						{
							e.printStackTrace();
						}
				return i;
			}
		
		public static int validate(Users l) 
		{
			int status =0 ;
			
			try 
			{
				Connection con = Provider.getConnection();
				String sql = "select * from users where emailid=? and password=?";
				PreparedStatement pst = con.prepareStatement(sql);
				pst.setString(1, l.getEmailid());
				pst.setString(2, l.getPassword());
				ResultSet rs = pst.executeQuery();
				if(rs.next())
				{
					String sql1="update ChatUsers set status=1 where email = ? and password = ?";
					pst = con.prepareStatement(sql1);
					pst.setString(1, l.getEmailid());
					pst.setString(2, l.getPassword());
					pst.executeUpdate();
					
					status=1;
				}
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			
			return status;
		}
		
		
		public static int doChangePassword(Users l) 
		{
			int result = 0 ;
			try 
			{
				Connection con = Provider.getConnection();
				String sql = "update users set password=? where emailid=?";
				PreparedStatement pst = con.prepareStatement(sql);
				pst.setString(1, l.getPassword());
				pst.setString(2, l.getEmailid());
				result = pst.executeUpdate();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			return result;
		}

		
		public static String getPassword(Users l) 
		{
			String pass=null;
			try 
			{
				Connection con = Provider.getConnection();
				String sql = "select password from Users where emailid=? ";
				PreparedStatement pst = con.prepareStatement(sql);
				pst.setString(1, l.getEmailid());
				ResultSet rs = pst.executeQuery();
				if(rs.next())
					pass = rs.getString(1);
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			return pass;
		}
		public static String getName(Users l) 
		{
			String name=null;
			try 
			{
				Connection con = Provider.getConnection();
				String sql = "select name from Users where emailid=? ";
				PreparedStatement pst = con.prepareStatement(sql);
				pst.setString(1, l.getEmailid());
				ResultSet rs = pst.executeQuery();
				if(rs.next())
					name = rs.getString(1);
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			return name;
		}
			public static int incomeMore(Users a )
			{
				int status = 0 ;
				try 
				{
			
					System.out.println("---------------------------------1");
				
					Connection con = Provider.getConnection();
					String sql = "update users set highest_education=? , employed_in=? , occupation=? ,salary=?, income=?,body=? , height=?,martial_status=?,about_me=?,address=?,weight=?,age=?,disability=? where emailid=?";
					PreparedStatement pst = con.prepareStatement(sql);
					System.out.println("---------------------------------2");
					pst.setString(1,a.getHighest_education());
					System.out.println("---------------------------------3");
					pst.setString(2, a.getEmployed_in());
					System.out.println("---------------------------------5");
					pst.setString(3,a.getOccupation());
					pst.setString(4,a.getSalary());
					System.out.println("---------------------------------4");
					pst.setString(5, a.getIncome());
					System.out.println("---------------------------------5");
					pst.setString(6, a.getBody());
					System.out.println("---------------------------------2");
					pst.setString(7, a.getHeight());
					System.out.println("---------------------------------6");
					pst.setString(8, a.getMartial_status());
					
					pst.setString(9,a.getAbout_me());
					System.out.println("---------------------------------88");
					pst.setString(10, a.getAddress());
					System.out.println("---------------------------------45");
					pst.setString(11, a.getWeight());
					System.out.println("---------------------------------26");
					pst.setString(12, a.getAge());
					System.out.println("---------------------------------28");
					
					pst.setString(13, a.getDisability());
					

					pst.setString(14, a.getEmailid());
					System.out.println("---------------------------------3");
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
			
		

		public static int updatePhoto(Users u, String file_name) 
		{
			int status = 0;
			String sql = "Update users set photos=? where emailid=? ";
			Connection con = Provider.getConnection();
			try 
			{
				PreparedStatement pst = con.prepareStatement(sql);
				System.out.println(file_name);
			
				pst.setString(1, u.getPhotos());
				pst.setString(2, u.getEmailid());
			
				status = pst.executeUpdate();
				if(status > 0)
					System.out.println("Photo Updated ");
				else
					System.out.println("Photo Not Updated ...");
				}
			catch(Exception e)
			{
			
			}
			return status;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public static ArrayList<Users> fetch() 
		{
			ArrayList<Users> all = new ArrayList<Users>();
			String sql = "select * from Users ";
			try 
			{
				Connection con = Provider.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				while(rs.next())
				{
					Users su = new Users();
     
					
					su.setEmailid(rs.getString(1));
					su.setPassword(rs.getString(2));
					su.setName(rs.getString(3));
					su.setPhotos(rs.getString(13));
					all.add(su);
				}
				} 
			catch (Exception e) 
			{
						// TODO: handle exception
				e.printStackTrace();
			}
			return all;
		}
		
		public static String getPhotoPath(Users u) 
		{
			//System.out.println("-------------------");
			String path="";
			String sql="select photos from users where emailid=?";
			Connection con=Provider.getConnection();
			try 
			{
				PreparedStatement pst=con.prepareStatement(sql);
				pst.setString(1, u.getEmailid());
				ResultSet rs=pst.executeQuery();
				if(rs.next())
				{
					//System.out.println("-------------------++++");
					path = rs.getString("photos");
					//System.out.print("==========================Length of path : "+path.length());
				}
			} 
			catch (SQLException e) 
			{
		      // TODO Auto-generated catch block
				e.printStackTrace();
			}
		    return path;
		}
		
		
		public static Users getDetails(Users users)
		{
			Users u = new Users();
			String sql = "select * from users where emailid = ?";
			Connection con = Provider.getConnection();
			try 
			{
				PreparedStatement pst = con.prepareStatement(sql);
				pst.setString(1, users.getEmailid());
				ResultSet rs = pst.executeQuery();
				if(rs.next())
				{
					u.setEmailid(rs.getString("emailid"));
					u.setName(rs.getString("name"));
					u.setAge(rs.getString("age"));
					u.setEmployed_in(rs.getString("employed_in"));
					
					u.setGender(rs.getString("gender"));
					u.setDate_of_birth(rs.getString("date_of_birth"));
					u.setReligion(rs.getString("religion"));
					u.setMother_tounge(rs.getString("mother_tounge"));
					
					u.setCountry(rs.getString("country"));
					u.setBody(rs.getString("body"));
					u.setHeight(rs.getString("height"));
					u.setWeight(rs.getString("weight"));
						
						
					u.setAddress(rs.getString("address"));
					u.setOccupation(rs.getString("occupation"));
					u.setSalary(rs.getString("salary"));
					u.setIncome(rs.getString("income"));
						
					u.setDisability(rs.getString("disability"));
					u.setAbout_me(rs.getString("about_me"));
					u.setHighest_education(rs.getString("highest_education"));
					u.setCollege(rs.getString("college"));
					u.setMartial_status(rs.getString("martial_status"));
					
										
					System.out.println("((((((((((((((((((((");					
					
			
				}
			} 
			catch (SQLException e) 
			{
	        // TODO Auto-generated catch block
				e.printStackTrace();
			}
			return u;
		}
		public static String getGender(Users u)
		{
			String gender="";
		    String sql="select gender from users where emailid=?";
		    Connection con=Provider.getConnection();
		    try {
				PreparedStatement pst=con.prepareStatement(sql);
				pst.setString(1, u.getEmailid()); 
			ResultSet rs=pst.executeQuery();
			while(rs.next())
		
			{
				gender = rs.getString(1);
			}
			} 
		    catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return gender;
		}
		public static int getNoOfRecords(Users user)
		{
			int count = 0 ;
			Connection con = Provider.getConnection();
			try {
				PreparedStatement pst = con.prepareStatement("select * from users where gender !=?");
				pst.setString(1, user.getGender());
				ResultSet rs = pst.executeQuery();
				while(rs.next())
				{
					count++;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return count;
		}
		public static List<Users> getDetailsForPage(String gender, int start , int total)
		{
			List<Users> list=new ArrayList<Users>();
			Connection con = Provider.getConnection();
			try {
				PreparedStatement pst = con.prepareStatement
			("select rownum,photos,name,gender,age,emailid  from Users  where gender !=? group by rownum,photos,name,gender,age,emailid having rownum between "+start+"  and "+total+" order  by rownum");
				pst.setString(1, gender);
				ResultSet rs = pst.executeQuery();
				
				while(rs.next())
				{
					Users u = new Users();
					u.setPhotos(rs.getString(2));
					u.setName(rs.getString(3));
					u.setGender(rs.getString(4));
					u.setAge(rs.getString(5));
					u.setEmailid(rs.getString(6));
					
					list.add(u);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
		}
		public static int updateDetails (Users up )
		{
			int status = 0 ;
			try 
			{
		
				System.out.println("Name  ------------> "+up.getName());
				System.out.println("Email ------------> "+up.getEmailid());
			
				Connection con = Provider.getConnection();
				String sql = "update users set highest_education=? , employed_in=? , occupation=? ,salary=?, income=?,body=? , height=?,martial_status=?,about_me=?,address=?,weight=?,age=?,disability=?,name=?,religion=?,country=?,mother_tounge=? where emailid=?";
				PreparedStatement pst = con.prepareStatement(sql);
				
				pst.setString(1,up.getHighest_education());
		
				pst.setString(2, up.getEmployed_in());
				pst.setString(3,up.getOccupation());
				pst.setString(4,up.getSalary());
				pst.setString(5, up.getIncome());
				pst.setString(6, up.getBody());
				pst.setString(7, up.getHeight());
				pst.setString(8, up.getMartial_status());
				
				pst.setString(9,up.getAbout_me());
				pst.setString(10, up.getAddress());
				pst.setString(11, up.getWeight());
				pst.setString(12, up.getAge());
				
				pst.setString(13, up.getDisability());
				
				pst.setString(14, up.getName());
				pst.setString(15, up.getReligion());
				pst.setString(16, up.getCountry());
				pst.setString(17, up.getMother_tounge());
				;
				

				pst.setString(18, up.getEmailid());
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
		
		
			public static void delete(String emailid) 																													
				{
				// TODO Auto-generated method stub
					String sql = "delete from users where emailid=?";
				try
					{
						Connection con = Provider.getConnection();
						PreparedStatement pst = con.prepareStatement(sql);
						pst.setString(1,emailid);
						pst.execute();
		      
					} 
				catch (Exception e) 
				{
						// TODO: handle exception
						e.printStackTrace();
				}
		  }
		
}

		










