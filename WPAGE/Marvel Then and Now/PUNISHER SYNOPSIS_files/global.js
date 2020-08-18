// JavaScript Document
<!--
//Start Definitions for Toolbox Code

function AddToFaves_hp(){
	var name = 'Strange-Haven.com';
	var is_4up = parseInt(navigator.appVersion);
	var is_mac   = navigator.userAgent.toLowerCase().indexOf("mac")!=-1;
	var is_ie   = navigator.userAgent.toLowerCase().indexOf("msie")!=-1;
	var thePage = location.href;
	if (thePage.lastIndexOf('#')!=-1)
		thePage = thePage.substring(0,thePage.lastIndexOf('#'));
	if (is_ie && is_4up && !is_mac)
		window.external.AddFavorite(thePage,name);
	else if (is_ie || document.images)
		booker_hp =
window.open(thePage,'booker_','menubar,width=325,height=100,left=140,top=60');
	//booker_hp.focus();
	}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

if (window.name=='booker_'){
	var pre_fix = document.images? '<BR>':'';
	document.write(pre_fix + '<P align="center">'
	+ 'Use the menu or ctrl/cmd-D now <BR>to bookmark the page then <BR>'
	+ '<A href="javascript:window.close();">close this window</A></p>'
	+ '<P>&nbsp;</P><P>&nbsp;</P><P>&nbsp;</P><P>&nbsp;</P><P>&nbsp;</P>');
	}

function MM_displayStatusMsg(msgStr) { //v1.0
  status=msgStr;
  document.MM_returnValue = true;
}

//End definitions for page bookmarking

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

//-->

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}