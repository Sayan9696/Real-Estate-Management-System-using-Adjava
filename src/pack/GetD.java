package pack;
import java.sql.*;
public class GetD {
	static Connection cn=null;

	static String driver="com.ibm.db2.jcc.DB2Driver";
	static String url="jdbc:db2://localhost:50000/REMS";
	static String user="LAPTOP";
	static String pass="nopass123";
	public static Connection getC(){
	try{
		Class.forName(driver);
		cn=DriverManager.getConnection(url,user,pass);
		
	}catch(Exception e){
		System.out.println(e);
	}
	return cn;
	}
}
