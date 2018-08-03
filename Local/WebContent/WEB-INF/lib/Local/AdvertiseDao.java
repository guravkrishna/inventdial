package Local;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdvertiseDao {
	public static List<Advertise> getAllRecords(){  
	    List<Advertise> list=new ArrayList<Advertise>();  
	      
	    try{  
	        Connection con=DbUtil.getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from advertise");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Advertise u=new Advertise();  
	            u.setId(rs.getInt("id"));  
	            u.setCompany_name(rs.getString("company_name"));  
	            u.setLocation(rs.getString("location"));  
	            u.setFirst_name(rs.getString("first_name"));  
	            u.setLast_name(rs.getString("last_name"));  
	            u.setMobile_no(rs.getString("mobile_no"));  
	            u.setLandline_no(rs.getString("landline_no")); 
	            u.setPosition(rs.getString("position"));
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	 public static Advertise getRecordById(int id){  
		    Advertise u=null;  
		    try{  
		        Connection con=DbUtil.getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from advertise where id=?");  
		        ps.setString(1,id+"");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Advertise();  
		            u.setId(rs.getInt("id"));  
		            u.setCompany_name(rs.getString("company_name"));  
		            u.setLocation(rs.getString("location"));  
		            u.setFirst_name(rs.getString("first_name"));  
		            u.setLast_name(rs.getString("last_name"));  
		            u.setMobile_no(rs.getString("mobile_no")); 
		            u.setLandline_no(rs.getString("landline_no"));
		            u.setPosition(rs.getString("position"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
	 public static int update(Advertise u){  
		    int status=0;  
		    try{  
		        Connection con=DbUtil.getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"update advertise set company_name=?,location=?,first_name=?,last_name=?,mobile_no=?,landline_no=?,position=? where id=?"); 
		        ps.setString(1,u.getCompany_name());  
		        ps.setString(2,u.getLocation());  
		        ps.setString(3,u.getFirst_name());  
		        ps.setString(4,u.getLast_name());  
		        ps.setString(5,u.getMobile_no());  
		        ps.setString(6,u.getLandline_no());
		        ps.setString(7,u.getPosition());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		} 
	 public static int delete(Advertise u){  
		    int status=0;  
		    try{  
		        Connection con=DbUtil.getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from sdvertise where id=?");  
		        ps.setInt(1,u.getId());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;  
	 }
}
