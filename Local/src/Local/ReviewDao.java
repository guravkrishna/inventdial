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
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();  
		        PreparedStatement ps=connection.prepareStatement("select r.id,r.fname,r.category,r.title,r.rating,r.review,r.email,pk.sdate from review r join package1 pk on r.id=pk.id");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Review u=new Review();  
		            u.setId(rs.getInt("id"));
		            u.setFname(rs.getString("fname"));
		            u.setEmail(rs.getString("email"));
		            u.setSdate(rs.getDate("sdate"));
		            u.setCategory(rs.getString("category"));
		            u.setTitle(rs.getString("title"));  
		            u.setRating(rs.getString("rating"));    
		            u.setReview(rs.getString("review"));
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		} 
	 public static Review getRecordById(String id){  
		    Review u=null;  
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();   
		        PreparedStatement ps=connection.prepareStatement("select r.id,r.fname,r.category,r.title,r.rating,r.review,r.email,pk.sdate from review r join package1 pk on r.id=pk.id where r.id=?");  
		        ps.setString(1,id+""); 
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Review();  
		            u.setId(rs.getInt("id"));
		            u.setFname(rs.getString("fname"));
		            u.setEmail(rs.getString("email"));
		            u.setSdate(rs.getDate("sdate"));
		            u.setCategory(rs.getString("category"));
		            u.setTitle(rs.getString("title"));  
		            u.setRating(rs.getString("rating"));    
		            u.setReview(rs.getString("review"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
	 public static List<Review> getAllRecordByType(String search){  
		    List<Review> list=new ArrayList<Review>();  
		      
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();  
		        PreparedStatement ps=connection.prepareStatement("select r.id,r.fname,r.category,r.title,r.rating,r.review,r.email,pk.sdate from review r join package1 pk on r.id=pk.id where r.id like ? or r.fname like ? or r.email like ? or r.rating like ?");  
		        ps.setString(1,search+""); 
		        ps.setString(2,search+"");
		        ps.setString(3,search+""); 
		        ps.setString(4,search+"");
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Review u=new Review();  
		            u.setId(rs.getInt("id"));
		            u.setFname(rs.getString("fname"));
		            u.setEmail(rs.getString("email"));
		            u.setSdate(rs.getDate("sdate"));
		            u.setCategory(rs.getString("category"));
		            u.setTitle(rs.getString("title"));  
		            u.setRating(rs.getString("rating"));    
		            u.setReview(rs.getString("review"));
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		} 
}
