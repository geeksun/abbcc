<%@ page contentType="text/html; charset=UTF-8" %> 
<HTML><HEAD>

<script>
var fg = true;
function f(){
   if(fg){
       document.getElementById("a").style.display="block";
       document.getElementById("b").value="隐藏";
   }else{
       document.getElementById("a").style.display="none";
       document.getElementById("b").value="显示";
   }
   fg = !fg;
}
</script>
<BODY>
<div id="a" style="display:none">ssssssssssssssssssssssssssssssssssssssssssssssss</div>
</br></br>

<input type=button id="b" onclick="f()" value="显示">
</BODY></HTML>
