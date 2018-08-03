package Local;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRichTextString;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


public class Export {
public static void main(String[] args) throws FileNotFoundException, IOException {
	new Export().main();
}
	public  void main()throws FileNotFoundException, IOException {
		System.out.println("--------------------------------");
		FileOutputStream fs = null;
		String path = "";
		try {
			Workbook xlsWorkbook = new XSSFWorkbook();
			XSSFSheet sheet = (XSSFSheet) xlsWorkbook.createSheet();
			sheet = (XSSFSheet) xlsWorkbook.getSheetAt(0);
			CellStyle style = xlsWorkbook.createCellStyle();
	    	//style.setBorderTop((short) 6); // double lines border
	    	//style.setBorderBottom((short) 1); // single line border
	    	style.setFillBackgroundColor(XSSFFont.COLOR_NORMAL);
        
	    	Font font = xlsWorkbook.createFont();
	    	XSSFFont font1 = (XSSFFont) font;
	    	font1.setFontName(font1.DEFAULT_FONT_NAME.toString());
	    	font1.setFontHeightInPoints((short) 14);
	    	font1.setBold(font1.getBold());
        
	    	XSSFColor color = new XSSFColor(new java.awt.Color(46,139,87));
	    	font1.setColor(color);
        
	    	XSSFRichTextString richString11 = new XSSFRichTextString( "Transaction Reports" );
	    	richString11.applyFont(font1);
        
	    	CellStyle style1 = xlsWorkbook.createCellStyle();
	    	style1.setFont(font);
        
	    	Row titleRow1 = sheet.createRow(1);
	    	Cell hssfCell11 = titleRow1.createCell(1);
	    	hssfCell11.setCellStyle(style1);
	    	hssfCell11.setCellValue( richString11 );
	    	
  
	    	sheet.setColumnWidth(1, 10000);
	    	File f = new File("reports/TransactionReports.xlsx");
	    	f.createNewFile();
	    	fs	 = new FileOutputStream("reports/TransactionReports.xlsx");
	    	xlsWorkbook.write(fs);
	
		}catch(Exception e) {
			//return path;
		}
		
		//return path;

	}

}


