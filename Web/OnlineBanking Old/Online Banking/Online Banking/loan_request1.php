<?php
session_start();

if(isset($_SESSION['username']))
{
?>
<html>
<?php 
include 'db_connect.php'; 




$loan_type=$HTTP_POST_VARS["loantype"];

if(isset($_POST['submit2']))         
{
echo "asf";
$cust=mysql_query("select first_name,address,contact_number,email from customer where custid='".$_SESSION['username']."'");   
while($cust1 = mysql_fetch_array($cust))
{
$name=$cust1[0];
$email=$cust1[3];
$phone=$cust1[2];
$address=$cust1[1];
}


$custid=$_SESSION['username']; 
$loantype=$_POST['loan_type2'];			 
$loan_amount=$_POST['loan_amount'];

$duration=$_POST['repayment'];
$profession=$_POST['prof'];
$income=$_POST['anual_income'];         
$date=date("Y-m-d");
$status="pending";



$result = mysql_query("Insert into loan values('".$custid."','".$loantype."','".$loan_amount."','" . $duration."','" . $name."','".$address."','" . $profession."','" . $income."','" . $phone."','" . $email."','" . $date."','" . $status."')");                 
$db_close=mysql_close();			 

if($result)			    
{		
echo "Request submited to Administrator...";
echo "<p>Click <a href='loan.php'> here </a> to add another";
exit(0); //echo "Added To The Database";	
echo $qns;
}			 
else			  
{			
echo "Request not submited...";
echo "<p>Click <a href='loan.php'> here </a> to go back";
exit(0);			  
} 		
}
?>
<body >

<form name=form1 method="post" action="loan_request1.php">
<table>
<?php
$a1=mysql_query("select * from loan_type where loan_type='$loan_type' OR loan_type='other'");
while($a2 = mysql_fetch_array($a1,MYSQL_BOTH))
{
print " <TR><TD  align=middle><div align=\"left\"";
print " class=\"style2\"><B>Loan Type</B><BR></div></TD>";
print " <TD width=\"59%\"align=left ><input"; 
print " name=loan_type2 type=\"text\"";
print " value=$a2[0] tabindex=\"1\"></TD></TR>";

print " <TR><TD  align=middle><div align=\"left\"";
print " class=\"style2\"><B>loan amount:</B><BR></div></TD>";
print " <TD width=\"59%\"align=left ><input"; 
print " name=loan_amount type=\"text\"";
print " value=$a2[2] tabindex=\"1\"></TD></TR>";

print " <TR><TD  align=middle><div align=\"left\"";
print " class=\"style2\"><B>Duration</B><BR></div></TD>";
print " <TD width=\"59%\"align=left ><input"; 
print " name=repayment type=\"text\"";
print " value=$a2[1] tabindex=\"1\"></TD></TR>";


}
?>


<br><tr><td class="firstalt "><span class="style6 ">
profession </span > </td> <td class="secondalt "><span class="man_auth td"><select name=prof>  
<option value="Salaried">Salaried </option>
<option value="Business">Business </option>
<option value="Self Employed">Self Employed </option>

</select></span></td></tr>
<br>
<tr><td class="firstalt "><span class="style6 ">Gross Annual Income </span > </td><td class="secondalt "><span class="man_auth td">
<input name="anual_income" type="text"  ></span></td></tr>
<br><tr><td colspan=2>
<input name="submit2" type="submit" value="Send" >  
 <input name="cancel" type="submit" value="Cancel"></td></tr>

</table>
</form>
</body>
</html>
<?php
}
else
{
echo "Please click here to login " . "<a href=index.php>Login Page</a>";
}
?>