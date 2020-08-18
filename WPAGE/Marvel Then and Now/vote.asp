<%
'Dimension variables
Dim fsoObject 			'File System Object
Dim tsObject 			'Text Stream Object
Dim filObject			'File Object
Dim lngVisitorNumber 		'Holds the visitor number
Dim intWriteDigitLoopCount 	'Loop counter to display the graphical hit count

on error resume next
u_input=request.form("u_input") 
%>

<%
'Create a File System Object variable
Set fsoObject = Server.CreateObject("Scripting.FileSystemObject")
g_selected="vote_count" & u_input & ".txt"
'Initialise a File Object with the path and name of text file to open
Set filObject = fsoObject.GetFile(Server.MapPath(g_selected))
	
'Open the visitor counter text file
Set tsObject = filObject.OpenAsTextStream
	
'Read in the visitor number from the visitor counter file
lngVisitorNumber = CLng(tsObject.ReadAll)
	
'Increment the visitor counter number by 1
lngVisitorNumber = lngVisitorNumber + 1
			
'Create a new visitor counter text file over writing the previous one
Set tsObject = fsoObject.CreateTextFile(Server.MapPath("g_selected"))
	
'Write the new visitor number to the text file
tsObject.Write CStr(lngVisitorNumber)
	
'Reset server objects
Set fsoObject = Nothing
Set tsObject = Nothing
Set filObject = Nothing
%>

<html>
<%= u_input %><br>
<%= g_selected%>
<a href="index.asp"> Click Here to go Back</a>
</html>