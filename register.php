<?php
include 'config.php';

$name= $_POST['name'];
$email = $_POST['email'];
$password=$_POST['password'];
$sapid = $_POST['sapid'];
$year=$_POST['year'];
$branch = $_POST['branch'];
$mobile = $_POST['phone'];
$skill = $_POST['category'];



$f=false;
$errMsg1=$errMsg2=$errMsg3=$errMsg4=$errMsg5=$errMsg6="";
if (!preg_match("/^[a-zA-Z ]*$/",$name)) 
{
	$errMsg1= "Only letters and white space allowed in name.";
    $f=	true;
}
if (!filter_var($email, FILTER_VALIDATE_EMAIL))
{
  $errMsg2 = "Invalid email format";
   $f=	true;
  
}
  if(is_numeric($mobile) == false)
  {
	  $errMsg3=  " Please enter only numeric values as Mobile number.";
       $f=true;
}
  if(strlen($mobile)<10)
  {
	  $errMsg4= "Mobile Number should be of ten digits.";
        $f=true;
  }
  if(strlen($sapid)<9)
  {
	  $errMsg6= "Sapid should be of nine digits.";
        $f=true;
  }
  
  
  
  if($f==true)
{  
echo "<script>alert('$errMsg1$errMsg2$errMsg3$errMsg4$errMsg5$errMsg6');window.location='register.html';</script>";
}
else
{
            
            $insert_registration=mysql_query("Insert into `signup`(name,email,password,sapid,year,branch,phone,category) values('$name','$email','$password','$sapid','$year','$branch','$mobile','$skill')");
	        if($insert_registration)
	        {
              echo "<script>window.location ='welcome.html';</script>"; 
	        }
	        else
	        {
              echo "<script>alert('Error occured. Please try again.');window.location ='register.html';</script>";
            }
}

		


?>