package org.hcl;
import pack.GetD.*;
import java.sql.*;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.sun.corba.se.spi.orbutil.fsm.Input;


@MultipartConfig(maxFileSize=169999999)
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	try{
		String id=request.getParameter("id");
		Part filePart=request.getPart("photo");
		System.out.println("hello"+" "+id+" "+filePart);
		InputStream inputStream= null;
		if (filePart!=null){
			long fileSize = filePart.getSize();//not use
			String fileContent = filePart.getContentType();//not use
			inputStream = filePart.getInputStream();
			}
		//Connection cn=GetD.getC();
		//static String driver="com.ibm.db2.jcc.DB2Driver";
		String url="jdbc:db2://localhost:50000/REMS";
		String user="LAPTOP";
		String pass="nopass123";
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection cn=DriverManager.getConnection(url,user,pass);
		PreparedStatement ps=cn.prepareStatement("INSERT INTO images VALUES (? , ?)");
		ps.setString(1, id);
		ps.setBlob(2, inputStream);
		
		int returCode=ps.executeUpdate();
		
		if(returCode == 0){
			request.setAttribute("message","Error inserting file" );
			getServletContext().getRequestDispatcher("/failure.jsp").forward(request, response);
			
		}else{
			request.setAttribute("message","record insert successfully" );
			getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
			
		}
		
		
		
	}catch(Exception exe){
		exe.printStackTrace();
	}
	
	
	
	
	
	}

}
