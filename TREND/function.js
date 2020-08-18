/*
Author  	: Cornelio Gallardo
Email   	: info@corgall.com
Created 	: Octorber 10 2000
version 	: 3.29
Compatible 	: IE, Netscape, Opera, Firefox
O.S.		: Windows, MAC, Linux

*/

//popwin
function p(w,h,urlL)
	{
	l = (screen.width - w)/2
	t = (screen.height - h)/2
	preview1 = window.open(urlL,'preview1','scrollbars=1,width='+w+',height='+h+',top='+t+',left='+l+'');
	preview1.focus();
	}
	


// check empty field	 
function notEmpty(obj,msg)
{   
   var mystr =""
   len = obj.value.length
   if (len > 0)
   {
	    for (i=0;i<len; i++) 
		{
			if(obj.value.substring(i,i+1)!="")
			{
				mystr = mystr + obj.value.substring(i,i+1)
			}
		}	
	}
	if(mystr=="")
	{alert(msg);if(obj.name !='rte1'){obj.focus();}return false;}

 return true;	
}


// check empty radio	 
function checkRadio(obj,msg)
{
var radio_choice = false;
	for (counter = 0;  counter <obj.length; counter++)
		{
		    if (obj[counter].checked)
		     radio_choice = true; 
		}
  if (!radio_choice)
   {alert(msg);  obj[0].focus();return false;}
 return (true);
}

//check empty selectbox
function checkSelect(obj,msg)
{
	if(obj.selectedIndex=="0")
	{	alert(msg);	obj.focus();return false;}
 return true;	
}
//check empty selectbox multi
function checkMultiSelect(obj,msg)
{
	if(obj.selectedIndex < 0)
	{	alert(msg);	obj.focus();return false;}
 return true;	
}
function CheckExt(obj,msg)
{
if(obj.value!="")
	{
 	 msg ="Please enter a valid extension number."
	 return(checknumberformat(obj,msg))
	}
 return true;
}

// check format of number IN TELEPHONE, FAX AND OTHER
function checknumberformat(obj,msg)
{
  var strTmp = obj.value;
  var ValidChars ="0123456789()-+.";

  //Check Validity
  for (i=0; i<=strTmp.length-1; i++) 
    if (ValidChars.indexOf(strTmp.charAt(i)) == -1) 
    {
	  alert(msg)
      obj.focus()
      return false;
	}
  return true;
}	

// check NUMBER only
function isNumber(obj,msg)
{
  var strTmp = obj.value;
  var ValidChars ="0123456789";

  //Check Validity
  for (i=0; i<=strTmp.length-1; i++) 
    if (ValidChars.indexOf(strTmp.charAt(i)) == -1) 
    {
	  alert(msg)
      obj.focus()
      return false;
	}
  return true;
}	
// check NUMBER only
function isZero(obj,msg)
{
	 if(obj.value ==0)
	 {
		alert(msg) 
		obj.focus();
	 	return false;
	 }
  return true;
}	

 // check field length
 function chkLen(obj,msg,len)
 {
    
	if(obj.value.length != parseInt(len))
	{
		alert(msg);
		obj.focus();
		return false;
	}
	return true;
 }
 
// check email validation
function CheckEmail(obj,msg)
{
	var Mymail=obj.value;
	if (Mymail !="")
	{
	var filter=/^.+@.+\..{2,3}$/;
	var listchar =" ~!#$%^&*()+=|\\?<>:;'{}[]`/,";
	var foundchar, status;
    // check email if valid...
	for (i=0; i<listchar.length; i++) 
	{	
		xchar = listchar.substr(i,1);
		foundchar = Mymail.indexOf(xchar);
		
		if (foundchar>=0)// seach invalid character. 
		{	
			status ="Your email address contains an invalid character"+'"'+xchar+'".'; // popup message 
			alert(status);
			obj.focus();
			return false;
		}
	}
	if (!filter.test(Mymail))
	{
		alert(msg); // popup message if invalid
		obj.focus();
		return false;
	}
	return true;
	}
}

// Declaring valid date character, minimum year and maximum year
var dtCh="/";
var minYear=1900;
var maxYear=2100;

function isInteger(s){
	var i;
    for (i = 0; i < s.length; i++){   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c <"0") || (c >"9"))) return false;
    }
    // All characters are numbers.
    return true;
}

function stripCharsInBag(s, bag){
	var i;
    var returnString ="";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++){   
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function daysInFebruary (year){
	// February has 29 days in any year evenly divisible by four,
    // EXCEPT for centurial years which are not also divisible by 400.
    return (((year % 4 == 0) && ( (!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28 );
}
function DaysArray(n) {
	for (var i = 1; i <= n; i++) {
		this[i] = 31
		if (i==4 || i==6 || i==9 || i==11) {this[i] = 30}
		if (i==2) {this[i] = 29}
   } 
   return this
}

function isDate(dtStr){
	var daysInMonth = DaysArray(12)
	var pos1=dtStr.indexOf(dtCh)
	var pos2=dtStr.indexOf(dtCh,pos1+1)
	var strMonth=dtStr.substring(0,pos1)
	var strDay=dtStr.substring(pos1+1,pos2)
	var strYear=dtStr.substring(pos2+1)
	strYr=strYear
	if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1)
	if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1)
	for (var i = 1; i <= 3; i++) {
		if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1)
	}
	month=parseInt(strMonth)
	day=parseInt(strDay)
	year=parseInt(strYr)
	if (pos1==-1 || pos2==-1){
		//alert("The date format should be : mm/dd/yyyy")
		return false
	}
	if (strMonth.length<1 || month<1 || month>12){
		//alert("Please enter a valid month")
		return false
	}
	if (strDay.length<1 || day<1 || day>31 || (month==2 && day>daysInFebruary(year)) || day > daysInMonth[month]){
		//alert("Please enter a valid day")
		return false
	}
	if (strYear.length != 4 || year==0 || year<minYear || year>maxYear){
		//alert("Please enter a valid 4 digit year between"+minYear+" and"+maxYear)
		return false
	}
	if (dtStr.indexOf(dtCh,pos2+1)!=-1 || isInteger(stripCharsInBag(dtStr, dtCh))==false){
		//alert("Please enter a valid date")
		return false
	}
return true
}

function validDate(dt,msg){
	if (isDate(dt.value)==false){
		dt.focus()
		alert(msg)
		return false
	}
    return true
 }


function datediff(d1,d2,msg){
	dateFrom = Date.parse(d1);
	dateTo = Date.parse(d2);
	if (dateFrom > dateTo){
		alert(msg);
		return false;
	}	
  return true;
}

function equalTo(obj1,obj2,msg){
	if (obj1.value != obj2.value){
		alert(msg);
		return false;
	}	
  return true;
}

