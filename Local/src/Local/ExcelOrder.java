package Local;

import java.io.File;
import java.io.FileOutputStream;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelOrder {
	public void orderSearchByDate(String sdate,String edate) throws Exception {
	      Class.forName("com.mysql.jdbc.Driver");
	      Connection connect = DriverManager.getConnection( 
	         "jdbc:mysql://localhost:3306/localsearchengine" , 
	         "root" , "root"
	      );
	      Statement statement = connect.createStatement();
	      ResultSet resultSet = statement.executeQuery("select s.id,s.firstname,s.lastname,s.contact,s.email,l.category,c.subcategory,c.address,c.day,c.package,c.open,c.close,pk.sdate,pk.edate from signup s join category c on s.id=c.id join package1 pk on s.id=pk.id join listing l on s.id=l.id where pk.sdate >'"+sdate+"' and pk.sdate <='"+edate+"'");
	      XSSFWorkbook workbook = new XSSFWorkbook(); 
	      XSSFSheet spreadsheet = workbook.createSheet("employe db");
	      
	      XSSFRow row = spreadsheet.createRow(1);
	      XSSFCell cell;
	      cell = row.createCell(1);
	      cell.setCellValue("Id");
	      cell = row.createCell(2);
	      cell.setCellValue("First Name");
	      cell = row.createCell(3);
	      cell.setCellValue("Last Name");
	      cell = row.createCell(4);
	      cell.setCellValue("Contact");
	      cell = row.createCell(5);
	      cell.setCellValue("Email");
	      cell = row.createCell(6);
	      cell.setCellValue("Category");
	      cell = row.createCell(7);
	      cell.setCellValue("Sub Category");
	      cell = row.createCell(8);
	      cell.setCellValue("Address");
	      cell = row.createCell(9);
	      cell.setCellValue("Day");
	      cell = row.createCell(10);
	      cell.setCellValue("Package");
	      cell = row.createCell(11);
	      cell.setCellValue("Open");
	      cell = row.createCell(12);
	      cell.setCellValue("Close");
	      cell = row.createCell(13);
	      cell.setCellValue("Sdate");
	      cell = row.createCell(14);
	      cell.setCellValue("Edate");
	      int i = 2;

	      while(resultSet.next()) {
	         row = spreadsheet.createRow(i);
	         cell = row.createCell(1);
	         cell.setCellValue(resultSet.getString("id"));
	         cell = row.createCell(2);
	         cell.setCellValue(resultSet.getString("firstname"));
	         cell = row.createCell(3);
	         cell.setCellValue(resultSet.getString("lastname"));
	         cell = row.createCell(4);
	         cell.setCellValue(resultSet.getString("contact"));
	         cell = row.createCell(5);
	         cell.setCellValue(resultSet.getString("email"));
	         cell = row.createCell(6);
	         cell.setCellValue(resultSet.getString("category"));
	         cell = row.createCell(7);
	         cell.setCellValue(resultSet.getString("subcategory"));
	         cell = row.createCell(8);
	         cell.setCellValue(resultSet.getString("address"));
	         cell = row.createCell(9);
	         cell.setCellValue(resultSet.getString("day"));
	         cell = row.createCell(10);
	         cell.setCellValue(resultSet.getString("package"));
	         cell = row.createCell(11);
	         cell.setCellValue(resultSet.getString("open"));
	         cell = row.createCell(12);
	         cell.setCellValue(resultSet.getString("close"));
	         cell = row.createCell(13);
	         cell.setCellValue(resultSet.getString("sdate"));
	         cell = row.createCell(14);
	         cell.setCellValue(resultSet.getString("edate"));
	         i++;
	      }
	      FileOutputStream out = new FileOutputStream(new File("C:\\Users\\Sushmitha.B\\eclipse-workspace-3\\Local\\exceldatabase.xlsx"));
	      workbook.write(out);
	      out.close();
	      System.out.println("exceldatabase.xlsx written successfully");
	   
	}
   public static void main(String[] args) throws Exception {
      Class.forName("com.mysql.jdbc.Driver");
      Connection connect = DriverManager.getConnection( 
         "jdbc:mysql://localhost:3306/localsearchengine" , 
         "root" , "root"
      );
      
      Statement statement = connect.createStatement();
      ResultSet resultSet = statement.executeQuery("select s.id,s.firstname,s.lastname,s.contact,s.email,l.category,c.subcategory,c.address,c.day,c.package,c.open,c.close,pk.sdate,pk.edate from signup s join category c on s.id=c.id join package1 pk on s.id=pk.id join listing l on s.id=l.id");
      XSSFWorkbook workbook = new XSSFWorkbook(); 
      XSSFSheet spreadsheet = workbook.createSheet("employe db");
      
      XSSFRow row = spreadsheet.createRow(1);
      XSSFCell cell;
      cell = row.createCell(1);
      cell.setCellValue("Id");
      cell = row.createCell(2);
      cell.setCellValue("First Name");
      cell = row.createCell(3);
      cell.setCellValue("Last Name");
      cell = row.createCell(4);
      cell.setCellValue("Contact");
      cell = row.createCell(5);
      cell.setCellValue("Email");
      cell = row.createCell(6);
      cell.setCellValue("Category");
      cell = row.createCell(7);
      cell.setCellValue("Sub Category");
      cell = row.createCell(8);
      cell.setCellValue("Address");
      cell = row.createCell(9);
      cell.setCellValue("Day");
      cell = row.createCell(10);
      cell.setCellValue("Package");
      cell = row.createCell(11);
      cell.setCellValue("Open");
      cell = row.createCell(12);
      cell.setCellValue("Close");
      cell = row.createCell(13);
      cell.setCellValue("Sdate");
      cell = row.createCell(14);
      cell.setCellValue("Edate");
      int i = 2;
      while(resultSet.next()) {
         row = spreadsheet.createRow(i);
         cell = row.createCell(1);
         cell.setCellValue(resultSet.getString("id"));
         cell = row.createCell(2);
         cell.setCellValue(resultSet.getString("firstname"));
         cell = row.createCell(3);
         cell.setCellValue(resultSet.getString("lastname"));
         cell = row.createCell(4);
         cell.setCellValue(resultSet.getString("contact"));
         cell = row.createCell(5);
         cell.setCellValue(resultSet.getString("email"));
         cell = row.createCell(6);
         cell.setCellValue(resultSet.getString("category"));
         cell = row.createCell(7);
         cell.setCellValue(resultSet.getString("subcategory"));
         cell = row.createCell(8);
         cell.setCellValue(resultSet.getString("address"));
         cell = row.createCell(9);
         cell.setCellValue(resultSet.getString("day"));
         cell = row.createCell(10);
         cell.setCellValue(resultSet.getString("package"));
         cell = row.createCell(11);
         cell.setCellValue(resultSet.getString("open"));
         cell = row.createCell(12);
         cell.setCellValue(resultSet.getString("close"));
         cell = row.createCell(13);
         cell.setCellValue(resultSet.getString("sdate"));
         cell = row.createCell(14);
         cell.setCellValue(resultSet.getString("edate"));
         i++;
      }
      FileOutputStream out = new FileOutputStream(new File("C:\\Users\\Sushmitha.B\\eclipse-workspace-3\\Local\\exceldatabase.xlsx"));
      workbook.write(out);
      out.close();
      System.out.println("exceldatabase.xlsx written successfully");
   }
}