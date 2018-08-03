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
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();
		        PreparedStatement ps=connection.prepareStatement("select s.id,s.firstname,s.lastname,s.contact,s.email,pk.package,pk.sdate,pk.edate,pk.amount,p.paymentstatus from signup s join package1 pk on s.id=pk.id join payment p on pk.id=p.id;");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Transaction u=new Transaction();  
		            u.setId(rs.getInt("id"));
		            u.setFirstname(rs.getString("firstname"));
		            u.setLastname(rs.getString("lastname"));
		            u.setContact(rs.getString("contact"));
		            u.setEmail(rs.getString("email"));
		            u.setPack(rs.getString("package"));
		            u.setSdate(rs.getDate("sdate"));
		            u.setEdate(rs.getDate("edate"));
		            u.setAmount(rs.getString("amount"));  
		            u.setPaymentstatus(rs.getString("paymentstatus"));  
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);}
		    return list;  
	 }  
	 public static Transaction getRecordById(String id){  
		    Transaction u=null;  
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();  
		        PreparedStatement ps=connection.prepareStatement("select s.id,s.firstname,s.lastname,s.contact,s.email,pk.package,pk.sdate,pk.edate,pk.amount,p.paymentstatus from signup s join package1 pk on s.id=pk.id join payment p on pk.id=p.id where s.id=?;");  
		        ps.setString(1,id+"");
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Transaction();  
		            u.setId(rs.getInt("id"));
		            u.setFirstname(rs.getString("firstname"));
		            u.setLastname(rs.getString("lastname"));
		            u.setContact(rs.getString("contact"));
		            u.setEmail(rs.getString("email"));
		            u.setPack(rs.getString("package"));
		            u.setSdate(rs.getDate("sdate"));
		            u.setEdate(rs.getDate("edate"));
		            u.setAmount(rs.getString("amount"));  
		            u.setPaymentstatus(rs.getString("paymentstatus"));  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
	 public static List<Transaction> getAllRecordsType(String search){  
		    List<Transaction> list=new ArrayList<Transaction>();  
		      
		    try{  
		    	DB_Connection obj_DB_Connection=new DB_Connection();
		    	Connection connection=obj_DB_Connection.get_connection();
		        PreparedStatement ps=connection.prepareStatement("select s.id,s.firstname,s.lastname,s.contact,s.email,pk.package,pk.sdate,pk.edate,pk.amount,p.paymentstatus from signup s join package1 pk on s.id=pk.id join payment p on pk.id=p.id where s.id like ? or s.firstname like ? or s.contact like ? or s.email like ? or pk.package like ? or p.paymentstatus like ?;");  
		        ps.setString(1,search+"");
		        ps.setString(2,search+"");
		        ps.setString(3,search+"");
		        ps.setString(4,search+"");
		        ps.setString(5,search+"");
		        ps.setString(6,search+"");
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Transaction u=new Transaction();  
		            u.setId(rs.getInt("id"));
		            u.setFirstname(rs.getString("firstname"));
		            u.setLastname(rs.getString("lastname"));
		            u.setContact(rs.getString("contact"));
		            u.setEmail(rs.getString("email"));
		            u.setSdate(rs.getDate("sdate"));
		            u.setEdate(rs.getDate("edate"));
		            u.setAmount(rs.getString("amount"));  
		            u.setPaymentstatus(rs.getString("paymentstatus"));   
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);}
		    return list;  
		}  

}