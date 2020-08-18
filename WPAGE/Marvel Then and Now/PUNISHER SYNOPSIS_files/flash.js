// JavaScript Document
<!--
var MM_contentVersion = 5;
var plugin = (navigator.mimeTypes && navigator.mimeTypes["application/x-shockwave-flash"]) ? navigator.mimeTypes["application/x-shockwave-flash"].enabledPlugin : 0;
if ( plugin ) {
var words = navigator.plugins["Shockwave Flash"].description.split(" ");
for (var i = 0; i < words.length; ++i)
{
if (isNaN(parseInt(words[i])))
continue;
var MM_PluginVersion = words[i]; 
}
var MM_FlashCanPlay = MM_PluginVersion >= MM_contentVersion;
}
else if (navigator.userAgent && navigator.userAgent.indexOf("MSIE")>=0 
&& (navigator.appVersion.indexOf("Win") != -1)) {
document.write('<SCR' + 'IPT LANGUAGE=VBScript\> \n'); //FS hide this from IE4.5 Mac by splitting the tag
document.write('on error resume next \n');
document.write('MM_FlashCanPlay = ( IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash." & MM_contentVersion)))\n');
document.write('</SCR' + 'IPT\> \n');
}
if ( MM_FlashCanPlay ) {
document.write('<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"');
document.write('  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" ');
document.write(' ID="strangehaven" WIDTH="775" HEIGHT="120" ALIGN="">');
document.write(' <PARAM NAME=movie VALUE="http://www.strange-haven.com/images/swf/strangehaven.swf"> <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=#CC3333>  '); 
document.write(' <EMBED src="http://www.strange-haven.com/images/swf/strangehaven.swf" quality=high bgcolor=#CC3333  ');
document.write(' swLiveConnect=FALSE WIDTH="775" HEIGHT="120" NAME="strangehaven" ALIGN=""');
document.write(' TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer">');
document.write(' </EMBED>');
document.write(' </OBJECT>');
} else{
document.write('<IMG SRC="http://www.strange-haven.com/images/strangehaven.gif" WIDTH="775" HEIGHT="120" usemap="#strangehaven" BORDER=0>');
}
//-->