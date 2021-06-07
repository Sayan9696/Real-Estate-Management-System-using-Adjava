<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*" %>
<%
try{
	//PrintWriter out=response.getWriter();
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/REMS","LAPTOP","nopass123");
	String sql="select * from PROPERTY";
	PreparedStatement ps=cn.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		out.print(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+"<br>");
	
	}
	
}catch(Exception e){
	out.println(e);
}

%>
</body>
</html>