// Falk AdSolution - Copyright (c) 2004 by Falk eSolutions AG - All rights reserved
function rB(Pa)
{document.write('<scr'+'ipt type="text/javascript" language="JavaScript" src="'+Pa+'"></scr'+'ipt>');}function sB()
{if(typeof(Ads_nid)=='undefined')
return '';var Qa=this.location.hostname.toLowerCase();var Ra='';intPos1=Qa.indexOf('.');if((intPos1>=0)&&(intPos1<Qa.length)&&(Ads_nid==605))
{intPos2=Qa.indexOf('.',intPos1+1);if(intPos2>intPos1)
Ra=Qa.substring(intPos1+1,Qa.length);}return Ra;}function tB()
{var Ra=sB();if(Ra=='')
return 'D'+this.location.hostname;else
return 'D'+Ra;}function uB(Sa)
{if(Sa==-1)
return ';path=/';var Ta=new Date();var Ra=sB();if(Ra!='')
Ra=';domain='+Ra;Ta.setTime(parseInt(Ta.getTime(),10)+1000*60*parseInt(Sa,10));return ';path=/;expires='+Ta.toGMTString()+Ra;}function vB(j,k,C)
{if(Ads_kid>0)j='0'+j;var Ua=KAS[dA][4][27];if(typeof(Ua)=='undefined')
Ua=0;var i='&dlv='+Ads_nid+','+Ads_wid+','+Ads_iid+','+j+','+k+'&kid='+j+'&chw='+bA+'&tcs='+cA+C+bB+gA;var Va='&sta=';i+='&dmn='+Ads_T[5];if(navigator.appVersion.substring(0,1)>'3')
{i+='&scx='+screen.width+'&scy='+screen.height+'&scc='+screen.colorDepth;Va+=',,,'+(navigator.javaEnabled()?'1':'0');if(navigator.javaEnabled())
i+='&jav=1';}else
Va+=',,,';var Wa=new Date();Va+=',,,,,,';if((Ads_wrd!='')&&(Ads_wrd.toLowerCase()!='[keyword]'))
{i+='&wrd='+escape(Ads_wrd);Va+='';}Va+=','+jD[10]+','+Ads_T[13]+','+Ua+','+Ads_T[4]+','+Ads_T[10]+','+Ads_T[11]+','+Ads_T[3]+','+Ads_T[12];i+=Va;if(gbolSUXX25067) i+='&trglog='+escape(gstrXarrTargetDaten);dC(1,'STA-Uri-Parameter',Va);return (Ads_Timestamp+i);}function wB(j,k,C)
{return '&rdm='+vB(j,k,C)+'&iid='+Ads_iid+'&bid='+k;}function xB()
{return qA[Ads_sec]+(jA?'/red?cmd=red&flg=1&dat=http://a.as-us.falkag.net/dat/bgf/trpix.gif&':'/dat/bgf/trpix.gif?');}function yB(i)
{dC(1,'',xB()+i);return ((Ads_opt&512)>0)?'':(hC('Ads_Count'+Ads_iid)+'<img src="'+xB()+i+'" width="1" height="1">'+iC());}function zB(x,i)
{x.document.write(yB(i));}function aC()
{return bC(Math.random()*100000000,8);}function bC(Xa,Ya)
{var Za='#'+(Xa+100000000);return Za.substr(10-Ya,Ya);}function cC(Ab,Bb,Cb)
{var s;while((s=Ab.indexOf(Bb))!=-1)
Ab=Ab.substr(0,s)+Cb+Ab.substring(s+Bb.length,Ab.length);return Ab;}function dC(G,Ab,Db)
{var Eb=new Date();if(Ads_debug==1)
{document.write(((G!=3)?'':'<br>')+'<font color=#0000ff>[DEBUG'+((Eb-hA)/1000)+']</font> ');if((G==0)||(G==3))
document.write('<b><big>'+Ab+'</big></b><br>');else if(G==1)
document.write(''+Ab+': &nbsp;<font color=#000080>'+Db+'</font><br>');else
document.write('<b>'+Ab+'</b><br>');}else if((Ads_debug==2)&&(G==3))
document.write('<font color=#0000ff>[DEBUG'+((Eb-hA)/1000)+']</font> <b><big>'+Ab+'</big></b><br>');}function eC(Fb)
{var F='#'+(parseInt(Fb,10)+100000000);return F.substr(2,2)+'/'+F.substr(4,2)+'/'+F.substr(6,2)+'/'+F.substr(8,2);}function fC(Xa)
{var Gb='0123456789ABCDEF';var Hb='';while(Xa>0)
{Hb=Gb.substr(Xa%16,1)+Hb;Xa=parseInt(Xa/16,10);}return (Hb=='')?'0':Hb;}function gC(Ib)
{var Jb;var Kb=0;if(lA>-1)
{Kb=lA;return Kb;}if((Ib==0)&&((Ads_opt&2048)>0))
return -1;if((navigator.userAgent.indexOf("Opera")!=-1)||((navigator.appName=="Netscape")&&(navigator.userAgent.indexOf("Mozilla")!=-1)&&(parseFloat(navigator.appVersion)>=4)))
{if(navigator.mimeTypes&&navigator.mimeTypes["application/x-shockwave-flash"]&&navigator.mimeTypes["application/x-shockwave-flash"].enabledPlugin)
{Jb=navigator.plugins['Shockwave Flash'].description;Jb=Jb.substring(Jb.indexOf("."),-1);Kb=Jb.substr(-1);}}else if(navigator.userAgent&&navigator.userAgent.indexOf("MSIE")!=-1&&navigator.userAgent.indexOf("Windows")!=-1&&navigator.userAgent.indexOf("Windows 3")==-1&&document.all)
{document.write('<scr'+'ipt language=VBScript>\n Ads_vbCV=10\nAds_vbMV=1\nDo\nOn Error Resume Next\n');document.write('Ads_vbBF=(IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash."&Ads_vbCV)))\n');document.write('If Ads_vbBF=true Then Exit Do\nAds_vbCV=Ads_vbCV-1\nLoop While Ads_vbCV>=Ads_vbMV\n </scr'+'ipt>');Kb=Ads_vbCV;}lA=Kb;return Kb;}function hC(Lb)
{if(aB)
return '<div id='+Lb+' style="position:absolute;left:-10;top:-10;">';else
return '';}function iC()
{if(aB)
return '</div>';else
return '';}function jC(Mb)
{var Nb,Ob;if(window.innerHeight)
{Nb=Mb.x;Ob=Mb.y;}else
{if(Mb.offsetLeft)
{Mb=Mb;Nb=Mb.offsetLeft;Di=Mb.offsetParent;while(Di!=null)
{Nb+=Di.offsetLeft;Di=Di.offsetParent;}Ob=Mb.offsetTop;Di=Mb.offsetParent;while(Di!=null)
{Ob+=Di.offsetTop;Di=Di.offsetParent;}}else
return [-1000,-1000];}return [Nb,Ob];}function kC(Pb,D,m,n)
{var Qb;var Mb=document.images[D];var Rb=jC(Mb);Mb.width=m;Mb.height=n;if(aB)
Qb=document.getElementById(Pb).style;else if(document.layers)
Qb=document.layers[Pb];else
Qb=document.all[Pb].style;Qb.left=Rb[0];Qb.top=Rb[1];if (aB) Qb.display='block';else if(document.layers) Qb.visibility='show';else Qb.visibility='visible';}// Falk AdSolution - Copyright (c) 2004 by Falk eSolutions AG - All rights reserved
if((typeof(Ads_debug)=='undefined')||(Ads_debug!=1))
window.onerror=qB;gbolSUXX25067=false;var Ads_ModulMain=true;if(typeof(Ads_ModulEffects)=='undefined')
Ads_ModulEffects=false;var bA,cA,dA,eA,fA,gA,hA,iA;var jA,kA,lA,mA,nA,oA;var pA=['http://a.as-us.falkag.net','https://s.as-us.falkag.net'];var qA=['http://red.as-us.falkag.net','https://red.as-us.falkag.net'];var rA=['http://sel.as-us.falkag.net/server/asldata.js','https://sel.as-us.falkag.net/server/asldata.js'];var sA=['http://a.as-us.falkag.net','https://s.as-us.falkag.net'];var tA=['http://bw.as-us.falkag.net','https://s.as-us.falkag.net'];var uA=[];var vA=navigator.userAgent.toLowerCase();var wA=(vA.indexOf("msie")!=-1);var xA=((vA.indexOf("win")!=-1)||(vA.indexOf("16bit")!=-1));var yA=(vA.indexOf("mac")!=-1);var zA=(navigator.appName.indexOf('icrosoft')!=-1);var aB=(typeof(document.getElementsByTagName)!='undefined'&&typeof(document.createElement)!='undefined')?1:0;var bB='';var cB=0;var dB=[];var eB=[];var fB;var a=[];var b=[];var c=[];var d=[];var e=[];var f=[];var g=[];var Ads_LinkUrl,Ads_CountUrl,Ads_ClickUrl,Ads_T,iid,bid,rdm;var gB,hB,Ads_gintCurVersion;var iB='toolbar=yes,directories=yes,status=yes,scrollbars=yes,resizable=yes,menubar=yes,location=yes';function gotoSite(){window.open(gB,'flashwin',iB);}function emosite(){window.open(gB,'flashwin',iB);}function FlashClick(){window.open(gB,'flashwin',iB);}function link1(){window.open(gB,'flashwin',iB);}function gotoURL(h){window.open(hB+escape(h),'flashwin',iB);}function jB()
{Ads_kid=0;Ads_bid=0;Ads_cmd='';}function kB(h)
{dC(1,'adsclickurl',Ads_ClickUrl);h=cC(h,'[par]',escape(Ads_par));h=cC(h,'[keyword]',escape(Ads_wrd));h=cC(h,'[timestamp]',Ads_Timestamp);h=cC(h,'[clickurl]',escape(Ads_CountUrl));h=cC(h,'[clickurl_plain]',Ads_CountUrl);h=cC(h,'[web_id]',Ads_wid);h=cC(h,'[web_external_id]',escape(Ads_xwid));h=cC(h,'[con_id]',Ads_iid);h=cC(h,'[con_external_id]',escape(Ads_xiid));return h;}function lB(h,i)
{return qA[Ads_sec]+'/red?cmd=url&'+(jA?'flg=1&':'')+i+'&dat='+escape(h);}function mB(j,k,l,m,n)
{var o;if(cB<2)
{cB++;o=cB+1;bB+='&kid'+o+'='+j;bB+='&bid'+o+'='+k;bB+='&iid'+o+'='+Ads_iid;bB+='&dlv'+o+'='+Ads_nid+','+Ads_wid+','+Ads_iid+','+j+','+k;if(fA!=0)
bB+='&sid'+o+'='+fA;arrIntern=l.split('-');Ads_iid=arrIntern[1];Ads_kid=arrIntern[2];Ads_bid=(arrIntern.length<4)?0:arrIntern[3];Ads_par=(arrIntern.length<5)?Ads_par:unescape(arrIntern[4]);Ads_xl=0;Ads_yl=0;rB(pA[Ads_sec]+'/dat/cjf/'+eC(Ads_iid)+'.js');}else
{bB='';cB=0;jB();}}function nB(p)
{var q=[];var r=p.length;var s;for(s=0;s<r;s+=2)
q[s/2+1]=Ads_CountUrl+escape(p[s+1])+'&bidx='+p[s];return q;}function SAS()
{if((document.cookie.toLowerCase().indexOf('bndlvl')==-1)&&((IAS[13]&4)>0))
iD();else
oB();}function oB()
{var t;if((typeof(Ads_debug)=='undefined')||(Ads_debug!=1))
window.onerror=qB;if((Ads_nid==631)||(Ads_nid==668))
{ pA[0]=['http://e.as-eu.falkag.net'];sA[0]=pA[0];}var u='undefined';if(typeof(Ads_cmd)==u) Ads_cmd='';if(typeof(Ads_kid)==u) Ads_kid=0;if(typeof(Ads_bid)==u) Ads_bid=0;if(typeof(Ads_xl)==u) Ads_xl=0;if(typeof(Ads_yl)==u) Ads_yl=0;if(typeof(Ads_xp)==u) Ads_xp='';if(typeof(Ads_yp)==u) Ads_yp='';if(typeof(Ads_opt)==u) Ads_opt=0;if(typeof(Ads_wrd)==u) Ads_wrd='';if(typeof(Ads_prf)==u) Ads_prf='';if(typeof(Ads_par)==u) Ads_par='';if(typeof(Ads_cnturl)==u) Ads_cnturl='';if(typeof(Ads_ref)==u) Ads_ref=0;if(typeof(Ads_anc)==u) Ads_anc='';if(typeof(Ads_cmb)==u) Ads_cmb=[];if(typeof(Ads_uid)==u) Ads_uid='';if(typeof(Ads_bgc)==u) Ads_bgc='';Ads_cmd=Ads_cmd.toLowerCase();if(Ads_ref==0)
Ads_ref=IAS[12];if(Ads_bgc=='')
{if(typeof(IAS[16])!=u)
Ads_bgc=IAS[16];}t=pA[Ads_sec]+'/dat/dlv/aslframe.html?dat='+Ads_iid +'&kid='+Ads_kid+'&wrd='+escape(Ads_wrd) +'&bid='+Ads_bid+'&prf='+escape(Ads_prf) +'&xl='+Ads_xl+'&par='+escape(Ads_par) +'&yl='+Ads_yl+'&cnturl='+Ads_cnturl+'&debug='+Ads_debug +'&xp='+Ads_xp+'&sec='+Ads_sec+'&bgc='+Ads_bgc +'&yp='+Ads_yp+'&ref='+Ads_ref+'&opt=';var v='" width="'+Ads_xl+'" height="'+Ads_yl+'" noresize scrolling="no" hspace="0" vspace="0" frameborder="0" marginheight="0" marginwidth="0"></iframe>';if(Ads_ref>0)
{document.write('<iframe src="'+t+Ads_opt+v);Ads_ref=0;return;}dC(3,'Start for Adspot '+Ads_iid);rD();if((Ads_bgc!='')&&(Ads_bgc!='-1'))
document.body.style['backgroundColor']='#'+Ads_bgc;if(((IAS[13]&8)>0)&&(jD[10]==0))
fD();bA='';cA='';eA=0;fA=0;gA='';dA=-1;mA=false;if((typeof(Ads_T)=='undefined')||(typeof(Ads_T[5])=='undefined'))
Ads_T=[0,0,'',0,0,'','','','',0,0,0,0,0];if(1==1)
KAS[KAS.length]=[-1,100,-1,100,[],0,0,0,0,100];dC(3,'Select campaigns');if((Ads_kid==0)||(Ads_kid==''))
dA=oC();else
{dC(1,'Preselected campaign',Ads_kid);r=KAS.length;dA=0;while((dA<r)&&(KAS[dA][0]!=Ads_kid))
dA++;if(dA==r)
dA=-1;}if((Ads_opt&256)!=0)
{if(dA!=-1)
Ads_skid=KAS[dA][0];else
Ads_skid=0;dC(1,'Skipping delivery,selected campaign:',Ads_skid);}else
{if(dA!=-1)
{eA=KAS[dA][0];fA=KAS[dA][6];mA=((KAS[dA][5]&4)>0);if(fA!=0)
gA='&sid='+fA;dC(1,'Selected campaign',eA+'('+fA+')');if(eA>0)
{dC(1,'BJF-load start','');rB(pA[Ads_sec]+'/dat/bjf/'+eC(eA)+'.js');dC(1,'BJF-load ende','');}else
DAS();}else
{dC(1,'no campaign selected!');DAS();}}}function DAS()
{dC(3,'Select banner for campaign '+eA);var w,r,i,x,y,z,A,B;var C='';var D='';var E=['_blank','_self','_parent','_top'];var k=0;var F,m,n;if(IAS[9]==1)
{F='adsolut.gif';m=234;n=60;}else
{F='trpix.gif';m=1;n=1;}nA='Falk AdSolution';if(IAS[9]==4)
nA='Werbung';nA='onmouseover="self.status=\''+nA+'\';return true;" ';if(IAS[9]==5)
nA='';var G=1;var h='http://www.falkag.de';// Ziel-Url
var H='Falk AdSolution';var I=0;var J='';var K='';var L='';var M='';var N='';var O=0;var P=0;var Q=1;var R=2;var l='';var S='';var p=[];var T=0;var U='';var V,W,X,Y,Z,Aa,Ba,Ca,Da,Ea;if(eA!=0)
{if((Ads_bid==0)||(Ads_bid==''))
w=pC(dA,eA);else
{r=BAS.length;w=0;while((BAS[w][0]!=Ads_bid)&&(w<r))
w++;if(w==r)
w=-1;}if(w!=-1)
k=BAS[w][0];}if(k>0)
{G=BAS[w][3];F=BAS[w][4];h=BAS[w][5];H=BAS[w][6];I=BAS[w][12];J=BAS[w][7];K=BAS[w][8];L=BAS[w][9];M=BAS[w][10];N=BAS[w][11];m=BAS[w][13];n=BAS[w][14];O=BAS[w][15];P=BAS[w][16];Q=BAS[w][17];R=BAS[w][18];l=BAS[w][19];S=BAS[w][20];p=BAS[w][22];T=BAS[w][23];U=BAS[w][24];Ads_klist+=eA+'#';z=KAS[dA][4][25];if(z>0)
{if(typeof(Ads_fcount[z])=='undefined')
Ads_fcount[z]=1;else
Ads_fcount[z] ++;}}if(eA>0)
C=tD(eA,dA,k,w,((I&4096)>0));if(eA==-1)
{eA=99999999;k=99999999;}Ads_skid=eA;Ads_sbid=k;dC(1,'Selected campaign',eA);dC(1,'Selected banner',k);dC(3,'Delivery and display of the banner');K=(K=='')?h:K;V=(I&24);W=E[I&3];Z=((I&64)>0)&&((Ads_opt&64)==0);X=(I&128)>0;Y=(I&512)>0;Aa=((I&1024)>0)&&Ads_ModulEffects;Ba=((I&8192)>0);Ca=(I&2048)>0;Da=(S.length>0);m=(Ads_xl>0)?Ads_xl:m;n=(Ads_yl>0)?Ads_yl:n;O=(Ads_xp!='')?Ads_xp:O;P=(Ads_yp!='')?Ads_yp:P;jA=(I&4096)>0;Ads_opt|=(I&16384)>0?64:0;Ads_opt|=IAS[3]*32;if(Ads_anc!='')
{A=true;D=Ads_anc;Ads_anc='';}Ads_Timestamp=aC();h=kB(h);K=kB(K);if(Ads_cnturl!='')
{Ea=cC(Ads_cnturl,'[url]',escape(h));h=cC(Ea,'[url_plain]',h);Ea=cC(Ads_cnturl,'[url]',escape(K));K=cC(Ea,'[url_plain]',K);}if(dB.length!=0)
{bA+=dB[13];cA+=dB[14];}i=wB(eA,k,C);dC(1,'Count-String',i);if((G==3)||(G==4)||(G==8))
{Ads_LinkUrl=h;Ads_CountUrl=lB('',i);Ads_ClickUrl=Ads_CountUrl+escape(h);Ads_MultiUrl=nB(p);Ads_ViewCode=yB(i);Ads_ViewUrl=xB()+i;}if(G==1)
L=sA[Ads_sec]+'/dat/bgf/'+F;if(dB.length!=0)
{if(!X)
{X=dB[0];Z=dB[1];Y=dB[2];R=dB[3];Aa=dB[4];Ba=dB[5];}if(!Da)
{Da=dB[6];S=dB[7];}O=dB[8];P=dB[9];V=dB[10];IAS[2]=dB[11];IAS[11]=dB[12];D=dB[15];A=(D!='');dB=[];}if(G==5)
{dB=[X,Z,Y,R,Aa,Ba,Da,S,O,P,V,IAS[2],IAS[11],bA,cA,D];X=false;Da=false;A=false;IAS[2]=0;}if((Ads_cmd=='lnk')&&(G!=5))
{self.location.href=lB(h,i);X=false;Da=false;A=false;G=6;return;}if(X&&((U=='')||(G!=3)))
{x=xG(m,n,O,P,V,Z,Y,R,Aa,Ba);if(Z)
{if(window.innerHeight)
{m=x.innerWidth;n=x.innerHeight;}else
{m=x.document.body.clientWidth;n=x.document.body.clientHeight;}}if(Y)
window.setTimeout('x.blur();',R*1000);}else
x=window;if(A)
document.write(hC('Ads_place'+Ads_iid));else if(Ads_ModulEffects&&Da)
{if(V==16)
V=1;else if(V==24)
V=2;else
V=0;eG(Ads_iid,m,n,O,P,V,S,X,x);fG(Ads_iid,Ads_sec);}dC(1,'Banner-Typ/PopUp',G+'/'+X);if(G<2)
rG(x,X,i,L,h,W,m,n,H);else if(G==2)
sG(x,X,i,F,h,W,m,n,H,J,K,Ca,Q);else if(G==3)
tG(x,X,i,eA,k,C,Da,m,n,T,U,A,'/dat/brf/',0);else if(G==4)
uG(x,X,i,M,N,Da,m,n,A);else if(G==5)
mB(eA,k,l,m,n);else if(G==8)
tG(x,X,i,eA,k,C,Da,m,n,T,U,A,'/dat/bfx/',parseInt(l,10));dC(3,'Banner-display finished');gD();if(A)
{document.write(iC());setInterval('kC("Ads_place'+Ads_iid+'","'+D+'",'+m+','+n+');',20);}if(Ads_ModulEffects&&Da)
gG(Ads_iid);if(G!=5)
jB();Ads_idl+='#'+Ads_iid+'#';if((IAS[2]>0)&&(Ads_idl.indexOf('#'+IAS[2]+'#')==-1)&&(IAS[11]>(Math.random()*100)))
{dC(1,'Load adspot-combined adspot',IAS[2]);Ads_kid=0;Ads_bid=0;Ads_xl=0;Ads_yl=0;rB(pA[Ads_sec]+'/dat/cjf/'+eC(IAS[2])+'.js');}r=Ads_cmb.length;for(s=0;s<r;s++)
{if(Ads_cmb[s]!='')
{B=Ads_cmb[s];Ads_cmb[s]='';s=r;Ads_pth='';Ads_iid='';eval(B);dC(1,'Load tag-combined adspot',Ads_iid+Ads_pth);if(Ads_pth!='')
rB(pA[Ads_sec]+'/dat/njf/'+Ads_pth+'.js');else
rB(pA[Ads_sec]+'/dat/cjf/'+eC(Ads_iid)+'.js');}}}function CAS()
{if(typeof(Ads_debug)=='undefined') Ads_debug=0;var Fa=new Date(Ads_T[9]);var Ga=new Date();Ads_T[9]=Fa-Ga;var Ha=Ads_T[0]+'#'+Ads_T[1]+'#'+Ads_T[2]+'#'+Ads_T[3]+'#'+Ads_T[4]+'#'+Ads_T[5]+'#'+Ads_T[6]+'#'+escape(Ads_T[7])+'#'+escape(Ads_T[8])+'#'+Ads_T[9]+'#'+Ads_T[10]+'#'+Ads_T[11]+'#'+Ads_T[12]+'#'+Ads_T[13];document.cookie='ASLTRG='+Ha+uB(60*24);dC(1,'Load targeting-infos from server',Ha);}function LAS(Ia)
{Ads_iid=0;var i='pth='+Ia+'&xl='+Ads_xl+'&yl='+Ads_yl;if(typeof(Ads_channels)!='undefined')
i+='&chn='+escape(Ads_channels);jA=false;document.write(yB(i));}function pB()
{hA=new Date();lA=-1;document.cookie='BSUID=1'+uB(60*24*30);kA=false;if(typeof(Ads_debug)=='undefined') Ads_debug=0;if(typeof(Ads_sec)=='undefined') Ads_sec=0;if(typeof(Ads_opt)=='undefined') Ads_opt=0;if(typeof(Ads_klist)!='string') Ads_klist='';if(typeof(Ads_fcount)!='object') Ads_fcount=[];if(typeof(Ads_idl)!='string') Ads_idl='';if(typeof(garrIFrames)=='undefined') garrIFrames=[];dC(3,'Global Init');var Ha=document.cookie+';';var Ja=(Ha.indexOf('BSUID=')!=-1);var Ka=Ha.indexOf('ASLTRG=');var La,W;if(Ka!=-1)
{La=Ha.indexOf(';',Ka);W=Ha.substring(Ka+7,La);Ads_T=W.split('#');Ads_T[7]=unescape(Ads_T[7]);Ads_T[8]=unescape(Ads_T[8]);dC(1,'Load targeting-infos from cookie',W);}else
{dC(1,'#-#ASLDATA-load start','');rB(rA[Ads_sec]+(Ja?('?rdm='+aC()):''));dC(1,'#-#ASLDATA-load ende','');}}function qB(Ma,Na,Oa)
{return true;}pB();