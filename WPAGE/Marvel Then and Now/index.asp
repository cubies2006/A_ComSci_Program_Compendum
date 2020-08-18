<%
'Dimension variables
Dim fsoObject 			'File System Object
Dim tsObject 			'Text Stream Object
Dim filObject			'File Object
Dim lngVisitorNumber 		'Holds the visitor number
Dim intWriteDigitLoopCount 	'Loop counter to display the graphical hit count
	
'Create a File System Object variable
Set fsoObject = Server.CreateObject("Scripting.FileSystemObject")

'Initialise a File Object with the path and name of text file to open
Set filObject = fsoObject.GetFile(Server.MapPath("hit_count.txt"))
	
'Open the visitor counter text file
Set tsObject = filObject.OpenAsTextStream
	
'Read in the visitor number from the visitor counter file
lngVisitorNumber = CLng(tsObject.ReadAll)
	
'Increment the visitor counter number by 1
lngVisitorNumber = lngVisitorNumber + 1
			
'Create a new visitor counter text file over writing the previous one
Set tsObject = fsoObject.CreateTextFile(Server.MapPath("hit_count.txt"))
	
'Write the new visitor number to the text file
tsObject.Write CStr(lngVisitorNumber)
	
'Reset server objects
Set fsoObject = Nothing
Set tsObject = Nothing
Set filObject = Nothing
%>
<%
 on error resume next
 ' u_input=request.form("u_input") 
%>
<%  set fso = createobject("scripting.filesystemobject")
%>
<%
    g_selected="vote_counta.txt"
    set act = fso.opentextfile(server.mappath(g_selected))
    counter_a = clng(act.readline)
%>
<%
    g_selected="vote_countb.txt"
    set act = fso.opentextfile(server.mappath(g_selected))
    counter_b = clng(act.readline)
%>
<%
    g_selected="vote_countc.txt"
    set act = fso.opentextfile(server.mappath(g_selected))
    counter_c = clng(act.readline)
%>
<%
    g_selected="vote_countd.txt"
    set act = fso.opentextfile(server.mappath(g_selected))
    counter_d = clng(act.readline)
%>
<% total=counter_a+counter_b+counter_c+counter_d
Set fso = Nothing
%>

  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>World of Marvels</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<LINK href="/img/sw.ico" rel="shortcut icon">
<META content="" name=description>
<META content="World of Marvels" name=keywords>
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY vLink=#858ca1 aLink=#858ca1 link=#858ca1 bgColor=#434d66 leftMargin=0 
topMargin=20 marginwidth="0" marginheight="20">
<TABLE cellSpacing=0 cellPadding=0 width=808 align=center border=0 height="458">
  <TBODY>
  <TR><!-- Main Table - Column 1 -->
    <TD vAlign=top align=center height="154">
      <table border="0" width="84%" cellspacing="0" cellpadding="0" height="134">
        <tr>
          <td width="100%" colspan="3" height="10">
            <p align="center">            
            <p align="center"><img src="marvel%20then%20and%20now.gif" width="453" height="310">
            <p align="center"><img border="0" src="img/top(1).gif"></td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="26">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><a href="default.htm"><img border="0" src="main%20link%20home.gif" width="150" height="24"><br>
            </a><img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="26">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20history.gif" width="150" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20comics.gif" width="150" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20villains.gif" width="152" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20video%20games.gif" width="150" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20movies.gif" width="150" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20related%20links.gif" width="152" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20sign%20in.gif" width="150" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20about%20marvel.gif" width="152" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20creators.gif" width="150" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20heroes.gif" width="150" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20tv%20series.gif" width="151" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20action%20figures.gif" width="151" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20photo%20gallery.gif" width="150" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="21">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20web%20weavers.gif" width="150" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="21">&nbsp;</td>
        </tr>
        <tr>
          <td width="4%" background="img/left_stretch(1).gif" height="35">&nbsp;</td>
          <td width="92%" height="35" align="center"><font color="#FFFFFF"><img border="0" src="main%20link%20guestbook.gif" width="148" height="24"><br>
            <img border="0" src="img/cat_sep.gif"></font></td>
          <td width="4%" background="img/right_stretch(1).gif" height="35">&nbsp;</td>
        </tr>
        <tr>
          <td width="100%" height="21" colspan="3"><font color="#FFFFFF"><img border="0" src="img/bottom(1).gif" width="235" height="20"></font></td>
        </tr>
      </table>
      <font color="#FFFFFF"><a href="index.asp">&nbsp;
      </a>
      </font>
     <font color="#FFFFFF">
 <%
'HTML output to display the visitor number
Response.Write("<font size=2>Visitor Number</font><br>")

'Display the hit count as text
'Response.Write(lngVisitorNumber)

'Loop to display graphical digits
For intWriteDigitLoopCount = 1 to Len(lngVisitorNumber)
	
	'Display the graphical hit count
	Response.Write("<img src=""counter_images/") 
	Response.Write(Mid(lngVisitorNumber, intWriteDigitLoopCount, 1) & ".gif""") 
	Response.Write("alt=""" & Mid(lngVisitorNumber, intWriteDigitLoopCount, 1) & """>")
Next
%>
     </font>
    </TD>
    <TD vAlign=top align=left width=617 rowspan="2" height="302">
      <TABLE cellSpacing=0 cellPadding=0 width=633 
      background="img/clear.gif" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top align=right 
          background="img/search_area.jpg" colSpan=2 width="631">&nbsp;
            </TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=617 
      background="img/clear.gif" border=0 height="13">
        <TBODY>
        <TR>
          <TD vAlign=top align=left bgColor=#00000 height="13"><IMG height=23 
            src="img/clear.gif" width=10></TD>
          <TD vAlign=center align=left width="50%" bgColor=#00000 height="13">
            </TD>
          <TD vAlign=center align=right width="50%" bgColor=#00000 height="13">
            </TD>
          <TD vAlign=top align=left width=17 height="13">&nbsp;</TD></TR></TBODY></TABLE>
          <img border="0" src="marvelwelcome.jpg" width="614" height="37">
      <TABLE cellSpacing=0 cellPadding=0 width="100%" 
      background="img/clear.gif" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top align=left width=10 ><IMG height=353 
            src="img/black.gif" width=10><IMG height=4 
            src="img/shadow.gif" width=10></TD>
          <TD vAlign=top align=left width=4><IMG height=437 
            src="img/shadow.gif" width=4></TD>
          <TD vAlign=top align=left width=1><IMG height=240 
            src="img/clear.gif" width=1></TD>
          <TD vAlign=top align=left width="100%">
            <TABLE cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD vAlign=top align=left><A 
                  href="introduction%20to%20captain%20america.html"><IMG 
                  alt="[ Episode I: The Phantom Menace ]" 
                  src="CaptainAmerica.jpg" border=0 width="201" height="188"></A></TD>
                <TD vAlign=top align=left><A 
                  href="introduction%20to%20captain%20marvel.html"><IMG 
                  alt="[ Episode II: Attack of the Clones ]" 
                  src="captainmarvel.jpg" border=0 width="201" height="188"></A></TD>
                <TD vAlign=top align=left><A 
                  href="introduction%20to%20daredevil.html"><IMG 
                  alt="[ Episode III: In Production ]" 
                  src="daredevil.jpg" border=0 width="201" height="188"></A></TD>
              </TR>
              <TR>
                <TD vAlign=top align=left><A 
                  href="introduction%20to%20fantastic%20four.html"><IMG 
                  alt="[ Episode IV: A New Hope ]" 
                  src="fantastic4.jpg" border=0 width="201" height="188"></A></TD>
                <TD vAlign=top align=left><A 
                  href="introduction%20to%20the%20hulk.html"><IMG 
                  alt="[ Episode V: Empire Strikes Back ]" 
                  src="hulk.jpg" border=0 width="201" height="188"></A></TD>
                <TD vAlign=top align=left><A 
                  href="information%20about%20iron%20man.html"><IMG 
                  alt="[ Episode VI: Return of the Jedi  ]" 
                  src="ironman.jpg" 
              border=0 width="201" height="188"></A></TD>
              </TR>
              <TR>
                <TD vAlign=top align=left><A 
                  href="http://www.starwars.com/episode-iv/"><IMG 
                  alt="[ Episode IV: A New Hope ]" 
                  src="punisher.jpg" border=0 width="201" height="188"></A></TD>
                <TD vAlign=top align=left><A 
                  href="http://www.starwars.com/episode-iv/"><IMG 
                  alt="[ Episode IV: A New Hope ]" 
                  src="silversurfer.jpg" border=0 width="201" height="188"></A></TD>
                <TD vAlign=top align=left><A 
                  href="introduction%20to%20spiderman.html"><IMG 
                  alt="[ Episode IV: A New Hope ]" 
                  src="spiderman.jpg" border=0 width="201" height="188"></A></TD>
              </TR>
              <TR>
                <TD vAlign=top align=left><A 
                  href="introduction%20to%20the%20avengers.html"><IMG 
                  alt="[ Episode IV: A New Hope ]" 
                  src="theavenger.jpg" border=0 width="201" height="188"></A></TD>
                <TD vAlign=top align=left><A 
                  href="introduction%20to%20thor.html"><IMG 
                  alt="[ Episode IV: A New Hope ]" 
                  src="thor.jpg" border=0 width="201" height="188"></A></TD>
                <TD vAlign=top align=left><A 
                  href="http://www.starwars.com/episode-iv/"><IMG 
                  alt="[ Episode IV: A New Hope ]" 
                  src="xmen.jpg" border=0 width="201" height="188"></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD vAlign=top align=center width=222 height="148">
    <strong><font color="#FFFF00" face="Verdana, Arial, Helvetica, sans-serif">
    POLL SURVEY<br>
    Who is your most favorite Marvel super hero in our time?     </font> 
    </strong>
    <form method="post" action="vote.asp" name ="form1">
      <p align="center"><strong><font face="Verdana, Arial, Helvetica, sans-serif">
        <input type="radio" value="A" name="u_input">
        <font color="#FFFF00">Spiderman</font></font><font color="#FFFF00" face="Verdana, Arial, Helvetica, sans-serif"><br>
        <input type="radio" value="B" name="u_input" >
        The Hulk&nbsp;&nbsp;<br>
        <input type="radio" value="C" name="u_input">
        X-MEN&nbsp;&nbsp;<br>
        <input type="radio" value="D" name="u_input">
    Daredevil</font></strong><br>
    <input type="submit" value="Submit" ></p></form>
    </TD>
  </TR>
  <TR>
  <TD height="135">
  <p align="center">
    <strong><font color="#00FFFF"><font face="Verdana, Arial, Helvetica, sans-serif">SURVEY RESULTS
    <br>
    </font>
    <font face="Verdana, Arial, Helvetica, sans-serif"><br>
Spiderman <img src="pink.jpg"><%= formatnumber((counter_a/total)*100,1) %>%<br>
The Hulk &nbsp;&nbsp;&nbsp;&nbsp;<img src="pink.jpg" height="12" width="<%= (counter_b/total)*100 %>"><%= formatnumber((counter_b/total)*100,1) %>%<br>
X-MEN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="pink.jpg" height="12" width="<%= (counter_c/total)*100 %>"><%= formatnumber((counter_c/total)*100,1) %>%<br>
Daredevil&nbsp;&nbsp;&nbsp;<img src="pink.jpg" height="12" width="<%= (counter_d/total)*100 %>"><%= formatnumber((counter_d/total)*100,1) %>%<br>
Total Votes: </font></font> <font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif"> <%= total %> </font> 
    </strong></p>
  </TD>
  </TR>
  <TR>
    <TD vAlign=top align=center width=222 height="21">
    </TD>
    <TD vAlign=top align=left width=617 height="21">
    </TD></TR></TBODY></TABLE>
</BODY></HTML>
