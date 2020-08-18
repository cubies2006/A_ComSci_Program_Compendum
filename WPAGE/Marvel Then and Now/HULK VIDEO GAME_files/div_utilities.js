// div functions

ns4 = (document.layers)? true:false;
ie4 = (document.all && !document.getElementById)? true:false;
ie5 = (document.all && document.getElementById)? true:false;
ns6 = (!document.all && document.getElementById)? true:false;

function cursorHand(id) 	{ if (id) id.style.cursor = 'hand'; }
function cursorDefault(id)	{ if (id) id.style.cursor = 'default'; }

function getDiv(id) {
	if (ns4) {
		return document.layers[id];
	} else if (ie4) {
		return document.all[id];
	} else {	// ie5 || ie6
		return document.getElementById(id);
	}
}

function getDivStyle(id) {
	if (ns4) {
		return document.layers[id];
	} else if (ie4) {
		return document.all[id].style;
	} else {	// ie5 || ie6
		return document.getElementById(id).style;
	}
}

function divExists(id) {
	if (ns4) {
		return (document.layers[id]!=null);
	} else if (ie4) {
		return (document.all[id]!=null);
	} else {	// ie5 || ie6
		return (document.getElementById(id)!=null);
	}
}

function showDiv(id) {
	if (ns4) {
		document.layers[id].visibility = "show";
	} else if (ie4) {
		document.all[id].style.visibility = "visible";
	} else {	// ie5 || ie6
		document.getElementById(id).style.visibility = "visible";
	}
}

function hideDiv(id) {
	if (ns4) {
		document.layers[id].visibility = "hide";
	} else if (ie4) {
		document.all[id].style.visibility = "hidden";
	} else {	// ie5 || ie6
		document.getElementById(id).style.visibility = "hidden";
	}
}

function renderDiv(id) {
	// currently only works for ie
	if (ie4) {
		document.all[id].style.display = "block";
	} else if (ie5) {
		document.getElementById(id).style.display = "block";
	}
}

function unrenderDiv(id) {
	// currently only works for ie
	if (ie4) {
		document.all[id].style.display = "none";
	} else if (ie5) {
		document.getElementById(id).style.display = "none";
	}
}

function moveDivXY(id,x,y) {
	if (ns4) {
		document.layers[id].left = parseInt(x) + "px";
		document.layers[id].top = parseInt(y) + "px";
	} else if (ie4) {
		document.all[id].style.left = parseInt(x) + "px";
		document.all[id].style.top = parseInt(y) + "px";
	} else {	// ie5 || ie6
		document.getElementById(id).style.left = parseInt(x) + "px";
		document.getElementById(id).style.top = parseInt(y) + "px";
	}
}

function moveDiv(src,dst) {
//	alert("("+getDiv(dst).offsetLeft+","+getDiv(dst).offsetTop+"); ("+parseInt(getDivStyle(dst).left)+","+parseInt(getDivStyle(dst).top)+")");
	
	newLeft = getDiv(dst).offsetLeft;
	newTop = getDiv(dst).offsetTop;
	
	if (ns4 || ns6)	{	// for netscape, need to add 'left' and 'top' style values to the offsets
		addLeft = parseInt(getDivStyle(dst).left);
		addTop = parseInt(getDivStyle(dst).top);

		if (!isNaN(addLeft)) newLeft += addLeft;
 		if (!isNaN(addTop)) newTop += addTop;
	}
	
	moveDivXY(src, newLeft, newTop);
}

function resizeDiv(id,w,h) {
	if (ns4) {
		document.layers[id].width = parseInt(w) + "px";
		document.layers[id].height = parseInt(h) + "px";
	} else if (ie4) {
		document.all[id].style.width = parseInt(w) + "px";
		document.all[id].style.height = parseInt(h) + "px";
	} else {	// ie5 || ie6
		document.getElementById(id).style.width = parseInt(w) + "px";
		document.getElementById(id).style.height = parseInt(h) + "px";
	}
}
