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
	        Connection con=DbUtil.getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from ordermanagement");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Order u=new Order();  
	            u.setId(rs.getInt("id"));  
	            u.setOrder_name(rs.getString("order_name"));  
	            u.setLocation(rs.getString("location"));  
	            u.setShipping_date(rs.getString("shipping_date"));  
	            u.setDelivery_date(rs.getString("delivery_date"));  
	            u.setPrice(rs.getString("price"));
	            u.setMobile_no(rs.getString("mobile_no"));
	            u.setEmail(rs.getString("email"));
	            list.add(u);
	        }  
	    }
	    catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	 public static Order getRecordById(int id){  
		    Order u=null;  
		    try{  
		        Connection con=DbUtil.getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from ordermanagement where id=?");  
		        ps.setString(1,id+"");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Order();  
		            u.setId(rs.getInt("id"));  
		            u.setOrder_name(rs.getString("order_name"));  
		            u.setLocation(rs.getString("location"));  
		            u.setShipping_date(rs.getString("shipping_date"));  
		            u.setDelivery_date(rs.getString("delivery_date"));  
		            u.setPrice(rs.getString("price")); 
		            u.setMobile_no(rs.getString("mobile_no"));
		            u.setEmail(rs.getString("email"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
}
