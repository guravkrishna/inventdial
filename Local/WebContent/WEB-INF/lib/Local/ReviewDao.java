package Local;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReviewDao {
	
	 public static List<Review> getAllRecords(){  
		    List<Review> list=new ArrayList<Review>();  
		      
		    try{  
		        Connection con=DbUtil.getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from review");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Review u=new Review();  
		            u.setId(rs.getInt("id"));  
		            u.setName(rs.getString("name"));  
		            u.setLocation(rs.getString("location"));  
		            u.setContact(rs.getString("contact"));  
		            u.setProduct(rs.getString("product"));  
		            u.setReview(rs.getString("review"));
		            u.setRating(rs.getInt("rating"));
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}  
	 public static Review getRecordById(int id){  
		    Review u=null;  
		    try{  
		        Connection con=DbUtil.getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from review where id=?");  
		        ps.setString(1,id+"");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Review();  
		            u.setId(rs.getInt("id"));  
		            u.setName(rs.getString("name"));  
		            u.setLocation(rs.getString("location"));  
		            u.setContact(rs.getString("contact"));  
		            u.setProduct(rs.getString("product"));  
		            u.setReview(rs.getString("review")); 
		            u.setRating(rs.getInt("rating"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
}
