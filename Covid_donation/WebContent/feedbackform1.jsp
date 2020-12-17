<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Feedback Form </title>
        <style>body{
            background: url('images/money1.jpg')no-repeat;
            background-size: cover;
            height: 130vh;
            background-position: left;
        }
        .container{
         font-family: 'Raleway', sans-serif;
            letter-spacing: 2px;
            font-weight: 800;
            font-size: 18px;
            color: rgb(48, 20, 48);
            font-color:'red';
        }
        
        input[type=submit] {
  background-color: black;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}
input[type=button] {
  background-color: black;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}
input[type=reset] {
  background-color: black;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}

input[type=reset]:hover {
  background-color: #DF664E;
}
input[type=button1] {
  background-color: white;
  color: black;
  padding: 12px 10px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}

input[type=button1]:hover {
  background-color: #DF664E;
}

input[type=submit]:hover {
  background-color: #DF664E;
}
}
input[type=button]:hover {
  background-color: #DF664E;
}
        
        </style>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <link rel="stylesheet" href="form.css" >
        <script src="form.js"></script>
    </head>
    <body >
      <div class="container">
 <div class="w3-main" style="margin-left:820px;margin-top:0px;"><br>
 <a href="some.jsp" ><input type="button1" value="View Others Experience "></a>
 </div>
            <div class="row " style="margin-top:0px">
                <div class="col-md-6 col-md-offset-3 form-container">
                  <center>
                   <h2 style = "text-align: center; font-weight: bold; font-size : 50px; color :  #DE3163 ;font-family: 'Algerian', sans-serif; letter-spacing: 2px;" >Feedback</h2>
   </center><br>
   
                    <p> Please provide your feedback below: </p>
                    <form role="form" action="add_feedback1.jsp" method="post" id="reused_form" >
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label>How do you rate your overall experience?</label><br>
                                <p>
                                    <label class="radio-inline">
                                        <input type="radio" name="rating" id="radio_experience" value="bad" >
                                        Bad 
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rating" id="radio_experience" value="average" >
                                        Average 
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rating" id="radio_experience" value="good" >
                                        Good 
                                    </label>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label for="comments"> Comments:</label>
                                <textarea class="form-control" type="textarea" name="comments" id="comments" placeholder="Your Comments" maxlength="6000" rows="7"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="name"> Your Name:</label>
                                <input type="text" class="form-control" id="name" name="name" required>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="email"> Email:</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                        </div>
                        <input type="submit" value="Submit">
     <input type="reset" value="clear">
     <a href="Index.jsp" ><input type="button" value="Cancel"></a>
  
    
                    </form>
                  </div>
            </div>
        </div>
    </body>
</html>