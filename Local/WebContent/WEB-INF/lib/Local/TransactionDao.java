package Local;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TransactionDao {
	 public static List<Transaction> getAllRecords(){  
		    List<Transaction> list=new ArrayList<Transaction>();  
		      
		    try{  
		        Connection con=DbUtil.getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from transaction");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Transaction u=new Transaction();  
		            u.setId(rs.getInt("id"));  
		            u.setCustomer_name(rs.getString("customer_name"));  
		            u.setProducts_name(rs.getString("products_name"));  
		            u.setOrder_date(rs.getString("order_date"));  
		            u.setEmail(rs.getString("email"));  
		            u.setState(rs.getString("state"));
		            u.setAddress(rs.getString("address"));
		            u.setPayment(rs.getString("payment"));
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}  
	 public static Transaction getRecordById(int id){  
		    Transaction u=null;  
		    try{  
		        Connection con=DbUtil.getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from transaction where id=?");  
		        ps.setString(1,id+"");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Transaction();  
		            u.setId(rs.getInt("id"));  
		            u.setCustomer_name(rs.getString("customer_name"));  
		            u.setProducts_name(rs.getString("products_name"));  
		            u.setOrder_date(rs.getString("order_date"));  
		            u.setEmail(rs.getString("email"));  
		            u.setState(rs.getString("state")); 
		            u.setAddress(rs.getString("address"));
		            u.setPayment(rs.getString("payment"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
}
