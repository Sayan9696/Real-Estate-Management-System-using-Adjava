<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login portal</title>
  <meta charset="utf-8">
  
  <link rel="icon" href="image/d.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/social.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <style>









  .page-body {

     margin: 30px;
      

  }

 

.navbar {
  min-height: 30px;
  border-style: solid;
  border-width: 0px 0px 1px 0px;
  border-color: #9EA5AB;
}

.sub-navbar {
  
  border-style: solid;
  border-width: 0px 0px 1px 0px;
  border-color: #9EA5AB;
}

.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
}


a:link {
    color: #5E6C78;
    background-color: transparent;
    text-decoration: none;
}
a:visited {
    color: #5E6C78;
    background-color: transparent;
    text-decoration: none;
}
a:hover {
    color: #A3BDD3;
    background-color: transparent;
    text-decoration: none;
}
a:active {
    color: #5E6C78;
    background-color: transparent;
    text-decoration: none;
}


.container {
  position: relative;
  width: 100%;
  max-width: 1000px;
}

.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  opacity: 0;
  transition: .3s ease;
  background-color: r;
}

.container:hover .overlay {
  opacity: 1;
}

a.links-items{
  color: orange;
  background-color: transparent;
  text-decoration: none;
}

input[type=text], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 50%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 50px;
}

input[type=submit]:hover {
    background-color: #45a049;
}
body{
		background-image: url(101.jpg);
		background-repeat: no-repeat;
		background-position:top;
		background-size: cover;
	}
  
input[type=password], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
  </style>


<body>
   <%@page import="pack.*,java.sql.*" %>
   
<%Connection cn=GetD.getC();
try{

	
	
	String cname=request.getParameter("cname");
	String pw=request.getParameter("pw");
	String addr=request.getParameter("addr");
	String ph=request.getParameter("ph");
	String ml=request.getParameter("ml");
	
	
	
	
	if(pw.equals("")||cname.equals("")||ml.equals("")||ph.equals("")||addr.equals(""))
	{out.print("please fill the form");
		RequestDispatcher rd=request.getRequestDispatcher("signin.html");
		rd.include(request,response );
		out.print("please give id");
	
	}else{
		int id=0;
		PreparedStatement p=cn.prepareStatement("select max(ID) from ADMIN");
		ResultSet rs=p.executeQuery();
		if(rs.next()){
			id=rs.getInt(1);
			id++;
	String sql="insert into ADMIN values(?,?,?,?,?,?)";
	PreparedStatement ps=cn.prepareStatement(sql);
	
	ps.setInt(1, id);
	ps.setString(2, cname);
	ps.setString(3, pw);
	ps.setString(4, ph);
	ps.setString(5, ml);
	ps.setString(6, addr);
	
	ps.execute();
	}
}
	}
catch(Exception e)
{System.out.println(e);
}


%>	<div class="w3-display-container">
  <div class="w3-bar w3-deep-purple w3-border">
    <a href="welcome.html" class="w3-bar-item w3-btn w3-center w3-mobile"><font color="white">Makanmalik.com</font><img src="image/d.png" alt="" style="width: 20px"></a>
 
</div>

   <div class="page-body">

    
    <form  style="text-align: center;" action="index.jsp">

      <h1 style="margin-bottom: 50px; color: #BLUE"><font color="white"><b>Login Portal</b></font></h1><br>
      <h1 style="margin-bottom: 50px; color: red"><b>Now you can login....</b></h1><br>
   
      <input type="text" id="id" name="id" placeholder="Enter email ">

    
      <input type="password" id="pw" name="pw" placeholder="Enter Password">
  
      <input type="submit" value="Submit" onclick="age()">

      
    </form>

    <div style="text-align: center; margin-top: 30px">
      
    </div>  
  </div>
    
     <script>
function age(){
	var x=document.getElementById("id").value;
	
	if(x==""){
		alert("please enter id");
		}	
	var y=document.getElementById("pw").value;
	
	if(y==""){
		alert("please enter password");
		return false;}	
		

}
</script>
  

</body>
</html>
