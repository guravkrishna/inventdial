package Local;

import java.io.File;
import java.io.FileOutputStream;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class Excel {
	public void transactionSearchByDate(String sdate,String edate) throws Exception {
	      Class.forName("com.mysql.jdbc.Driver");
	      Connection connect = DriverManager.getConnection( 
	         "jdbc:mysql://localhost:3306/localsearchengine" , 
	         "root" , "root"
	      );
	      Statement statement = connect.createStatement();
	      ResultSet resultSet = statement.executeQuery("select s.id,s.firstname,s.lastname,s.contact,s.email,pk.package,pk.sdate,pk.edate,pk.amount,p.paymentstatus from signup s join package1 pk on s.id=pk.id join payment p on pk.id=p.id where pk.sdate >'"+sdate+"' and pk.edate <='"+edate+"'");
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
	      cell.setCellValue("Package");
	      cell = row.createCell(7);
	      cell.setCellValue("Start Date");
	      cell = row.createCell(8);
	      cell.setCellValue("End Date");
	      cell = row.createCell(9);
	      cell.setCellValue("Amount");
	      cell = row.createCell(10);
	      cell.setCellValue("Status");
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
	         cell.setCellValue(resultSet.getString("package"));
	         cell = row.createCell(7);
	         cell.setCellValue(resultSet.getString("sdate"));
	         cell = row.createCell(8);
	         cell.setCellValue(resultSet.getString("edate"));
	         cell = row.createCell(9);
	         cell.setCellValue(resultSet.getString("amount"));
	         cell = row.createCell(10);
	         cell.setCellValue(resultSet.getString("paymentstatus"));
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
      ResultSet resultSet = statement.executeQuery("select s.id,s.firstname,s.lastname,s.contact,s.email,pk.package,pk.sdate,pk.edate,pk.amount,p.paymentstatus from signup s join package1 pk on s.id=pk.id join payment p on pk.id=p.id");
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
      cell.setCellValue("Package");
      cell = row.createCell(7);
      cell.setCellValue("Start Date");
      cell = row.createCell(8);
      cell.setCellValue("End Date");
      cell = row.createCell(9);
      cell.setCellValue("Amount");
      cell = row.createCell(10);
      cell.setCellValue("Status");
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
         cell.setCellValue(resultSet.getString("package"));
         cell = row.createCell(7);
         cell.setCellValue(resultSet.getString("sdate"));
         cell = row.createCell(8);
         cell.setCellValue(resultSet.getString("edate"));
         cell = row.createCell(9);
         cell.setCellValue(resultSet.getString("amount"));
         cell = row.createCell(10);
         cell.setCellValue(resultSet.getString("paymentstatus"));
         i++;
      }
      FileOutputStream out = new FileOutputStream(new File("C:\\Users\\Sushmitha.B\\eclipse-workspace-3\\Local\\exceldatabase.xlsx"));
      workbook.write(out);
      out.close();
      System.out.println("exceldatabase.xlsx written successfully");
   }
}