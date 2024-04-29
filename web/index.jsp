<%-- 
    Document   : busticketreservation.bd.jsp
    Created on : Oct 10, 2016, 4:22:01 PM
    Author     : Asus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Bus Ticket Reservation</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    
<script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
     });
  </script>
    </head>
    <body>
        <div id="header">
            <div> <a href="index.html"><img src="images/logo.gif" alt=""></a>
    <ul>
      <li class="current"><a href="index.html">Home</a></li>
      <li><a href="">About us</a></li>
      <li><a href="">Contact us</a></li>
    </ul>
            </div>
</div>
<div id="content">
    <div>
        <div>
            <h1>Reserve e Sit Today!</h1>
            <form method="post" action="dataloc.jsp">
                <table border="1" width="40%" cellpadding="3">
                    <thead>
                        <tr><th colspan="2">Please Select</th></tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Leaving From:<br/>
                                    <select name="fromcity">
                                        <option value="" label="---" selected="selected">---</option>
                                        <option value="Dhaka">Dhaka</option>
                                        <option value="Khulna">Khulna</option>
                                        <option value="Barisal">Barisal</option>
                                        <option value="Rajshahi">Rajshahi</option>
                                        <option value="Chittagong">Chittagong</option>
                                        <option value="Mymansingh">Mymansingh</option>
                                        <option value="Feni">Feni</option> 
                                    </select><br/>    
                            </td>                       
                            <td>Going To:<br/>
                                     <select name="tocity">
                                        <option value="" label="---" selected="selected">---</option>
                                        <option value="Dhaka">Dhaka</option>
                                        <option value="Khulna">Khulna</option>
                                        <option value="Barisal">Barisal</option>
                                        <option value="Rajshahi">Rajshahi</option>
                                        <option value="Chittagong">Chittagong</option>
                                        <option value="Mymansingh">Mymansingh</option>
                                        <option value="Feni">Feni</option> 
                                    </select><br/> 
                            </td>
                        </tr>
                        <tr>
                            <td>Departing On:<br/><input type="text" name="date" id="datepicker" value="--Select Date--" size="11"></td> 
                             <td>Coach Type<br/>
                                 <select name="coach">
                                         <option value="" label="---" selected="selected">---</option>
                                         <option value="AC">AC</option>
                                        <option value="NoN AC">NoN-AC</option>
                             </td>  
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" name="searh" value="Search"/></td>
                        </tr>
                    </tbody>
                </table>   
            </form>
        </div>    
    </div>
</div>
    </body>
</html>
