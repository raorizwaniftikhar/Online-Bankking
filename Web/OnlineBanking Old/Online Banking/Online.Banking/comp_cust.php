<?php
session_start();

if(isset($_SESSION['username']))
{
?>
<html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">

<!--

body {
background-color: #eeeeee;
 SCROLLBAR-ARROW-COLOR:#666699; SCROLLBAR-BASE-COLOR: #3958A6;
}
.man_auth th{
background-color:#5368a6;
color: #000000;

}
.man_auth td{
background-color: #7699Cc;

}

.man_auth
{ 
background-color: #9DACDF;
border-top-color: #000033;
border-top-width: 1px;
border-right-width: 1px;
border-bottom-width: 1px;
border-left-width: 1px;
border-top-style: double;
border-right-style: double;
border-bottom-style: double;
border-left-style: double;
border-right-color: #000033;
border-bottom-color: #000033;
border-left-color: #000033;
height: auto;
width: 80%;
margin-top: 1px;
margin-right: 1px;
margin-bottom: 1px;
margin-left: 1px;
padding-top: 1px;
padding-right: 1px;
padding-bottom: 1px;
padding-left: 1px;
text-indent: 2px;
font-family: Verdana, Arial, Helvetica, sans-serif;
font-size: 12px;
}

input.admin_add_items
{  
color:#055;
font-family:'trebuchet ms',helvetica,sans-serif;
font-size:84%;
font-weight:bolder;
background-color:#fed; 
width :10%;
border:1px solid;
border-top-color:#7699Cc;
border-left-color:#7699Cc;
border-right-color:#7699Cd;
border-bottom-color:#7699Cc;
filter:progid:DXImageTransform.Microsoft.Gradient
(GradientType=0,StartColorStr='#ffffffff',EndColorStr='#7699Cc');
  }

.style6 {
color: #FFFFFF
}
</style>

<?php
 include 'db_connect.php'; 
$cust=mysql_query("select custid from customer Order by custid"); 
if(isset($_POST['complaint'])) 
{
$acctnum=ucwords($_POST['userid']); 
$subject=ucwords($_POST['subject']);
$complaint=ucwords($_POST['complaint']);

//$comdate= $dates[year]."-".$dates[mon]."-".$dates[mday];

if ($subject=="")
{
echo "subject is empty...";
}
elseif($complaint=="")
{
echo "complaint Not must be empty...";
}

else 
{ 
$result = mysql_query("Insert into complaint(acct_no,subject,com_date,complaint) values('".$acctnum."','".$subject."','".$comdate."','".$complaint."')");                 
$db_close=mysql_close();			 
}
}
?>
<body>
<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>  <TBODY>   
<tr>    
<TD width=1288 background="images/top.gif"  height=10>
<a href="admin_data.php">
<STRONG>
<FONT face="Verdana, Arial, Helvetica, sans-serif" color=#000000 size=2>Home </FONT>
</STRONG></table>
</p>
<form action="" method=post><br><br>
<p align=center>User id : <input type="text" name="userid">

<p align=center>Subject : <input type="text" name="subject"> <br><br></p>
<p align=center>
<u>complaint</u> : <br><br>	<textarea name="complaint"  rows=10 cols=30></textarea></p>
<p align=center><input type="submit" name="submit" value=Send>   &nbsp; &nbsp;&nbsp;       <input type="reset" name="reset" value=clear> </p>
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