<%@language=vbscript%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">




  <script language=javascript>
 function check()
{
 if(f.name.value=="")
    {
     alert("Enter your name");
       return false;
    }
  if(f.password.value=="")
    {
       alert("Enter your password");
       return false;
   }
   ml = f.name.value;


if(ml.length<8)
{
f.name.focus();
f.name.select();
alert("Email length cannot be less than 8 characters");
return false;  
}

if(ml.indexOf("@")==-1)
{
f.name.focus();
f.name.select();
alert("The Email Address must contain '@' sign");
return false;  
}

pos1 = ml.indexOf("@")
if(pos1<1)
{
f.name.focus();
f.name.select();
alert("Email address cannot start with '@' sign");
return false;  
}  

if(ml.indexOf(".")==-1)
{
f.name.focus();
f.name.select();
alert("The Email Address must contain '.' sign");
return false;  
}

pos = ml.indexOf(" ")
if(pos!=-1)
{
f.name.focus();
f.name.select();
alert("The Email Address cannot contain spaces");
return false;  
}

pos2 = (pos1+1)
server = ml.substring(pos2);

if(server.indexOf("@")!=-1)
{
f.name.focus();
f.name.select();
alert("A valid Email must contain only one '@' sign");
return false;  
} 
if(server.indexOf(".")==0)
{
f.name.focus();
f.name.select();
alert("There should some text between '@' and '.' sign");
return false;  
} 

server_pos = server.lastIndexOf(".")
reqtype = server.substring(server_pos+1)

if(reqtype=="")
{  
f.name.focus();
f.name.select();
alert("Email Id should end with character(like .com,.net,.org)");
return false;  
}

return true;
}


        </script>
       
       
       

<html>
<head>
<title>Goal Technologies</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="keywords" content="Keywords here">
<meta name="description" content="Description here">
<META NAME="robots" CONTENT="index, follow">
<STYLE>A:link {
	TEXT-DECORATION: none
}
A:visited {
	TEXT-DECORATION: none
}
</STYLE>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<%
if request.form("submail")<>"" then
set conn = server.CreateObject("adodb.connection")

 
 conn.Open ("DSN=10")



T1=Replace(Request.Form("name"),"'","''")
T2=Replace(Request.Form("password"),"'","''")
response.write T2
Set RS=server.CreateObject("adodb.recordset")
RS.Open "select * From emailtable where email='" & T1 &"'  and password= '"& T2 & "'",conn
if not rs.eof then
Session("user")=T1
Session("UPWD")=T2
A1=Session("user")
Response.write"<font color=red><h2 align=center>Welcome " & A1 &" </h1></font>"
 response.redirect "mailinbox.asp"

 else 
%> </h1>
<h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#0066FF"> 
SORRY !!! WRONG ENTRY TRY AGAIN</font></h1>

<p> &nbsp;</p>
<h1 align="center">
<% end if

end if
%>        

</h1>
<TABLE WIDTH=780 BORDER=0 CELLPADDING=0 CELLSPACING=0 align="center" height=174 bgcolor="#ffffff">
	<TR><td width="4" rowspan=100 bgcolor=#ffffff height="174"></td>
	  <TD HEIGHT=174 COLSPAN=14 width="780">
			 <OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
 codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"
 WIDTH="895" HEIGHT="164" id="Untitled-2" ALIGN="center">
 <PARAM NAME=movie VALUE="gola it scroller.swf"> <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=#FFFFFF> 
               <EMBED src="gola it scroller.swf" quality=high bgcolor=#FFFFFF  WIDTH="780" HEIGHT="218" NAME="Untitled-2" ALIGN="center"
 TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer"></EMBED></OBJECT></TD>
			
</TD>
	</TR>
</TABLE>
<TABLE WIDTH=775 height="100%" BORDER=0 align="center" CELLPADDING=0 CELLSPACING=0>
  <TR>
    <TD height="51" colspan="2" valign="middle" background="images/topbg.gif">
	
    <p align="right"><b><a href="index.asp"><font color="#ffffff" size="2" face="Arial">Home</font>	</a><font color="#FFFFFF" size="2" face="Arial"> |
    </font>	<a href="vision.htm"><font color="#ffffff" size="2" face="Arial"> Vision</font>	</a><font color="#FFFFFF" size="2" face="Arial"> |
    </font>	<a href="about us.html"><font color="#ffffff" size="2" face="Arial"> About us</font>	</a><font color="#FFFFFF" size="2" face="Arial"> |
    </font>	<a href="contact us.html"><font color="#ffffff" size="2" face="Arial">Contact us</font>	</a><font color="#FFFFFF" size="2" face="Arial"> |
</font>	<a href="feedback.asp"><font face="Arial" size="2" color="#FFFFFF">
    Feedback</font>	</a><font color="#FFFFFF" size="2" face="Arial"> |
</font>	<a href="mail.asp"><font face="Arial" size="2" color="#FFFFFF">
    mail</font>	</a><font color="#FFFFFF" size="2" face="Arial"> |

</font>	<a href="Certificate.asp"><font color="#ffffff" size="2" face="Arial">Certification</font>	</a><font color="#FFFFFF" size="2" face="Arial"> |
 </font>	<a href="studentspage.asp"><font color="#ffffff" size="2" face="Arial">Members</font>	</a>

    
    
    </b>

    
    
    </TD>
  </TR>
  <TR>
    <TD valign="top">
    <table width="747"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="747"><TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 width="750">
          <TR>
            <TD background="images/logotop.gif" width="309">
              <p align="center"><font color="#FFFFFF" face="Arial"><font size="5"><b>Goal Technologies</b></font><br>
              <b><font size="3"></font></b></font></TD>
            <TD width="221"> 
            <IMG SRC="images/toppixeltreatment.jpg" ALT="" width="221" height="130"></TD>
            <TD width="220"> 
            <IMG SRC="images/mainpic.jpg" ALT="" width="220" height="130"></TD>
          </TR>
        </TABLE></td>
      </tr>
      <tr>
        <td style="padding:44,34,0,26" class="bodycopy" valign="top" width="687"><h1><font face="Verdana" size="3">
      
        </h1>
        
        <form name=f OnSubmit="return check()" method=post  action=mail.asp>
  <table border=1 align=center cellpadding=10 width="394">
  <tr><th width="145">Email Id :</th><td width="197">
    <Input type=text name=name size="30"></td></tr>
  <tr><th width="145">Password :</th><td width="197">
    <Input type=password name=password size="30"></td></tr>
  <tr><th colspan=2 width="315"><input type=submit name=submail value=Done>
   <input type=reset value=Clear></td></tr>
  </table>
 </form>

       <p align="center"><b><font face="Arial" size="4" color="#FF0000">Sign
        Up!</font></b><font face="Verdana" size="2"> <font color="#000080">New
        User Register - </font><a href="registermail.asp" title="Click Here" target="_top"> <font color="#0000FF"> Click Here</a></font></font></td>
   
        
        
        
        
        
        
        
        
        
        
        
        
        
        </td>
      </tr>
    </table>    </TD>
    <TD valign="top" background="images/pixi_skyblue.gif">
	
	  <TABLE width="100%" BORDER=0 CELLPADDING=0 CELLSPACING=0 id="sidebar">
      <TR>
        <TD height="24" background="images/sidebar_headers.gif" class="style1" style="padding-left:8 "> 
          <p align="center"><b><font size="2" face="Verdana" color="#000080">Menu</font></b></p>
 </TD>
      </TR>
      <TR>
        <TD background="images/sidebg.gif">
          <div align="center">
            <center>
            <table border="0" cellpadding="10" cellspacing="0" width="100%">
              <tr>
                <td width="100%">
                  <p align="center"><b><font size="2" face="Verdana" color="#FFFFFF">
                  &nbsp;<a href="students.html"><font color="#FFFFFF">Training</font></a><br><br>
                  &nbsp;<a href="advantage.html"><font color="#FFFFFF">Advantage</font></a><br><br>
                  &nbsp;<a href="syllabyus.htm"><font color="#FFFFFF">Syllabus</font></a><br><br>
                  &nbsp;<a href="CENTRE.HTML"><font color="#FFFFFF">Training 
                  Center</font></a>s<br><br>
                  &nbsp;<a href="placement/index.asp"><font color="#FFFFFF">Placement 
                  Centre</font></a><br><br>
                  &nbsp;<a href="placement.html"><font color="#FFFFFF">Students</font></a><br><br>
                &nbsp;<a href="GOALNEWS\login.asp"><font color="#FFFFFF">Goal's Blog</font></a><br>
                
                <br>
                
                 &nbsp;<a href="http://www.goalitsolutions.com/online test/default.htm"><font color="#FFFFFF">online exam</font></a><br>

                </p>
                
                </td>
              </tr>
            </table>
            </center>
          </div>
        </TD>
      </TR>
      <tr>
        <TD height="24" background="images/sidebar_headers.gif">
          <p align="center"><span style="padding-left: 8" class="style1"><b><font size="2" face="Verdana" color="#000080">Free
          Stuff</font></b></span></p>
        </TD>
      </tr>
      <tr>
        <TD>
          <div align="center">
            <center>
           <table border="0" cellpadding="10" cellspacing="0" width="100%">
              <tr>
                <td width="100%">
                  <p align="center"><font face="Arial" size="2">&nbsp;</font><font size="2" face="Verdana"><b><a class="links" href="best_tutorial\start.htm"><font color="#FFFFFF">Network Tutorial</font></a><br>
                  &nbsp;<a class="links" href="memory/Computer Memory.htm"><font color="#FFFFFF">Memory 
                  Tutorial</font></a><br>
                  &nbsp;<a href="dummy.html"><font color="#FFFFFF">Microcontroller 
                  projects</font></a><br>
                  &nbsp;<a href="dummy.html"><font color="#FFFFFF">Robotics</font></a><br>
                  &nbsp;<a href="dummy.html"><font color="#FFFFFF">Software 
                  projects</font></a><br>
                  &nbsp;<a href="dummy.html"><font color="#FFFFFF">Software</font></a><font color="#FFFFFF"> 
                  Testing</font><br>
                  &nbsp;<a href="dummy.html"><font color="#FFFFFF">Data 
                  Recovery</font></a><br>
                  &nbsp;<a href="dummy.html"><font color="#FFFFFF">DSP</font></a><br>
                  &nbsp;<a href="http://www.goalitsolutions.com/exam/"><font color="#FFFFFF">Online Exam</font></a></b></font><br>
                 

                </td>
              </tr>
            </table>
            </center>
          </div>
 </TD>
      </tr>
      <TR>
        <TD height="24" background="images/sidebar_headers.gif">
          <p align="center"><span class="style1"><b>
          <font face="Arial" size="2" color="#000080">Franchisees</font></b></span></p>
        </TD>
      </TR>
      <TR>
        <TD>
          <div align="center">
            <center>
            <table border="0" cellpadding="10" cellspacing="0" width="100%">
              <tr>
                <td width="100%">
                  <p align="center"><b>
                  <font face="Verdana" size="2" color="#FFFFFF">
                  &nbsp;<a href="#"><font color="#FFFFFF">Goal Mysore</font></a><br>
                  &nbsp;<a href="#"><font color="#FFFFFF">Goal Kasargod</font></a><br>
                  &nbsp;<a href="#"><font color="#FFFFFF">Goal Technologies</font></a><br>
                  &nbsp;</font></b></p>
                </td>
              </tr>
            </table>
            </center>
          </div>
 </TD>
      </TR>
    </TABLE>
	
    </TD>
  </TR>
  <TR>
    <TD height="1"> <IMG SRC="images/jd_m003_21.gif" WIDTH=621 HEIGHT=1 ALT=""></TD>
    <TD height="1"> <IMG SRC="images/jd_m003_22.gif" WIDTH=154 HEIGHT=1 ALT=""></TD>
  </TR>
  <TR>
    <TD height="20" background="images/pixi_darkblue.gif" style="padding:0,0,0,26" colspan="2">
      <p align="center"><font color="#FFFFFF" size="1" face="Verdana"><b><span class="baseline"> Copyright
      &copy;
      2007 </span>goalitsolutions.com</b></font></p>
 </TD>
  </TR>
</TABLE>
</body>
</html>