/*************************
JavaSript Library for Univar
Utility functions
************************/

 //Array helper function finds field ID
 //calling js sends the childNode and labelArray 
 //see; setRequiredAddressFields_js.resource
 
function getFieldIds(childNode,labelArray){
var childVal = childNode.nodeValue;
if(childVal){

   for(var jNode=0;jNode<labelArray.length;jNode++){ 
   		var labelMatch = labelArray[jNode];
      	var pos = childVal.indexOf(labelMatch);
   		if(pos > -1){
   		var htmlForAtt = childNode.parentNode.htmlFor;
   		return htmlForAtt;
   } 
   }
   }
}



//sandbox frame color
/*********************** 
To Do:
Lookup the color instead of hard code
**************************/

function getSandboxStatus(){
var u = document.domain;
var cpos = u.indexOf('cs');
if(cpos > -1){
//should be: #01DF3A = green, #F3F781 = yellow, #FF0000 = red
var sandcolor = "orange";
document.body.style.backgroundColor=sandcolor;
var appB = document.getElementById("AppBodyHeader");
var phB = document.getElementById("phHeader");
appB.style.backgroundColor=sandcolor;
phB.style.backgroundColor=sandcolor;
}
}
/******************************
Set default focus to none
Cancels out annoying calendar popup when page first loads
********************************/
 function setFocusOnLoad() {}
 
 //******************************
//Hide the Save and Send Update button
//Multi-Person Calendar Events
//******************************/
dojo.addOnLoad(function hideBtns(){
     var sMail = document.getElementsByName('sendEmail');
     if(sMail.length !=0){
     //hide button at top and bottom of form
      sMail[0].style.visibility="hidden";
      sMail[1].style.visibility="hidden";
    }

        });
 