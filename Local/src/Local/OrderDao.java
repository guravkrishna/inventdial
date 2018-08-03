package Local;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
	public static List<Order> getAllRecords(){  
	    List<Order> list=new ArrayList<Order>();  
	      
	    try{  
	    	DB_Connection obj_DB_Connection=new DB_Connection();
	    	Connection connection=obj_DB_Connection.get_connection();
	        PreparedStatement ps=connection.prepareStatement("select s.id,s.firstname,s.lastname,s.contact,s.email,l.category,c.subcategory,c.address,c.day,c.package,c.open,c.close,pk.sdate,pk.edate from signup s join category c on s.id=c.id join package1 pk on s.id=pk.id join listing l on s.id=l.id");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Order u=new Order();  
	            u.setId(rs.getInt("id"));
	            u.setFirstname(rs.getString("firstname"));  
	            u.setLastname(rs.getString("lastname"));  
	            u.setContact(rs.getString("contact"));  
	            u.setEmail(rs.getString("email"));  
	            u.setCategory(rs.getString("category"));
	            u.setSubcategory(rs.getString("subcategory"));
	            u.setAddress(rs.getString("address"));
	            u.setDay(rs.getString("day"));
	            u.setPack(rs.getString("package"));
	            u.setOpen(rs.getString("open"));
	            u.setClose(rs.getString("close"));
	            u.setSdate(rs.getDate("sdate"));
	            u.setEdate(rs.getDate("edate"));
	            list.add(u);
	        }  
	    }
	    catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	 public static Order getRecordById(String id){  
		    Order u=null;  
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();  
		        PreparedStatement ps=connection.prepareStatement("select s.id,s.firstname,s.lastname,s.contact,s.email,l.category,c.subcategory,c.address,c.day,c.package,c.open,c.close,pk.sdate,pk.edate from signup s join category c on s.id=c.id join package1 pk on s.id=pk.id join listing l on s.id=l.id where s.id=?");  
		        ps.setString(1,id+"");
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Order();  
		            u.setId(rs.getInt("id"));
		            u.setFirstname(rs.getString("firstname"));  
		            u.setLastname(rs.getString("lastname"));  
		            u.setContact(rs.getString("contact"));  
		            u.setEmail(rs.getString("email"));  
		            u.setCategory(rs.getString("category"));
		            u.setSubcategory(rs.getString("subcategory"));
		            u.setAddress(rs.getString("address"));
		            u.setDay(rs.getString("day"));
		            u.setPack(rs.getString("package"));
		            u.setOpen(rs.getString("open"));
		            u.setClose(rs.getString("close"));
		            u.setSdate(rs.getDate("sdate"));
		            u.setEdate(rs.getDate("edate"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
	 public static List<Order> getAllRecordsType(String search){  
		    List<Order> list=new ArrayList<Order>();  
		      
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();
		        PreparedStatement ps=connection.prepareStatement("select s.id,s.firstname,s.lastname,s.contact,s.email,l.category,c.subcategory,c.address,c.day,c.package,c.open,c.close,pk.sdate,pk.edate from signup s join category c on s.id=c.id join package1 pk on s.id=pk.id join listing l on s.id=l.id where s.id like ? or s.firstname like ? or s.lastname like ? or s.contact like ? or s.email like ? or l.category like ?");  
		        ps.setString(1,search+"");
		        ps.setString(2,search+"");
		        ps.setString(3,search+"");
		        ps.setString(4,search+"");
		        ps.setString(5,search+"");
		        ps.setString(6,search+"");
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Order u=new Order();  
		            u.setId(rs.getInt("id"));
		            u.setFirstname(rs.getString("firstname"));  
		            u.setLastname(rs.getString("lastname"));  
		            u.setContact(rs.getString("contact"));  
		            u.setEmail(rs.getString("email"));  
		            u.setCategory(rs.getString("category"));
		            u.setSubcategory(rs.getString("subcategory"));
		            u.setAddress(rs.getString("address"));
		            u.setDay(rs.getString("day"));
		            u.setPack(rs.getString("package"));
		            u.setOpen(rs.getString("open"));
		            u.setClose(rs.getString("close"));
		            u.setSdate(rs.getDate("sdate"));
		            u.setEdate(rs.getDate("edate"));
		            list.add(u);
		        }  
		    }
		    catch(Exception e){System.out.println(e);}  
		    return list;  
		} 
}
