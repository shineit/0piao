updatePreviewLinks=function(){
var _1=window.location.toString();
if(_1.match("preview=Y$")==null){
return;
}
$("a").each(function(_2){
var _3=window.location.host;
var _4=$(this).attr("href");
if((_4.match("https?://"+_3)!=null||_4.charAt(0)=="/")&&_4.match("#")==null){
if(_4.match("^/download/i")!=null){
return;
}
if(_4.match("\\?")==null){
$(this).attr("href",_4+"?preview=Y");
}else{
$(this).attr("href",_4+";preview=Y");
}
}
});
editLoc=_1.replace("preview=Y","");
var _5=document.createElement("a");
_5.href=editLoc;
_5.className="editmode";
_5.appendChild(document.createTextNode("Return to edit mode"));
$("#pageOffset").before(_5);
};
$(document).ready(function(){
updatePreviewLinks();
});

