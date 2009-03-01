	if (typeof fcolor == 'undefined') { var fcolor = "FFFFE1";}
	if (typeof backcolor == 'undefined') { var backcolor = "#CDCDCD";}
	if (typeof textcolor == 'undefined') { var textcolor = "#000000";}
	if (typeof capcolor == 'undefined') { var capcolor = "#FFFFFF";}
	if (typeof closecolor == 'undefined') { var closecolor = "#9999FF";}
	if (typeof border == 'undefined') { var border = "1";}
	if (typeof offsetx == 'undefined') { var offsetx = 10;}
	if (typeof offsety == 'undefined') { var offsety = 10;}
	


ns4 = (document.layers)? true:false
ie4 = (document.all)? true:false


if (ie4) {
	if (navigator.userAgent.indexOf('MSIE 5')>0 || navigator.userAgent.indexOf('MSIE 6')>0) {
		ie5 = true;
	} else {
		ie5 = false; }
} else {
	ie5 = false;
}

var x = 0;
var y = 0;
var snow = 0;
var sw = 0;
var cnt = 0;
var dir = 1;
var tr=1;
if ( (ns4) || (ie4) ) {
	if (ns4) over = document.overDiv
	if (ie4) over = overDiv.style
	document.onmousemove = mouseMove
	if (ns4) document.captureEvents(Event.MOUSEMOVE)
}




function drs(text) {
	dts(1,text);
}



function nd() {
	if ( cnt >= 1 ) { sw = 0 };
	if ( (ns4) || (ie4) ) {
		if ( sw == 0 ) {
			snow = 0;
			hideObject(over);
		} else {
			cnt++;
		}
	}
}




function dts(d,text) {
	txt = "<TABLE BORDER=0 CELLPADDING="+border+" CELLSPACING=0 BGCOLOR=\""+backcolor+"\"><TR><TD bgcolor=000000><TABLE WIDTH=100% BORDER=0 CELLPADDING=2 CELLSPACING=0 BGCOLOR=\""+fcolor+"\"><TR><TD CLASS=P1 bgcolor=FFFFE1><FONT FACE=\"ËÎÌו\" COLOR=\""+textcolor+"\">"+text+"</FONT></TD></TR></TABLE></TD></TR></TABLE>"
	layerWrite(txt);
	dir = d;
	disp();
}



function disp() {
	if ( (ns4) || (ie4) ) {
		if (snow == 0) 	{
			if (dir == 2) { 
				moveTo(over,x+offsetx-(width/2),y+offsety);
			}
			if (dir == 1) { 
				moveTo(over,x+offsetx,y+offsety);
			}
			if (dir == 0) { 
				moveTo(over,x-offsetx-width,y+offsety);
			}
			showObject(over);
			snow = 1;
		}
	}

}

function mouseMove(e) {
	if (ns4) {x=e.pageX; y=e.pageY;}
	if (ie4) {x=event.x; y=event.y;}
	if (ie5) {x=event.x+document.body.scrollLeft; y=event.y+document.body.scrollTop;}
	if (snow) {
		if (dir == 2) { 
			moveTo(over,x+offsetx-(width/2),y+offsety);
		}
		if (dir == 1) { 
			moveTo(over,x+offsetx,y+offsety);
		}
		if (dir == 0) { 
			moveTo(over,x-offsetx-width,y+offsety);
		}
	}
}

function cClick() {
	hideObject(over);
	sw=0;
}


function layerWrite(txt) {
        if (ns4) {
                var lyr = document.overDiv.document
                lyr.write(txt)
                lyr.close()
        }
        else if (ie4) document.all["overDiv"].innerHTML = txt
		if (tr) {  }
}

function showObject(obj) {
        if (ns4) obj.visibility = "show"
        else if (ie4) obj.visibility = "visible"
}

function hideObject(obj) {
        if (ns4) obj.visibility = "hide"
        else if (ie4) obj.visibility = "hidden"
}

function moveTo(obj,xL,yL) {
        obj.left = xL
        obj.top = yL
}