<!DOCTYPE html>
<html lang="en">
<body bgcolor="#000000">


  <title>BuyProduct</title>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <link rel="icon" href="image/d.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/social.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <style>



   .page-body {

     margin: 60px;
      

  }
      a:link{
            color: black;
            text-decoration: none;
        }
      
      a:hover {
        color: red;
    }
        .logo:hover{
            color: black;
            text-decoration: none;
        }



.input_field {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

/*
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
*/
div.myc{

	background:#4d004d;padding:10px;
	text-align:center;
	


}
hr.new4 {
  border: 3px solid #4d9900;
}
  </style>



    
    
    
       <body class="w3-black">
       
  

 
  


  <div class="w3-bar w3-purple w3-border">
 

  
  
  
  
        <a href="Adindex.jsp" class="w3-bar-item w3-btn w3-center w3-mobile logo">Makanmalik.com<img src="image/d.png" alt="" style="width: 20px"></a>
     
        <div class="w3-dropdown-hover w3-indigo w3-border" style="width: 15%;text-align: center">
          <button class="w3-btn">All Residential<i class="fa fa-chevron-down"></i></button>
          <div class="w3-dropdown-content w3-bar-block w3-card-4" style="width: 15%;">
                   <a href="Sbhk.jsp?zn=1bhk" class="w3-bar-item w3-btn w3-center logo2">1 Bhk property</a>
            <a href="Sbhk.jsp?zn=2bhk" class="w3-bar-item w3-btn w3-center logo2">2 Bhk property</a>
            <a href="Sbhk.jsp?zn=3bhk" class="w3-bar-item w3-btn w3-center logo2">3 Bhk property</a>
             <a href="Sbhk.jsp?zn=4bhk" class="w3-bar-item w3-btn w3-center logo2">4 Bhk property</a>
            <a href="Pricerange.html" class="w3-bar-item w3-btn w3-center logo2"> Price Range</a>



    


          </div>
        </div>
          

           <form action="Searchp.jsp">
        <input type="text" name="sn" class="w3-bar-item w3-input w3-white w3-mobile" style="width: 500px;" placeholder="Search for building, apartment and more..">
        <button type="submit" class="w3-bar-item w3-btn w3-center w3-white w3-mobile"><i class="fa fa-search"></i></button>
        </form>
        <a class="w3-bar-item w3-mobile w3-right" style="width: 40px;"></a>
       
       <a href="BlockRent.jsp" class="w3-bar-item w3-btn w3-center w3-mobile w3-right logo">Upadated Property</a>
        
        
        
        

      </div>
      
      <center><h2>SELECTED RENT PROPERTY DELETED FROM DATABASE </h2></center>

<%@page import="pack.*,java.sql.*" %>
<% Connection cn=GetD.getC();
		try{
			String ad=request.getParameter("rd");
			String sql="delete from RENT where RID=?";
			PreparedStatement ps=cn.prepareStatement(sql);
			ps.setString(1, ad);
			ps.execute();
			//out.print("record delete...");
			//RequestDispatcher rd=request.getRequestDispatcher("delete.html");
			//rd.include(request, response);
			}catch(Exception e){
			System.out.println(e);
		}%>


<br><br><br><br><br><br><br><br><br><br><br><br>
   

</div>
<div class="w3-container w3-Black  w3-row w3-panel w3-border-gray">
     
     </div>
<br>

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
<a href="url">link text</a>     <br>

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
     
       <b>Disclaimer:</b><i> Makanmalik Realty Services Limited is only an intermediary offering its platform to facilitate the transactions between Seller and Customer/Buyer/User and is not and cannot be a party to or control in any manner any transactions between the Seller and the Customer/Buyer/User. All the offers and discounts on this Website have been extended by various Builder(s)/Developer(s) who have advertised their products. Magicbricks is only communicating the offers and not selling or rendering any of those products or services. It neither warrants nor is it making any representations with respect to offer(s) made on the site. Magicbricks Realty Services Limited shall neither be responsible nor liable to mediate or resolve any disputes or disagreements between the Customer/Buyer/User and the Seller and both Seller and Customer/Buyer/User shall settle all such disputes without involving Magicbricks Realty Services Limited in any manner.
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