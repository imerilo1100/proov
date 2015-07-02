package hindakogemust.db;

import java.sql.*;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import hindakogemust.db.service.KategooriaService;


public class DBApp {
	public static void main(String[] args) {
		try {
	      // create our mysql database connection
	      String myDriver = "org.gjt.mm.mysql.Driver";
	      String myUrl = "jdbc:mysql://localhost/HindakogemustDB";
	      Class.forName(myDriver);
	      Connection conn = DriverManager.getConnection(myUrl, "root", "AnirmathianTech5");
	      // our SQL SELECT query. 
	      String query = "SELECT * FROM Kategooria";
	      // create the java statement
	      Statement st = conn.createStatement();
	      // execute the query, and get a java resultset
	      ResultSet rs = st.executeQuery(query);
	      // iterate through the java resultset
	      while (rs.next()) {
	        String nimetus = rs.getString("nimetus");
	        System.out.println(nimetus);
	      }
	      st.close();
	    }
	    catch (Exception e)
	    {
	      System.err.println("Got an exception! ");
	      System.err.println(e.getMessage());
	    }
	}
	
	public static void katByID(int ID) {
		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext("DBContext.xml");
		KategooriaService katService = (KategooriaService) context.getBean("KategooriaService");
		System.out.println(katService.findKategooriaByID(ID).getNimetus());
		context.close();
	}
	
	//This exists for testing purposes. 
}