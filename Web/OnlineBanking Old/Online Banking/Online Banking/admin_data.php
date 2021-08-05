<?php
session_start();

if(isset($_SESSION['username']))
{
?>
<html>
<head>
<title>Admin Home</title>

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
.style6 {color: #FFFFFF}
</style>

</head>

<body>
<img src="logo.GIF" ><img src="main.jpg">
<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
  <TBODY>
 <TR>
<TD width=1288 background="images/top.gif"  height=10><STRONG><FONT face="Verdana, Arial, Helvetica, sans-serif" 
color=#ffffff size=2><center>ADMINISTRATOR ONLINE</center> </FONT></STRONG></TD>
 </TR>
 <TR>
<TD width=738 background="images/top_2.gif"  height=9><div align="justify"><STRONG><a href="admin_acc_view_general.php?mode=admin"><FONT face="Verdana, Arial, Helvetica, sans-serif" 
color=#ffffff size=2>Account Types </FONT></STRONG>
<font size="2"><STRONG><B><a href="customer_accounts.php"><FONT face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff> </FONT><FONT 
face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff size=2>| User Accounts </FONT></B></STRONG></font>
<FONT face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff size=2><strong>| </strong></FONT><a href="crt.php?mode=admin"><font size="2"><STRONG><B><FONT face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff><FONT 
color=#ffffff>Password Setting</FONT></FONT></B></STRONG></font></a>
<font size="2"><STRONG><B><a href="search.php?mode=admin"><FONT face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff> </FONT><FONT 
face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff size=2>| Search </FONT></B></STRONG></font><font size="2"><STRONG><B><a href="tran.php?mode=admin"><FONT 
face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff size=2>| Transaction Manager </FONT></B></STRONG></font>

<font size="2"><STRONG><B><a href="mini_st.php?mode=admin"><FONT 
face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff size=2>| Mini Statement </FONT></B></STRONG></font>

<font size="2"><STRONG><B><a href="loan3.php?mode=admin"><FONT 
face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff size=2>| Loan  </FONT></B></STRONG></font>

<font size="2"><STRONG><B><a href="money_tran_admin.php?mode=admin"><FONT 
face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff size=2>| Found Transaction </FONT></B></STRONG></font>

<font size="2"><STRONG><B><a href="complaint_admin.php?mode=admin"><FONT 
face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff size=2>| Compose </FONT></B></STRONG></font>

<font size="2"><STRONG><B><a href="inbox_admin.php?mode=admin"><FONT 
face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff size=2>| Inbox </FONT></B></STRONG></font>
</div></TD>
 </TR>
<TR>
<TD width=1288 background="images/top.gif"  height=10><STRONG><a href="logout.php" ><FONT face="Verdana, Arial, Helvetica, sans-serif" 
color=#ffffff size=2><center>Log Out</center> </FONT></STRONG></TD>
 </TR>
<tr>
  </TBODY>
</TABLE>
</body>
</html>
<?php
}
else
{
echo "Please click here to login " . "<a href=index.php>Login Page</a>";
}
?>