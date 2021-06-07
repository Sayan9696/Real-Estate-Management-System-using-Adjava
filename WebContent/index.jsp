   <!DOCTYPE html>
    <html>
    <title>Makanmalik_Home</title>
    <link rel="icon" href="image/d.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/social.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


    <style>
    
        a:link{
            color: ghostwhite;
            text-decoration: none;
        }
        
        a:hover {
            color: red;
            text-decoration: none;
        }
        
        
        .logo:link{
            color: white;
            text-decoration: none;
        }
        
        
        .logo:hover{
            color: black;
            text-decoration: none;
        }
        
        .logo2:link{
            color: black;
            text-decoration: none;
        }
        
        .logo2:hover{
            color: red;
            text-decoration: none;
        }
              
        div.myc1{

	background:#003300;padding:10px;
	text-align:center;
	


}
           div.myc{

	background: #333300;padding:10px;
	text-align:center;
	


}
   hr.new4 {
  border: 1px solid white;
}
        
        
    </style>
    <body class="w3-black">

    <div class="w3-display-container">
      <div class="w3-bar w3-deep-purple w3-border">
       
        <button href="index.html" class="w3-bar-item w3-btn w3-center w3-mobile logo">Makanmalik.com<img src="image/d.png" alt="" style="width: 20px"></button>
     
        
          

       
        
        
       

       
        <a href="Rlogin.jsp" class="w3-bar-item w3-btn w3-center w3-mobile w3-right logo">Logout</a>
        <a href="customer_service.html" class="w3-bar-item w3-btn w3-center w3-mobile w3-right logo">Customer Service</a>
        <a href="SellProduct%20.html" class="w3-bar-item w3-btn w3-center w3-mobile w3-right logo">Sell Property</a>
        <a href="RentProduct.jsp" class="w3-bar-item w3-btn w3-center w3-mobile w3-right logo">Rent Property</a>
        <a href="BuyProduct.jsp" class="w3-bar-item w3-btn w3-center w3-mobile w3-right logo">Buy Property</a>
      </div>
      



<%@page import="pack.GetD,java.sql.*" %>
<% 
Connection cn=GetD.getC();

try{
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	if(id.equals("")||pw.equals(""))
	{
		RequestDispatcher rd=request.getRequestDispatcher("Rlogin.html");
		rd.include(request,response );
		out.print("please give id");
	
	}else{
	String sql="select * from admin where MAILID=? and PASS=?";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, pw);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next()){

		
		HttpSession n=request.getSession();
		n.setAttribute("cname", rs.getString(2));
		out.print("login success"+"<br>");
		out.print("your id is:"+rs.getString(1)+"<br>");
		out.print("your name is:"+rs.getString(2)+"<br>");
		out.print("your mailId is:"+rs.getString(5)+"<br>");
		out.print("your address is:"+rs.getString(6)+"<br>");
		HttpSession s=request.getSession();
		s.setAttribute("cid", rs.getString(1));
		//RequestDispatcher rd=request.getRequestDispatcher("index.html");
		//rd.include(request,response );
	}
	else{
		
		RequestDispatcher rd=request.getRequestDispatcher("Rlogin.html");
		rd.include(request,response );
		out.print("wrong user id or password");
	}
	}
}catch(Exception e){
	System.out.println(e);
}
%>




     <div class="w3-content w3-display-container w3-section">
      <img class="mySlides" src="image/1.jpg" style="width:100%">
      <img class="mySlides" src="image/2.jpg" style="width:100%">
      <img class="mySlides" src="image/3.jpg" style="width:100%">
      <img class="mySlides" src="image/4.jpg" style="width:100%">
      <img class="mySlides" src="image/5.jpg" style="width:100%">
      <img class="mySlides" src="image/6.jpg" style="width:100%">
      <img class="mySlides" src="image/7.jpg" style="width:100%">
      <div class="w3-white w3-display-left" style="width:100%">
        
        <div class="w3-dropdown-hover w3-indigo w3-border w3-left" style="width: 15%;text-align: center;">
          <button class="w3-btn" style="font-size: 22px;">All Residential <i class="fa fa-chevron-down"></i></button>
          <div class="w3-dropdown-content w3-bar-block w3-card-4" style="width: 15%;">

            <a href="Sbhk.jsp?zn=1bhk" class="w3-bar-item w3-btn w3-center logo2">1 Bhk property</a>
            <a href="Sbhk.jsp?zn=2bhk" class="w3-bar-item w3-btn w3-center logo2">2 Bhk property</a>
            <a href="Sbhk.jsp?zn=3bhk" class="w3-bar-item w3-btn w3-center logo2">3 Bhk property</a>
             <a href="Sbhk.jsp?zn=4bhk" class="w3-bar-item w3-btn w3-center logo2">4 Bhk property</a>
            <a href="Pricerange.html" class="w3-bar-item w3-btn w3-center logo2"> Price Range</a>

          </div>
        </div>
		<form action="Searchp.jsp">
      	<button type="submit" class="w3-btn w3-bar-item w3-right w3-mobile"><i class="fa fa-search" style="font-size: 17px; border-bottom:1px;padding:8px;"></i></button>

      	 <input type="text" name="sn" class="w3-bar-item w3-white w3-mobile w3-right" style="width: 700px;border:none;border-bottom:1px solid #ccc;padding:8px;font-size: 22px" placeholder="Search for building, apartment and more..">
 </form>
 
      </div>
  
      
    </div>
<br>
   
   
   <div class="w3-row">
      <div class="w3-container w3-half">
        <div class="w3-row">
            <div class="w3-container w3-half">
                <div class="w3-row">
                    <div class="w3-container w3-half">
                        <a href="builder_page.html"> <img src="image/builder.jpg" style="width:100%" alt=""></a>
                    </div>
                    <div class="w3-container w3-half">
                        <a href="builder_page.html"><img src="image/builder.jpg" style="width:100%"></a>
                    </div>
                </div>
              </div>
              
              
              <div class="w3-container w3-half">
<!--                 <a href=""><img src="image/Shirt/4.jpeg" style="width:55%"></a>-->
            
                    <div class="w3-row">
                    <div class="w3-container w3-half">
                        <a href="builder_page.html"> <img src="image/builder.jpg" style="width:100%" alt=""></a>
                    </div>
                    <div class="w3-container w3-half">
                        <a href="builder_page.html"><img src="image/builder.jpg" style="width:100%"></a>
                    </div>
                </div>
                    
             </div>
        </div>
      </div>
      <div class="w3-container w3-half">
        <div class="w3-row">
            <div class="w3-container w3-half">
                <div class="w3-row">
                    <div class="w3-container w3-half">
                        <a href="builder_page.html"><img src="image/builder.jpg" style="width:100%"></a>
                    </div>
                    <div class="w3-container w3-half">
                        <a href="builder_page.html"><img src="image/builder.jpg" style="width:100%"></a>
                    </div>

                    
                </div>
                 
                 
              </div>
              <div class="w3-container w3-half">
               <div class="w3-row">
                   <div class="w3-container w3-half">
                       <a href="builder_page.html"><img src="image/builder.jpg" style="width:100%"></a>
                   </div>
                   <div class="w3-container w3-half">
                       <a href="builder_page.html"><img src="image/builder.jpg" style="width:100%"></a>
                   </div>
                  </div>
              </div>
        </div>
      </div>
      
    </div>
    
     <hr class="new4">
  <h2 class="w3-left w3-text-sand"><b><u>Normal Property</u></b></h2><br>
  <hr class="new4">
    
    <%

try{
	
	String sql="select * from PROPERTY";
	PreparedStatement ps=cn.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	%>
	
	
	<%
	while(rs.next())
	{  int z=rs.getInt(6)/100000;
%><div class="myc1" height="250px" width="300px" style="float:left;margin:25px">
 <a href="Propertyview.jsp?rd=<%=rs.getString(2)%>"><img src="<%=rs.getString(9)%>" height="240px" width="285px"><br><u><%=rs.getString(2) %></u><br><%=rs.getString(7)%><br><%=z%>lac Rs</a>
</div>




<%} %>

<%}catch(Exception e){
	out.print(e);
}%>  
    

    
    </div>
<div class="w3-container w3-Black  w3-row w3-panel w3-border-gray">
     
     </div>

    <hr>  
    <hr class="new4"> 
    <h2 class="w3-left w3-text-sand"><b><u>Rent Property</u></b></h2><br><hr class="new4">

<body>





<%

try{
	
	String sql="select * from RENT";
	PreparedStatement ps=cn.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{ int k=rs.getInt(7)/1000;
%><div class="myc" height="240px" width="300px" style="float:left;margin:25px">
 <a href="Rentview.jsp?rd=<%=rs.getString(1)%>"><img src="<%=rs.getString(9)%>" height="225px" width="280px"><br><u><%=rs.getString(2) %></u><br><%=k%>K Rs<br><%=rs.getString(6) %></a>
</div>



</tr>
<%} %>
<tr>
<%}catch(Exception e){
	out.print(e);
}%>

</div>

    <br>
    <br>
    </div>
<div class="w3-container w3-Black  w3-row w3-panel w3-border-gray">
     
     </div>
      <div class="w3-container w3-dark-gray  w3-row w3-panel w3-topbar w3-bottombar w3-border-dark-gray ">
     
          

<div class="w3-third w3-container w3-center ">
   
<h4 class="w3-center "><b>REAL ESTATE IN INDIA</b></h4>
<b>Normal property</b>    <b>Rent property</b><br>
<a href="Searchp.jsp?sn=kolkata">kolkata</a>    <a href="Searchr.jsp?fn=kolkata">kolkata</a> <br>
<a href="Searchp.jsp?sn=chennei">chennai</a>    <a href="Searchr.jsp?fn=chennei">chennai</a> <br>
<a href="Searchp.jsp?sn=mumbai">mumbai</a>    <a href="Searchr.jsp?fn=mumbai">mumbai</a> <br>
<a href="Searchp.jsp?sn=delhi">delhi</a>    <a href="Searchr.jsp?fn=delhi">delhi</a> <br>
<a href="Searchp.jsp?sn=punjab">punjab</a>    <a href="Searchr.jsp?fn=punjab">punjab</a> <br>
<a href="Searchp.jsp?sn=uttarpradesh">uttarpradesh</a>    <a href="Searchr.jsp?fn=uttarpradesh">uttarpradesh</a> <br>
<a href="Searchp.jsp?sn=pune">pune</a>    <a href="Searchr.jsp?fn=pune">pune</a> <br>
<a href="Searchp.jsp?sn=bengalore">bengalore</a>    <a href="Searchr.jsp?fn=bengalore">bengaluru</a> <br>
</div>


<div class="w3-third w3-container w3-center">

<h4 class="w3-center"><b>COMPANY</b></h4>

<a href="Our%20Team/Our%20Team.html">about us</a>     <br>
<a href="Contact%20Us/contactus.html">contact us</a>     <br>
<a href="SafetyGuide/Safety%20Guide.html">safety guide</a>     <br>
<a href="PrivacyPolicy/Privacy%20Policy.html">privacy policy</a>     <br>
<a href="url">carreer with us</a>     <br>
<a href="Terms%20&%20Conditions/T&C.html">Terms and condition</a>     <br>
<a href="url">feedback</a>     <br>
<a href="Adindex.jsp">link text</a>     <br>
</div>


<div class="w3-third w3-container w3-center">
  
<h4 class="w3-center"><b>Our Partner</b></h4>
<a href="https://www.naukri.com">Naukri.com</a>     <br>
<a href="https://www.naukrigulf.com ">Naukrigulf.com </a>     <br>
<a href="https://www.jeevansathi.com">Jeevansathi.com</a>     <br>
<a href="http://www.brijj.com">link text</a>     <br>
<a href="https://www.shiksha.com">Shiksha.com</a>     <br>
<a href="https://www.policybazaar.com">Policybazaar.com</a>     <br>
<a href="https://www.paisabazaar.com">PaisaBazaar.com</a>     <br>
<a href="https://www.ambitionbox.com">AmbitionBox.com</a>     <br>
</div>

</div>
   
   <div class="w3-container w3-dark-gray  w3-row w3-panel w3-topbar w3-bottombar w3-border-dark-gray">
     
       <b>Disclaimer:</b><i> Makanmalik Realty Services Limited is only an intermediary offering its platform to facilitate the transactions between Seller and Customer/Buyer/User and is not and cannot be a party to or control in any manner any transactions between the Seller and the Customer/Buyer/User. All the offers and discounts on this Website have been extended by various Builder(s)/Developer(s) who have advertised their products. Makanmalik.com is only communicating the offers and not selling or rendering any of those products or services. It neither warrants nor is it making any representations with respect to offer(s) made on the site. Makanmalik.com Realty Services Limited shall neither be responsible nor liable to mediate or resolve any disputes or disagreements between the Customer/Buyer/User and the Seller and both Seller and Customer/Buyer/User shall settle all such disputes without involving Makanmalik.com Realty Services Limited in any manner.
</div></i>



  
  
    
     
     
     
     
     
     
      <footer class="w3-gray w3-card  w3-animate-bottom"  style="margin-top: 0%">
        <div class="w3-container w3-center">
            <div class="w3-animate-zoom">

        <a href="https://www.facebook.com" style= "width: 30px;color: white;border-radius: 10%;font-size: 20px; background-color:#3B5998;padding:5px 10px 1px 10px"><i class="fa fa-facebook"></i></a>
        <a href="https://api.whatsapp.com/send?phone=918436475478&text=Hi, I contacted you Through your website." class="social-icon whatsapp"><i class="fa fa-whatsapp" style= "background-color:#00e676;color:white;font-size: 30px;border-radius: 100%;"></i></a>
    <a href="https://www.youtube.com" ><i class="fa fa-youtube-play" style="font-size: 30px;color:red;"></i></a>
    <a href="https://twitter.com" ><i class="fa fa-twitter" style="font-size: 30px;"></i></a>
    <a href="http://raifoundation.in//rai.apk"><i class="fa fa-android" style= "color:#a4c639;font-size: 30px;border-radius: 5%;"></i></a>
    <a href="https://plus.google.com/u/0/113156361321846797916"><i class="fa fa-google-plus" style="font-size: 25px;"></i></a>
    <a href="https://www.instagram.com/" ><i class="fa fa-instagram" style="font-size: 27px;"></i></a>
    <a href="https://www.tumblr.com/blog"><i class="fa fa-tumblr" style="font-size: 28px;color:  #2c4762;"></i></a>
    <a href="https://in.pinterest.com/"><i class="fa fa-pinterest" style="font-size: 25px;"></i></a>
        </div>
        </div>
    </footer>
   
    </body>

    <script src="js/index.js"></script>
     <script src="js/index.js"></script>
    <script src="js/nav.js"></script>
    
    </html>