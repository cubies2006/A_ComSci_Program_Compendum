// Falk AdSolution - Copyright (c) 2004 by Falk eSolutions AG - All rights reserved
function qG(Wf,Ei)
{return (Wf==0)?'':' '+Ei+'="'+Wf+'"';}function rG(x,X,i,L,h,W,m,n,H)
{L=kB(L);if(X)
vG(x,H);x.document.write('<a href="'+lB(h,i) +'" target="'+W+'" '+nA+'onmouseout="self.status=\'\';return true;">');x.document.write('<img src="'+L+'"'+qG(m,'width')+qG(n,'height')+' border="0" id="Ads_img'+Ads_iid+'" name="Ads_img'+Ads_iid+'" alt="'+H+'"></a>');zB(x,i);if(X)
wG(x);bB='';cB=0;}function sG(x,X,i,F,h,W,m,n,H,J,K,Ca,Q)
{var Fi=cC(i,'&rdm='+Ads_Timestamp,'');if(X)
vG(x,H);h=lB(h,Fi);K=lB(K,Fi);F=sA[Ads_sec]+'/dat/bgf/'+F;J=sA[Ads_sec]+'/dat/bgf/'+J;gB=h;hB=lB('',Fi);var Gi=F+'?clickTag='+escape(h)+'&url='+escape(h);dC(1,'Flash-Url',Gi);var Jb;if(Q<=gC(1))
{x.document.write('<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http'+((Ads_sec==1)?'s':'')+'://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=3,0,0,0" id=banner'+qG(m,'width')+qG(n,'height')+'">');x.document.write('<PARAM NAME=movie VALUE="'+Gi+'"><PARAM NAME=play VALUE=true><PARAM NAME=autoplay VALUE=true><PARAM NAME=wmode VALUE=opaque><PARAM NAME=quality VALUE=autohigh><PARAM name=scale value=exactfit>');x.document.write('<EMBED src="'+Gi+'" quality=autohigh autoplay=true play=true wmode=opaque scale=exactfit swLiveConnect=TRUE'+qG(m,'width')+qG(n,'height')+' TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED></OBJECT>');}else
{x.document.write('<a href="'+K+'" target="'+W+'" '+nA+' onmouseout="self.status=\'\';return true;"><img src="'+J+'"'+qG(m,'width')+qG(n,'height')+' border="0" alt="'+H+'"></a>');}zB(x,i);if(X)
wG(x);bB='';cB=0;}function tG(x,X,i,j,k,C,Da,m,n,T,U,A,Ia,Hi)
{var F=pA[Ads_sec]+Ia+eC((Hi>0)?Hi:((T==0)?k:T));var Ii,Se;iid=Ads_iid;bid=k;rdm=vB(j,k,C);if(X||((Da||A)&&(zA||aB)))
{var Ji='*';for(Se=1;Se<Ads_MultiUrl.length;Se++)
{h=Ads_MultiUrl[Se];Ji+=h.substring(Ads_CountUrl.length,h.length)+'*';}Ii=Ads_wid+'#'+Ads_iid+'#'+j+'#'+k+'#'+Ads_xwid+'#'+Ads_xiid+'#'+Ads_wrd+'#'+Ads_prf+'#'+Ads_par+'#'+Ads_Timestamp+'#'+rdm+'#'+(qA[Ads_sec]+'/red?cmd=url&'+(jA?'flg=1&':''))+'#'+Ads_LinkUrl+'#'+Ji+'#'+xB();}if(X&&(U!=''))
{dC(1,'Sidebar',F+'.html?'+escape(Ii));window.open(F+'.html?'+escape(Ii),U);}else if(X)
{dC(1,'Pop',F+'.html?'+escape(Ii));x.location.href=F+'.html?'+escape(Ii);}else if((Da||A)&&(zA||aB))
{dC(1,'Ifr',F+'.html?'+escape(Ii));document.write('<iframe src="'+F+'.html?'+escape(Ii)+'" width="'+m+'" height="'+n+'" noresize scrolling="no" hspace="0" vspace="0" frameborder="0" marginheight="0" marginwidth="0"></iframe>');}else
{dC(1,'Jsc',F+'.js');if(Hi>0)
{zB(x,i);rB(pA[Ads_sec]+'/dat/dlv/afxplay.js');}rB(F+'.js');}bB='';cB=0;}function uG(x,X,i,M,N,Da,m,n,A)
{N=kB(unescape(N));M=kB(unescape(M));dC(1,'Redirect',N+'/'+M);if(X)
x.location.href=M;else
{if(((Da||A)&&zA)||(N==''))
document.write('<iframe src="'+M+'" width="'+m+'" height="'+n+'" noresize scrolling="no" hspace="0" vspace="0" frameborder="0" marginheight="0" marginwidth="0"></iframe>');else
rB(N);}zB(window,i);bB='';cB=0;}function vG(x,H)
{x.document.open();x.document.write('<html><head><title>'+H+'</title></head><body topmargin="0" leftmargin="0" rightmargin="0" marginwidth="0" marginheight="0"><table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" align="center"><tr><td valign="middle"><center>');}function wG(x)
{x.document.write('</center></td></tr></table></body></html>');x.document.close();}function xG(m,n,O,P,V,Z,Y,R,Aa,Ba)
{var y='locationbar=no,directories=no,statusbar=no,toolbar=no,location=no,menubar=no,personalbar=no';var Ki='Ads_Popup'+Ads_iid;var Li,Mi;var Ni=0;var Oi=0;if(Z)
{if (xA)
{Ni=10;Oi=30;}else if (yA)
{Ni=20;Oi=35;}y+=',scrollbars=no,resizable=no,width='+(screen.availWidth-Ni)+',height='+(screen.availHeight-Oi)+',screenX=0,screenY=0';if(wA)
y='fullscreen=yes';}else
{if(Aa)
y+=',resizable=yes,width=90,height=70,innerWidth=90,innerHeight=70';else
y+=',resizable=no,width='+m+',height='+n;if(Ba)
y+=',scrollbars=yes';else
y+=',scrollbars=no';if(V==16)
{O=(screen.width-m-25)*O/100;P=(screen.height-n-50)*P/100;}else if(V==24)
{O=(screen.width-m-25)*Math.random();P=(screen.height-n-50)*Math.random();}if (!zA)
y+=",screenX="+O+",screenY="+P;else
y+=",left="+O+",top="+P;}if((Ads_opt&32)>0)
Ki+=Math.round(Math.random()*100000);if((Ads_opt&64)>0)
y='locationbar=yes,scrollbars=yes,directories=yes,statusbar=yes,toolbar=yes,location=yes,menubar=yes,personalbar=yes,resizable=yes';dC(1,'PopUp open START','');x=open('',Ki,y);dC(1,'PopUp open END','');if(Z&&(!wA))
x.moveTo(0,0);if(Y&&(R==0))
x.blur();else if(Y)
x.setTimeout('window.blur();',R*1000);if(Aa)
nG(x,m,n);return x;}// Falk AdSolution - Copyright (c) 2004 by Falk eSolutions AG - All rights reserved
var jD=[];var kD;function lD(If,Jf,Kf)
{if(typeof(If)=='undefined')
return [];var s,r;var Lf=[];var Mf=If.split('x');var Nf=Mf[0];var Of=Jf-Nf;var r=Mf.length;for(s=1;s<r;s++)
{Ug=Mf[s].split(':');if(Kf&&(Ug[2]==-1))
Lf[Ug[0]]=[Ug[1],-1];Ug[2]-=Of;if(Ug[2]>0)
Lf[Ug[0]]=[Ug[1],Ug[2]];}return Lf;}function mD(Lf,Jf)
{var Lb;var If=Jf;for(Lb in Lf)
If+='x'+Lb+':'+Lf[Lb][0]+':'+Lf[Lb][1];return If;}function nD(Pf,Qf)
{while(Pf.length>800)
Pf=Pf.substr(0,Pf.lastIndexOf('#',Pf.length-2)+1);jD[Qf]=Pf;}function oD(Qf,Fb)
{var Rf='111';var Sf='@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`';var r=0;var Tf='#'+Fb+':';var Pf=jD[Qf];var Uf='';var V=Pf.indexOf(Tf);var Vf=new Date();var Wf,Xf,Yf,Zf,Zc;var Ag,Bg,Cg,Dg;if(Pf=='')
Pf='#';if(V>-1)
{Xf=Pf.substr(V+Tf.length,3+Qf);if(V>0)
Uf=Pf.substr(0,V);Wf=Pf.length-V-Tf.length-3-Qf;if(Wf>0)
Uf+=Pf.substr(V+Tf.length+3+Qf,Wf);Pf=Uf;Yf=new Date(Sf.indexOf(Xf.charAt(0))+2000,Sf.indexOf(Xf.charAt(1))-1,Sf.indexOf(Xf.charAt(2)));Vf.setHours(0);Vf.setMinutes(0);Vf.setSeconds(0);Zf=(Vf.getTime()-Yf.getTime())/1000/60/60/24;intAltWTag=(Yf.getDay()==0?7:Yf.getDay());intNeuWTag=(Vf.getDay()==0?7:Vf.getDay());intAltMTag=Yf.getDate();intNeuMTag=Vf.getDate();Rf=((Zf>0.1)?'1':'0')+(((Zf>6)||(intAltWTag>intNeuWTag))?'1':'0')+(((Zf>29)||(intAltMTag>intNeuMTag))?'1':'0');if(Qf==1)
r=Sf.indexOf(Xf.charAt(3));}Xf='#'+Fb+':';Zc=Vf.getYear();if(Zc<1900)
Zc+=1900;Xf+=Sf.charAt(Zc-2000);Xf+=Sf.charAt(Vf.getMonth()+1);Xf+=Sf.charAt(Vf.getDate());if(Qf==1)
{r++;if(r>21)
r=21;Xf+=Sf.charAt(r);Rf+=Sf.charAt(r);}Pf=Xf+Pf;nD(Pf,Qf);return Rf;}function pD(Tf,Qf,Eg)
{var Ka,La,Wf,Fg,Gg;var Pf=jD[Qf];var Uf='';var Hg='';var Ig=-1;if(Pf=='')
Pf='#';Tf='#'+Tf+'-';Ka=Pf.indexOf(Tf);if(Ka!=-1)
La=Pf.indexOf('#',Ka+1);if((Ka!=-1)&&(La!=1))
{Fg=Pf.substring(Ka+Tf.length,La);if(Ka>0)
Uf=Pf.substr(0,Ka);Wf=Pf.length-La;if(Wf>0)
Uf+=Pf.substr(La,Wf);Pf=Uf;if(Qf==6)
{Gg=Fg.split('-');Hg=Gg[0];Fg=Gg[1];}Ig=Eg-parseInt(Fg,10);if(Ig>1200)
Ig=-1;}jD[Qf]=Pf;return [Ig,Hg];}function qD(j)
{var Jg=new Date();var Ig=Jg.getHours()*60*60+Jg.getMinutes()*60+Jg.getSeconds();var Kg,Lg;Kg=pD(Ads_wid,6,Ig);Lg=pD(j,5,Ig);var Mg=(Kg[0]==-1);var Ng=(Lg[0]==-1);var Og=(Mg?'1':'0')+(Ng?'1':'0');if(!Mg)
Og+=bC(Kg[0],4)+Kg[1];nD('#'+Ads_wid+'-'+Ads_iid+'-'+Ig+jD[6],6);nD('#'+j+'-'+Ig+jD[5],5);return Og;}function rD()
{iA=tB();dC(2,'Read Cookies');var s,Pg,Lb,Qg,Rg,Sg,Tg,Ug,Qf;var Ha=document.cookie;var Kf=(Ha.toLowerCase().indexOf('sestest')>-1);document.cookie=iA+'SESTEST=1'+uB(-1);var Vg=Ha.split(';');var r=Vg.length;var Eb=new Date();kD=Math.round(Eb.getTime()/1000/60);jD=['','',[],'','','','',[],[],[],0,''];for(s=0;s<r;s++)
{Qf=-1;Sg=Vg[s].split('=');Lb=Sg[0];Rg=Sg[1];if(Lb.charAt(0)==' ')
Lb=Lb.substr(1,Lb.length-1);if(Lb.substr(0,iA.length)==iA)
Qg=Lb.substring(iA.length,Lb.length);else
Qg='';if(Qg=='KIDYMD')
jD[1]=Rg;else if(Qg=='WIDYMD')
jD[0]=Rg;else if(Lb=='BSUID')
jD[3]=Rg;else if(Lb=='BNDWDT')
jD[4]=Rg;else if(Lb=='BNDLVL')
jD[10]=Rg;else if(Qg=='VISKAM')
jD[5]=Rg;else if(Qg=='VISWEB')
jD[6]=Rg;else if(Qg=='FRQSTR')
{Sg=Rg.split(',');dC(1,'KID',Sg[0]);dC(1,'WID',Sg[1]);dC(1,'NID',Sg[2]);dC(1,'BID',Sg[3]);jD[2]=lD(Sg[0],kD,Kf);jD[7]=lD(Sg[1],kD,Kf);jD[8]=lD(Sg[2],kD,Kf);jD[9]=lD(Sg[3],kD,Kf);}}if(Ads_uid!='')
{Vg=Ads_userdata.split(';');r=Vg.length;jD[2]=[];for(s=1;s<(r-1);s++)
{Sg=Vg[s].split(',');jD[2][Sg[0]]=[Sg[1],1];}}if(jD[3]=='1')
kA=true;dC(1,'KIDYMD',jD[1]);dC(1,'WIDYMD',jD[0]);dC(1,'BSUID' ,jD[3]);dC(1,'BNDWDT',jD[4]);dC(1,'BNDLVL',jD[10]);dC(1,'VISKAM',jD[5]);dC(1,'VISWEB',jD[6]);}function sD(j,Hc)
{var Wg,Xg,Uc,Yg;var Zg='';iA=tB();var Ah=KAS[Hc][4][5];if(KAS[Hc][4][4]>0)
Zg=uB(Ah);else if((KAS[Hc][5]&1)>0)
{Zg=uB(20);Ah=20;}if(Zg!='')
{Uc=parseInt(uD(j,2)+1,10);if(Ads_uid!='')
{Wg=Ads_userdata.split(';'+j+',');if(Wg.length==2)
{Xg=Ads_userdata.split(','+j+';');Ads_userdata=Wg[0]+';'+Xg[1];}Ads_userdata+=j+','+Uc+','+Ah+','+j+';';Yg=new Image();Yg.src='http://uboot.as-eu.falkag.net/usr?cmd=write&id='+Ads_uid+'&data='+Ads_userdata+'&rdm='+Math.random();dC(1,'tp','?cmd=write&id='+Ads_uid+'&data='+Ads_userdata+'&rdm='+Math.random());}else
vD(j,2,Uc,Ah);}}function tD(j,Hc,k,w,Bh)
{iA=tB();var C,Ha;sD(j,Hc);if(k>0)
{if(BAS[w][2][4]>0)
vD(k,9,uD(k,9)+1,BAS[w][2][5]);}if(((KAS[Hc][4][22]&1)>0)&&(IAS[4]>0))
vD(Ads_wid,7,uD(Ads_wid,7)+1,IAS[5]);if(((KAS[Hc][4][22]&2)>0)&&(IAS[6]>0))
vD(Ads_nid,8,uD(Ads_nid,8)+1,IAS[7]);Ha=mD(jD[2],kD)+',' +mD(jD[7],kD)+',' +mD(jD[8],kD)+',' +mD(jD[9],kD);document.cookie=iA+'FRQSTR='+Ha+uB(60*24*365);C=oD(1,j);C='&bls3='+C.substr(0,3)+oD(0,Ads_wid)+C.substr(3,1);document.cookie=iA+'WIDYMD='+jD[0]+uB(60*24*30);document.cookie=iA+'KIDYMD='+jD[1]+uB(60*24*30);C+='&bls4='+qD(j);document.cookie=iA+'VISKAM='+jD[5]+uB(20);document.cookie=iA+'VISWEB='+jD[6]+uB(20);if(kA)
C+='&uid=1';return C;}function uD(Fb,Hd)
{if(typeof(jD[Hd][''+Fb+''])!='undefined')
return parseInt(jD[Hd][''+Fb+''],10);else
return 0;}function vD(Fb,Hd,Uc,Ah)
{if(typeof(jD[Hd][''+Fb+''])!='undefined')
jD[Hd][''+Fb+''][0]=Uc;else
jD[Hd][''+Fb+'']=[Uc,Ah];}// Falk AdSolution - Copyright (c) 2004 by Falk eSolutions AG - All rights reserved
function lC(Sb,Tb)
{dC(1,'Select-Value',Tb);var s=0;var r=Sb.length;if(r==0)
return -1;while((s<r-1)&&(Tb>Sb[s][1]))
{Tb-=Sb[s][1];s++;}return Sb[s][0];}function mC(Ub,Vb,Wb)
{var s,Xb,Yb,Zb;dC(1,'---- CLOSE OLD PRIORITY','');dC(1,'share-sum of all successfully campaigns',Ub);dC(1,'free shares before this priority',Wb);if(Ub>Wb)
{Xb=Wb/Ub;for(s=Vb;s<uA.length;s++)
uA[s][1]*=Xb;Ub=Wb;}Wb-=Ub;dC(1,'free shares after this priority',Wb);return Wb;}function nC()
{dC(0,'campaign-filtering');var Ac,Bc,Cc,Dc,Ec;var Fc=-2;var Gc=KAS.length;var Wb=100;var Hc,j,Zb,Ic,Jc,Kc,Lc,Mc,Nc;var Ub;var Vb;uA=[];for (Hc=0;Hc<Gc;Hc++)
{Ec=((KAS[Hc][5]&2)>0);if(KAS[Hc][2]!=Fc)
{if(Fc!=-2)
Wb=mC(Ub,Vb,Wb);Fc=KAS[Hc][2];dC(1,'---- START NEW PRIORITY',Fc);Ub=0;Vb=uA.length;}dC(1,'<b>campaign '+KAS[Hc][0]+'</b>',KAS[Hc]);Ic=KAS[Hc][8];Jc=KAS[Hc][10];Kc=IAS[10];if((Kc-Jc)>0)
Ic=Ic*Kc/(Kc-Jc);Zb=KAS[Hc][1];if(Ic<=0)
Ic=Zb;Lc=(Zb/Ic-1)*2+1;if((Lc>10)||(Lc<0.1))
Lc=1;Mc=KAS[Hc][3];Zb=Zb*Lc*100/((Mc==0)?100:Mc);if(isNaN(Zb))
Zb=0;Dc=KAS[Hc][4];Ac=eD(Dc,0,KAS[Hc][0]);Cc=false;if(Dc.length>0)
{Cc=((Dc[0]==0)&&!((Dc[2]==0)&&(Dc[3]==1439)));Bc=(!Cc||cD(Dc[2],Dc[3]));if(Cc)
Zb=Zb*100/KAS[Hc][9];if(Ac&&!Bc&&!Ec)
bA+='9'+KAS[Hc][0]+'-';Ac=(Ac&&Bc);}if((KAS[Hc][5]&8)>0)
Zb=KAS[Hc][1];dC(1,'timetargeting,successful',(Cc)+','+(Bc));if(Ec&&Ac)
{dC(2,'<font color=#ff8000>testcase successful</font>');j=KAS[Hc][0];cA+=j+'-';sD(j,Hc);}else if(Ac)
{dC(2,'<font color=#008000>successful</font>');uA[uA.length]=[Hc,Zb,Cc,Zb];Ub+=Zb;}else
{dC(2,'<font color=#ff0000>failed</font>');}}Wb=mC(Ub,Vb,Wb);}function oC()
{nC();var Oc,Hc,s,Zb;var Gc=uA.length;var Pc=0;dC(0,'campaign-selection');for (Hc=0;Hc<Gc;Hc++)
{s=uA[Hc][0];Zb=uA[Hc][1];Oc=Math.round(Zb/uA[Hc][3]*10)-1;if(Oc>9)
Oc=9;if((Oc>0)&&(KAS[s][0]>0))
bA+=Oc+''+KAS[s][0]+'-';Pc+=Zb;dC(1,'Campaign,Chance,ShareActual,Share,ShareNew',KAS[s][0]+' ,'+KAS[s][3]+' ,'+KAS[s][8]+' ,'+KAS[s][1]+' ,'+Zb);}dC(1,'Chances',bA);return lC(uA,Pc*Math.random());}function pC(Hc,j)
{var Qc=[];var Rc=BAS.length;var Sc=((KAS[Hc][5]&1)>0);var Pc=0;var w,Zb,Tc,Uc,Vc,Wc;var Xc=true;for (w=0;w<Rc;w++)
{dC(1,'<b>Banner '+BAS[w][0]+'</b>',BAS[w]);strInhalt=BAS[w][21];Wc=((strInhalt.length<3)||(strInhalt.indexOf('#'+Ads_iid+'#')>-1));if(((Ads_xl>1)||(Ads_yl>1))&&((BAS[w][13]>1)||(BAS[w][14]>1)))
{Xc=((Ads_xl==BAS[w][13])&&(Ads_yl==BAS[w][14]));dC(1,'Bannersize',Xc);}if(Xc&&Wc&&eD(BAS[w][2],1,BAS[w][0]))
{Zb=BAS[w][1];dC(2,'<font color=#008000>successful</font></b>,Anteil:'+Zb+'<b>');Qc[Qc.length]=[w,Zb];Pc+=Zb;}else
{dC(2,'<font color=#ff0000>failed</font>');}}Rc=Qc.length;if(Sc)
{Uc=uD(j,2);if(Rc>0)
w=Qc[Uc%Rc][0];else
w=-1;}else
w=lC(Qc,Pc*Math.random());return w;}// Falk AdSolution - Copyright (c) 2004 by Falk eSolutions AG - All rights reserved
var qC=false;var rC;var sC;var tC=0;function uC(Yc)
{return bC(Yc.getHours(),2)+':'+bC(Yc.getMinutes(),2)+':'+bC(Yc.getSeconds(),2);}function vC(Yc)
{var Zc=Yc.getYear();if(Zc<1900)
Zc+=1900;return bC(Zc,4)+'-'+bC(Yc.getMonth()+1,2)+'-'+bC(Yc.getDate(),2);}function wC()
{if(qC)
return;var Ad,Bd,Cd,s,Dd;var Ed=new Date();var Fd=new Date();Fd.setTime(Ed-0+parseInt(Ads_T[9],10));Ad=jD[1].split('#');Bd=Ad.length-1;Cd=',';for(s=1;s<Bd;s++)
{Dd=Ad[s].split(':');Cd+=Dd[0]+',';}qC=true;rC=';keyword='+escape(Ads_wrd) +';user-domain='+Ads_T[5] +';user-ip='+Ads_T[6] +';url='+escape(window.location.href) +';referrer='+escape(document.referrer) +';accept-language='+escape(Ads_T[7]) +';accept-charset='+escape(Ads_T[8]) +';user-agent='+escape(navigator.userAgent) +';browser-name='+escape(navigator.appName) +';browser-version='+escape(navigator.appVersion) +';flash-version='+gC(0) +';user-day='+(Ed.getDay()==0?7:Ed.getDay()) +';user-time='+uC(Ed) +';user-date='+vC(Ed) +';server-day='+(Fd.getDay()==0?7:Fd.getDay()) +';server-time='+uC(Fd) +';server-date='+vC(Fd) +';campaigns='+Cd +';';if(navigator.appVersion.substring(0,1)>'3')
rC+='java='+(navigator.javaEnabled()?'1':'0') +';screen-width='+screen.width +';screen-height='+screen.height +';window-width='+(window.innerWidth?window.innerWidth:document.body.clientWidth) +';window-height='+(window.innerWidth?window.innerHeight:document.body.clientHeight) +';color-depth='+screen.colorDepth +';';dC(1,'Environment values',rC);}function xC(Gd,r,Fb,Hd,Id,Jd)
{var Kd;if((r>0)&&(Gd>0))
{Kd=((uD(Fb,Hd)<r));if((Kd?1:0)==Id)
return Id;sC[Jd]=Kd;}return 2;}function yC(Ld,Md,Nd,Id,Jd)
{var Kd;if(Ld.length>1)
{Kd=(Ld.indexOf('#'+Md+'#')!=-1);Kd=Nd>0?!Kd:Kd;if((Kd?1:0)==Id)
return Id;sC[Jd]=Kd;}return 2;}function zC(Ld,Nd,Id,Od,Jd)
{if(Ld=='')
return 2;var s,Ab,Pd,Qd,Rd,Sd,Td,Ud,Vd;var Wd='!"%&\'()*+,-./:;<=>?@[\\]^{|}~� ';var Kd=false;Ld=Ld.substr(1,Ld.length-2);var Dc=Ld.split('#');var r=Dc.length;if(r>0)
{if(Od)
{Ab='';Sd=Ads_wrd.length;for(s=0;s<Sd;s++)
{Rd=Ads_wrd.charAt(s);if(Wd.indexOf(Rd)!=-1)
Rd='#';Ab+=Rd;}Ab='#'+Ab.toLowerCase()+'#';Pd=Ab;}else
{Ab='#'+Ads_T[5]+'#';Pd='#'+Ads_T[6]+'#';}for(s=0;(s<r)&&(Kd==false);s++)
{Ud=Dc[s].toLowerCase();Td=false;if(Ud.substring(0,1)=='$')
{Ud=Ud.substring(1,Ud.length-1);Td=true;}Qd=false;Vd=Ab;if(Ud.substring(0,1)=='!')
{Ud=Ud.substring(1,Ud.length-1);Vd=Pd;Qd=true;}if(Od)
Ud='#'+Ud;if(!Qd)
Ud+='#';Kd=(Vd.indexOf(Ud)!=-1);if(Td&&Kd)
{Kd=false;s=r;}}Kd=Nd>0?!Kd:Kd;if((Kd?1:0)==Id)
return Id;sC[Jd]=Kd;}return 2;}function aD(Xd,Yd)
{var Zd=[];var Ae=0;var s,Be;var r=Xd.length;for(s=0;s<r;s++)
{Be=Xd[s];if(Be>=0)
{Zd[Ae]=Yd[Be];Ae++;}else if(Be==-2)
{Ae--;Zd[Ae-1]=(Zd[Ae-1]&&Zd[Ae]);}else if(Be==-4)
{Ae--;Zd[Ae-1]=(Zd[Ae-1]||Zd[Ae]);}else if(Be==-3)
Zd[Ae-1]=(!Zd[Ae-1]);}return Zd[Ae-1];}function bD(Dc,Ce,Nd,De,Ee,Id,Jd)
{var Kd,Lb,Fe,Ge,He,Ie,G,Je;var Ke,Le;var s=0;var r=Dc.length;var Yd=[];var Me=Ce.toLowerCase();for(s=0;s<r;s++)
{Lb=Dc[s][0];Fe=Dc[s][1];G=Dc[s][2];Je=Dc[s][3];dC(1,'Profile/Environment -> Name,WishedValue,Type,Operator',Lb+','+Fe+','+G+','+Je);Ke=Me.indexOf(';'+Lb+'=');if(Ke>-1)
{Le=Ce.indexOf(';',Ke+1);if(Le>Ke)
Ie=unescape(Ce.substring(Ke+2+Lb.length,Le));else
Ie='';if(G==5)
G=1;if(G==1)
Ge=0;else
Ge='';if((Je==9)||(Je==10))
{He=Fe.split(';');if(He.length==2)
{Fe=He[0];Ge=He[1];}else
Je=0;}if(G==1)
{Ie=parseFloat(Ie);Fe=parseFloat(Fe);Ge=parseFloat(Ge);}if((Je>5)&&(Je<9))
{Ie=Ie.toLowerCase();Fe=Fe.toLowerCase();}if(Je==0)
Kd=(Ie==Fe)
else if(Je==1)
Kd=(Ie!=Fe)
else if(Je==2)
Kd=(Ie<Fe)
else if(Je==3)
Kd=(Ie<=Fe)
else if(Je==4)
Kd=(Ie>Fe)
else if(Je==5)
Kd=(Ie>=Fe)
else if(Je==6)
Kd=(Ie.indexOf(Fe)>-1);else if(Je==7)
Kd=(Ie.indexOf(Fe)<0);else if(Je==8)
Kd=Ie.substr(0,Fe.length-1)==Fe;else if(Je==9)
Kd=((Ie>=Fe)&&(Ie<=Ge))
else if(Je==10)
Kd=((Ie<Fe)||(Ie>Ge))
}else
{Kd=false;}dC(1,'Profile/Environment -> result',Kd);if(De==2)
Yd[s]=Kd;else
{if((Kd&&(De==1))||(!Kd&&(De==0)))
s=r;}}if(De==2)
Kd=aD(Ee,Yd);Kd=Nd>0?!Kd:Kd;if((Kd?1:0)==Id)
return Id;sC[Jd]=Kd;return 2;}function cD(Ne,Oe)
{var Ed=new Date();var Fd=new Date();Fd.setTime(Ed-0+parseInt(Ads_T[9],10));var Pe=Fd.getHours()*60+Fd.getMinutes();if(Ne<Oe)
Kd=((Pe>=Ne)&&(Pe<=Oe));else
Kd=((Pe>=Ne)||(Pe<=Oe));return Kd;}function dD(Qe,Re)
{var r=Qe.length;var Se;if(typeof(Qe.Ads_klist)=='string')
Re+=Qe.Ads_klist+'#';for(Se=0;Se<r;Se++)
{try
{Re=dD(Qe.frames[Se],Re);}catch(objError) {}}return Re;}function eD(Dc,G,Fb)
{var Id=Dc[0];var Nd=Dc[1];var Kd,Te,Ue,Ve,We,Cd,Ad,Bd,s,Xe,Ye,Ze,Af;sC=[true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true];if(Dc.length==0)
return true;dC(1,'Targeting',Dc);if(((Id>0)||(G==1))&&!((Id==1)&&(Dc[2]==0)&&(Dc[3]==1439)))
{Kd=cD(Dc[2],Dc[3]);dC(1,'Time',Kd);if((Kd?1:0)==Id)
return Kd;sC[0]=Kd;}Te=xC(1,Dc[4],Fb,(G==0)?2:9,Id,1);dC(1,'Frequency (Max:'+Dc[4]+',actual:'+uD(Fb,(G==0)?2:9)+')',Te!=0);if(Te<2)
return Te==1;if(G==0)
{Te=xC(Dc[22]&1,IAS[4],Ads_wid,7,Id,12);dC(1,'Frequency (WebSite)',Te!=0);if(Te<2)
return Te==1;Te=xC(Dc[22]&2,IAS[6],Ads_nid,8,Id,13);dC(1,'Frequency (Network)',Te!=0);if(Te<2)
return Te==1;}Te=yC(Dc[6],Ads_T[0],Nd&1,Id,2);dC(1,'OS',Te!=0);if(Te<2)
return Te==1;Te=yC(Dc[7],Ads_T[1],Nd&2,Id,3);dC(1,'Browser',Te!=0);if(Te<2)
return Te==1;Te=yC(Dc[8],Ads_T[2],Nd&4,Id,4);dC(1,'Country',Te!=0);if(Te<2)
return Te==1;Te=yC(Dc[9],Ads_T[3],Nd&8,Id,5);dC(1,'Provider',Te!=0);if(Te<2)
return Te==1;Te=yC(Dc[26],Ads_T[12],Nd&1024,Id,16);dC(1,'DMA',Te!=0);if(Te<2)
return Te==1;if(Dc[10].length>1)
{Kd=((Dc[10].indexOf('#'+Ads_T[4]+'#')!=-1)||(Dc[10].indexOf('#%'+Ads_T[10]+'#')!=-1)||(Dc[10].indexOf('#$'+Ads_T[11]+'#')!=-1));if((Ads_nid==7)&&(Ads_T[4]<1)&&(Dc[10].indexOf('#$14658#')!=-1)) Kd=true;Kd=(Nd&16)>0?!Kd:Kd;dC(1,'Region',Kd);if(Fb==25067)
{gbolSUXX25067=false;if(Kd)
{gbolSUXX25067=true;gstrXarrTargetDaten=Dc[10]+'x'+Ads_T[4]+'x'+Ads_T[10]+'x'+Ads_T[11];}}if((Kd?1:0)==Id)
return Id;sC[6]=Kd;}Te=zC(Dc[11],Nd&32,Id,false,7);dC(1,'Domain',Te!=0);if(Te<2)
return Te==1;Te=zC(Dc[12],Nd&64,Id,true,8);dC(1,'Keyword',Te!=0);if(Te<2)
return Te==1;if(Dc[13].length>0)
{Te=bD(Dc[13],';'+Ads_prf+';',Nd&128,Dc[15],Dc[17],Id,9);dC(1,'Profile',Te!=0);if(Te<2)
return Te==1;}if(Dc[14].length>0)
{wC();Te=bD(Dc[14],rC,Nd&256,Dc[16],Dc[18],Id,10);dC(1,'Environment',Te!=0);if(Te<2)
return Te==1;}intBwdLevel=0;Ua=Dc[27];intBwdUser=jD[10];intBwdIP=Ads_T[13];if (Ua==1){fD();intBwdLevel=intBwdUser;}if (Ua==2){intBwdLevel=intBwdIP;}if (Ua==3){fD();intBwdLevel=((intBwdIP>intBwdUser)&&(intBwdUser!=0))?intBwdUser:intBwdIP;}if (Ua==4){fD();intBwdLevel=(intBwdIP>intBwdUser)?intBwdIP:intBwdUser;}if((Ua==5)&&(intBwdUser==intBwdIP))
{ fD();intBwdLevel=intBwdIP;}Te=yC(Dc[28],intBwdLevel,Nd&512,Id,11);dC(1,'Bandwidth',Te!=0);if(Te<2)
return Te==1;Af=Dc[23];if((G==0)&&(Af>0))
{Cd=Dc[24];if(Cd.length>2)
Cd=Cd.substring(1,Cd.length-1);Ad=Cd.split('#');Bd=Ad.length;Xe=-1;dC(1,'vor fngetklist','ok');strKList='#'+dD(top,'');dC(1,'nach fngetklist','ok');for(s=0;(s<Bd)&&(Xe<0);s++)
{Ye=(strKList.indexOf('#'+Ad[s]+'#')>-1);if((Ye?1:4)==Af)
Xe=0;if((Ye?3:2)==Af)
Xe=1;}if(Xe<0)
Xe=((Af==1)||(Af==4))?1:0;dC(1,'showed Camppaigns,In/Exclude',strKList+','+(Xe==1));if(Xe==Id)
return (Xe==1);sC[14]=(Xe==1);}s=Dc[25];if(s>0)
{Ye=IAS[8].indexOf('#'+s+':');if(Ye!=-1)
{Ye=IAS[8].indexOf(':',Ye);Ze=IAS[8].indexOf('#',Ye);Ye=IAS[8].substring(Ye+1,Ze);Ze=Ads_fcount[s];if(typeOf(Ze)=='undefined')
Ze=0;Kd=Ye>Ze;dC(1,'Family',Kd);if((Kd?1:0)==Id)
return Kd;sC[15]=Kd;}}if(Id!=2)
return (Id==0);else
return aD(Dc[19],sC);}function fD()
{if((tC==0)&&kA&&(document.cookie.toLowerCase().indexOf('bndlvl')==-1))
tC=1;}function gD()
{if(tC!=1)
return;if((gC(1)<6)||yA)
{dC(1,'Start BW-Test','Java');document.write('<applet codebase="'+tA[Ads_sec]+'/" code="bandwidth.class" id="bandwidth" name="bandwidth" width="0" height="0" mayscript="MAYSCRIPT"><param name="cbfunc" value="hD"></applet>');}else
{dC(1,'Start BW-Test','Flash');var Ra=window.location.hostname;document.write('<scr'+'ipt for="Ads_BWD" event="FSCommand(Df,Ef)" language="VBScript"> \n on error resume next \n call Ads_BWD_DoFSCommand(Df,Ef) \n </scr'+'ipt\>');document.write('<object id="Ads_BWD" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab" width="1" height="1">');document.write('<param name=movie value="'+tA[Ads_sec]+'/dat/dlv/bwdetect.swf?domain='+Ra+'&path='+tA[Ads_sec]+'"><param name=play value=true><param name=autoplay value=true>');document.write('<embed name="Ads_BWD" id="Ads_BWD" src="'+tA[Ads_sec]+'/dat/dlv/bwdetect.swf?domain='+Ra+'&path='+tA[Ads_sec]+'" play=true autoplay=true swLiveConnect=true width="1" height="1" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash">');document.write('</embed></object>');}tC=2;}function hD(Bf)
{var Cf=0;Bf*=8;document.cookie='BNDWDT='+Bf+uB(60*24*7);if(Bf==0)
Cf=0;else if(Bf<9)
Cf=1;else if(Bf<33)
Cf=2;else if(Bf<65)
Cf=3;else if(Bf<129)
Cf=4;else if(Bf<385)
Cf=5;else if(Bf<769)
Cf=6;else if(Bf<1501)
Cf=7;else if(Bf<3001)
Cf=8;else
Cf=9;document.cookie='BNDLVL='+Cf+uB(60*24*7);}function Ads_BWD_DoFSCommand(Df,Ef)
{hD(Ef/8);}function iD()
{var Ff=new Date();document.writeln('<scr'+'ipt language="Javascript"><!--');document.writeln('oA=new Date();');document.writeln('/'+'/--></scr'+'ipt><scr'+'ipt language="Javascript" src="'+tA[Ads_sec]+'/dat/dlv/aslprebwd.js?'+Ff.getTime()+'0"></scr'+'ipt>');}function Ads_PreBandwidth()
{var Gf=new Date();var Hf=Math.round((8026/((Gf.getTime()-oA.getTime()+1)/1000))/1024);dC(1,'Pre BW-Test',Hf);hD(Hf);oB();}