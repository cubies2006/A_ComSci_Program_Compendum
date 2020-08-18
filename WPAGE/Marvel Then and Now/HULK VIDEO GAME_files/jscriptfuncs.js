//-------------------------------------------------
// This set of function are general includes for validation
// They are designed in pairs the validation and the event function
// the event function will call the validation with the event src
//-------------------------------------------------

function display_name(item) {
//	Only works in IE
	var strDisplay = item.getAttribute("DisplayName");
	var strDisplay = item.DisplayName;
	if (strDisplay==null || strDisplay=="")
		strDisplay="Field";
	return strDisplay;
}

function default_value(item) {
	var strDefault = item.defaultValue;
	if (strDefault==null || strDefault=="")
		strDefault="";
	return strDefault;
}

function trim_string() {
	var ichar, icount;
	var strValue = this;
	ichar = strValue.length - 1;
	icount = -1;
	while (strValue.charAt(ichar)==' ' && ichar > icount)
		--ichar;
	if (ichar!=(strValue.length-1))
		strValue = strValue.slice(0,ichar+1);
	ichar = 0;
	icount = strValue.length - 1;
	while (strValue.charAt(ichar)==' ' && ichar < icount)
		++ichar;
	if (ichar!=0)
		strValue = strValue.slice(ichar,strValue.length);
	return strValue;
}

function stripDate(strIDate) {
	var iEnd = strIDate.length
	var iTest
	var strDatePart = ""
	var strChar
	var strMonth
	var strDay
	var strYear	
	var iPart = 1
	for (var i = 0; i < iEnd; i++) {
		//iTest += i
		strChar = strIDate.charAt(i);
//		document.write(i + "<BR>");
//		document.write("The Character at index " + i + " is: " + strIDate.charAt(i) + "<BR>")
		if (strChar == "/" || strChar == "-" || strChar == ".") {
//			document.write("Date Part:" + strDatePart + "<BR>");
			
			switch (iPart) {
				case 1 :
					strMonth = strDatePart;
					break;
				case 2 :
					strDay = strDatePart;
					break;
				case 3 :
					strYear = strDatePart;
					break;			
			}
		
			iPart += 1			
			strDatePart = "";
		} else {
			strDatePart += strIDate.charAt(i)
			if (i == iEnd - 1) {
//				document.write("Date Part:" + strDatePart + "<BR>");
				
				switch (iPart) {
					case 1 :
						strMonth = strDatePart;
						break;
					case 2 :
						strDay = strDatePart;
						break;
					case 3 :
						strYear = strDatePart;
						break;			
				}				
				strDatePart = "";			
			}
		}

	}
	// Actual Date parts that were extracted
	// from the date string passed	
//	document.write("Month: " + strMonth + "<BR>");
//	document.write("Day: " + strDay + "<BR>");
//	document.write("Year: " + strYear + "<BR>");
	
//	if(!(1 <= strMonth && strMonth <= 12)){
//		return false;
//	} else {
//		if(!(1 <= strDay && strDay <= 31)){
//			return false;
//		} else {
//			if(!(strYear.length == 4)){
//				return false;
//			} else {
//				return true;
//			}		
//		}		
//	}

	if(!(strYear.length == 4)){
		return false;
	} else {
		return true;
	}		
	
}

function es_non_blank() {
	var item = event.srcElement;
	event.returnValue = vs_non_blank(item);
}
function vs_non_blank(item) {
	var strErrorMsg = display_name(item) + " must have a non-blank value";
	item.value=item.value.Trim();
	if (item.value.length==0) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}
	return true;
}


function es_valid_number() {
	var item = event.srcElement;
	event.returnValue = vs_valid_number(item);
}
function vs_valid_number(item) {
	var strErrorMsg = display_name(item) + " must be a valid numeric";
	var strDefault = default_value(item);
	if (strDefault.length==0) {
		//Enter default for field if there is nothing there	
		strDefault="0";
	}
	item.value=item.value.Trim();
	if (item.value.length==0)
		item.value=strDefault;
	var num = ".0123456789";
	for (var intLoop = 0; intLoop < item.value.length; intLoop++) {
		if (num.indexOf(item.value.charAt(intLoop)) == -1) {
			item.focus();
			alert(strErrorMsg);
			return false;
		}
	}
	if (item.value.indexOf(".")!=item.value.lastIndexOf(".")) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}
	return true;
}


function es_valid_hours() {
	var item = event.srcElement;
	event.returnValue = vs_valid_hours(item);
}
function vs_valid_hours(item) {
	var strErrorMsg = display_name(item);
	if (!vs_valid_number(item))
		return false;
	var itemValue = new Number(item.value);
	if ((itemValue < 0 || itemValue > 80)) {
		item.focus();
		alert(strErrorMsg + " must have a value from 0 to 80 hours");
		return false;
	}
	itemValue *= 4;
	if ((itemValue)!=Math.ceil(itemValue)) {
		item.focus();
		alert(strErrorMsg + " must be a valid quartely increment");
		return false;
	}
	return true;
}


function es_valid_date() {
	var item = event.srcElement;
	event.returnValue = vs_valid_date(item);
}
function vs_valid_date(item) {
	var strErrorMsg = display_name(item);
	if (stripDate(item.value)) {
		if (isNaN(Date.parse(item.value))) {
			item.focus();
			alert(strErrorMsg + " must be a valid Date in the format,'MM/DD/YYYY'");
			return false;
		}
	} else {
		item.focus();
		alert(strErrorMsg + " must be a valid Date in the format,'MM/DD/YYYY'");
		return false;	
	}
	var dtItem = new Date(Date.parse(item.value));
	item.value = dtItem.toSimpleForm();
	return true;
}


function es_item_selected() {
	var item = event.srcElement;
	event.returnValue = vs_item_selected(item);
}
function vs_item_selected(item) {
	var strErrorMsg = display_name(item) + " must be a valid selection";
	if (item.selectedIndex==0) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}
	return true;
}

function es_valid_zip() {
	var item = event.srcElement;
	event.returnValue = vs_valid_zip(item);
}
function vs_valid_zip(item) {
	var strErrorMsg = display_name(item) + " must be of the form 99999-9999";
	item.value=item.value.Trim();
	if (!(/^d{5}$/.test(item.value) || /^d{5}-d{4}$/.test(item.value))) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}
	return true;
}

function es_valid_ssnbr() {
	var item = event.srcElement;
	event.returnValue = vs_valid_ssnbr(item);
}
function vs_valid_ssnbr(item) {
	var strErrorMsg = display_name(item) + " must be of the form 999-99-9999";
	item.value=item.value.Trim();
	if (!(/^d{3}-d{2}-d{4}$/.test(item.value))) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}
	return true;
}

function es_valid_email() {
	var item = event.srcElement;
	event.returnValue = vs_valid_email(item);
}
function vs_valid_email(item) {
	var strErrorMsg = display_name(item) + " is not a valid Email";
	item.value=item.value.Trim();
	var checkString = item.value;
    var pos  = 0;
    var at = false;
    var dot = false;
	var posAt = 0;
	var posDot = 0;
	var countAt = 0;
	var countDot = 0;			
    // DO SOME PRELIMINARY CHECKS ON THE DATA
	
	if (checkString.length < 5) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}			
  
    // PARSE REMAINDER OF STRING
    for (var i = 0; i < checkString.length; i++) {
		 pos = i + 1
         ch = checkString.substring(i, i + 1)
		 if ((ch >= "A" && ch <= "Z") || (ch >= "a" && ch <= "z")
			|| (ch == "@") || (ch == ".") || (ch == "_")
			|| (ch == "!") || (ch == "+") || (ch == "")
			|| (ch == "-") || (ch >= "0" && ch <= "9"))  {
			
				ch = checkString.substring(i, i + 1)	
				
				if (ch == "@") {
					at=true;
					posAt = i
					countAt = countAt + 1;
					if ( pos < 2) {
						item.focus();
						alert(strErrorMsg);
						return false;
					}	
				}
				
				if (countAt > 1) {
					item.focus();
					alert(strErrorMsg);
					return false;
				}	 
				
				if (ch == ".") {
					dot=true;
					posDot = i
					countDot = countDot + 1;
					if (pos < 4) {
						item.focus();
						alert(strErrorMsg);
						return false;
					}	
				}
			
		 } else {
			item.focus();
			alert(strErrorMsg);
			return false;
		 }	
			
	}				
	
	if (posDot < posAt || posDot == 0 || posAt == 0) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}
	
	if ((posDot - posAt) < 3) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}
	 
	if (checkString.indexOf(".") == (i - 1)) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}							
    
	if ((at != true) && (dot != true)) {
		item.focus();
		alert(strErrorMsg);
		return false;    
  	}	
	return true;
}

function es_required_length() {
	var item = event.srcElement;
	event.returnValue = vs_required_length(item,iLength);
}
function vs_required_length(item,iLength) {
	var strErrorMsg = display_name(item) + " must have a required length of " + iLength;
	item.value=item.value.Trim();
	if (item.value.length!=iLength) {
		item.focus();
		alert(strErrorMsg);
		return false;
	}
	return true;
}

function es_max_length() {
	var item = event.srcElement;
	event.returnValue = vs_max_length(item,nMax);
}
function vs_max_length(item,nMax) {
	var strErrorMsg = display_name(item) + " cannot be longer than " + nMax + " characters.";
	item.value=item.value.Trim();
	if (item.value.length > nMax) {
		item.value = item.value.substr(0,nMax);
		item.focus();
		alert(strErrorMsg);
		return false;
	}
	return true;
}

function es_multi_checked() {
	var item = event.srcElement;
	event.returnValue = vs_multi_checked(item);
}
function vs_multi_checked(item) {
	var strErrorMsg = display_name(item) + " must have an option checked.";
	var i;
	var bChecked = false;
	if (item.length) {
		for (var i = 0; i < item.length; i++) {
			if(item[i].checked == true) {
				bChecked = true;
			}
		}
	} else {
		if(item.checked == true) {
			bChecked = true;
		}	
	}
	if (!bChecked) {
		alert(strErrorMsg);
		return false;	
	} else {
		return true;
	}	
}

function es_checked() {
	var item = event.srcElement;
	event.returnValue = vs_checked(item);
}
function vs_checked(item) {
	var strErrorMsg = display_name(item) + " must have an option checked.";
	var i;
	var bChecked = false;
	if(item.checked == true) {
		bChecked = true;
	}
	if (!bChecked) {
		alert(strErrorMsg);
		return false;	
	} else {
		return true;
	}	
}

//-------------------------------------------------
// Compare fields for matching
//-------------------------------------------------
function es_str_compare(field1, field2) {
	var item1 = eval(field1);
	var item2 = eval(field2);
	event.returnValue = as_str_compare(item1,item2);
}

function vs_str_compare(item1, item2) {
	if (item1.value != item2.value) {
		//Clear fields
		item1.value = "";
		item2.value = "";
		//Go to first field
		item1.focus();
		alert("The text you have entered for '" + display_name(item1) + "' and '" + display_name(item2) + "' do not match. Please try again.");
		return false;
	} 
	return true;
}

// build the validation object
function validation_setup() {
	this.eventNonBlank = es_non_blank;
	this.nonBlank = vs_non_blank;
	this.eventValidNumber = es_valid_number;
	this.validNumber = vs_valid_number;
	this.eventValidHours = es_valid_hours;
	this.validHours = vs_valid_hours;
	this.eventValidDate = es_valid_date;
	this.validDate = vs_valid_date;
	this.eventItemSelected = es_item_selected;
	this.itemSelected = vs_item_selected;
	this.eventValidZip = es_valid_zip;
	this.validZip = vs_valid_zip;
	this.eventValidSSNbr = es_valid_ssnbr;
	this.validSSNbr = vs_valid_ssnbr;
	this.eventValidEmail = es_valid_email;
	this.validEmail = vs_valid_email;
	this.eventValidLength = es_required_length;
	this.validLength = vs_required_length;
	this.eventMaxLength = es_max_length;
	this.maxLength = vs_max_length;
	this.eventMultiChecked = es_multi_checked;
	this.multichecked = vs_multi_checked;
	this.eventChecked = es_checked;
	this.checked = vs_checked;
	this.eventIdentical = es_str_compare;
	this.identical = vs_str_compare;
	return this;
}

// Extend the string object to include a trim function
String.prototype.Trim = trim_string;

// Construct the validation object
var validation = new Object;
validation = validation_setup();


var nShowSrc = null;
function setShowtimeSrc(nSrc) {
	nShowSrc = nSrc;
}

function frmShowtimesHomeSubmit(fid) {
	if (!validation.nonBlank(document.frmShowtimesHome.txtZip))
		return false;
	if (!validation.validNumber(document.frmShowtimesHome.txtZip))
		return false;
	if (document.frmShowtimesHome.txtZip.value.indexOf(".") != -1) {
		alert("Zip Code must be a valid numeric.");
		return false;
	}		
	if (document.frmShowtimesHome.txtZip.value.length < 5) {
		alert("Zip Code must be 5 digits long.");
		return false;
	}	
	if (nShowSrc == 1) {
		if (document.frmShowtimesHome.fid) {
			document.frmShowtimesHome.fid.value = "";
		}
	}
	
    var agt=navigator.userAgent.toLowerCase();
    var appVer = navigator.appVersion.toLowerCase();
		
    var is_major = parseInt(navigator.appVersion); 
    var is_minor = parseFloat(navigator.appVersion);
		
    var is_mac  = (agt.indexOf("mac")!=-1);
    var is_ie   = (agt.indexOf("msie") != -1 && (agt.indexOf('opera')==-1)); 
    var is_ie5  = (is_ie && (is_major == 4) && (agt.indexOf("msie 5.0")!=-1) ); 
	
	if (is_mac && is_ie5) {
		document.frmShowtimesHome.fid.value = fid;
		document.frmShowtimesHome.submit();		
	}
	return true;
}

function init() {
	document.frmShowtimesHome.txtZip.DisplayName = "Zip Code";
	var zip = "";
	zip = getIFILMCookie("ifilmshow");
	if (zip != "" && zip != null) {
		document.frmShowtimesHome.txtZip.value = zip;
	}	
}
window.onLoad=init;
