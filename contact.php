<?php
include 'config.php';

$name= $_POST['name'];
$email = $_POST['email'];
$mobile = $_POST['phone'];
$message = $_POST['message'];
$f=false;
$errMsg1=$errMsg2=$errMsg3=$errMsg4="";
if (!preg_match("/^[a-zA-Z ]*$/",$name)) 
{
	$errMsg1= "Only letters and white space allowed in name.";
    $f=	true;
}
  if(is_numeric($mobile) == false)
  {
	  $errMsg3=  " Please enter only numeric values as Mobile number.";
       $f=true;
}
  if(strlen($mobile)<10)
  {
	  $errMsg4=  "Mobile Number should be of ten digits.";
        $f=true;
  }
  if($f==true)
{  
echo "<script>alert('$errMsg1$errMsg2$errMsg3$errMsg4');window.location='index.html#contact';</script>";
}
else
{
	
       
            $insert_registration=mysql_query("Insert into `contactus` values('$name','$email','$mobile','$message')");
	        if($insert_registration)
	        {
              echo "<script>alert('Thanks for Showing interest in UPES-CSI');window.location ='index.html';</script>"; 
	        }
	        else
	        {
              echo "<script>alert('Error occured. Please try again.');window.location ='index.html';</script>";
            }
}
		


?>