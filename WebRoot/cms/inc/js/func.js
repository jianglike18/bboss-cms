/*/////////////////////////////////////////////////////////////////
????????????????????????????????????????????????????????????????

////////////////////////////////////////////////////////////////*/
function openWin(url,swidth,sheight){
     var w = showModalDialog(url,window,"dialogWidth:"+swidth+"px;dialogHeight:"+sheight+"px;help:no;scroll:auto;status:no");
	 return w;
}

function openDialog(url,swidth,sheight,docname){
     
     $.dialog({ title:"编辑文档-"+docname,width:swidth,height:sheight, content:'url:'+url,lock: true,maxState:true});
	
}

function openDialogNoargs(url,docname){
     
     $.dialog({ title:"编辑文档-"+docname,width:500,height:600, content:'url:'+url,lock: true,maxState:true});
	
}
 	
function openWinCommon(url){
     window.open(url,"perspective_content");
}

function isnum()
{
  var k = window.event.keyCode;
  if (k < 48 || k > 57){
     alert("?????????")
     window.event.keyCode = 0 ;}
}

function checkFileName(fileName) {
    if (fileName.indexOf("/") != -1 || fileName.indexOf("\\") != -1 
    || fileName.indexOf(":") != -1 || fileName.indexOf("*") != -1 
    || fileName.indexOf("?") != -1 || fileName.indexOf("\"") != -1 
    || fileName.indexOf("<") != -1 || fileName.indexOf(">") != -1 
    || fileName.indexOf("|") != -1) {
        alert("?????????\\/:*?\"<>|");
        return false;
    }
    return true;
}


function viewDoc(docId,form1,target1){
	form1.action = "./../docManage/previewPubDocHandle.jsp?docId="+docId;
	form1.target = target1;
	form1.submit();
}

function high(ob){
	ob.bgColor="#E9EDF3";
}
function unhigh(ob){
	ob.bgColor="#ffffff";
}	
function checkAll(totalCheck,checkName){	//???????
	var selectAll = document.getElementsByName(totalCheck);
	var o = document.getElementsByName(checkName);
	if(selectAll[0].checked==true){
		for (var i=0; i<o.length; i++){
	      if(!o[i].disabled){
	      		o[i].checked=true;
	      }
		}
	}else{
		  for (var i=0; i<o.length; i++){
	   	  	 o[i].checked=false;
	   	  }
	}
}
//???????
function checkOne(totalCheck,checkName){
	var selectAll = document.getElementsByName(totalCheck);
	var o = document.getElementsByName(checkName);
	var cbs = true;
	for (var i=0;i<o.length;i++){
		if(!o[i].disabled){
			if (o[i].checked==false){
				cbs=false;
			}
		}
	}
	if(cbs){
		selectAll[0].checked=true;
	}else{
		selectAll[0].checked=false;
	}
}		
//???????
function haveSelect(elName){
	var isSelect = false;
	var ch = document.getElementsByName(elName);
	for (var i=0;i<ch.length;i++) {
		if (ch[i].checked){
			isSelect=true;
			break;
		}
	}
	return isSelect;
}	

//静态分页置标

	function setPageTagNone(eWebEditor){
		var ewebeditor =  document.getElementById(eWebEditor).contentWindow.document.getElementById("eWebEditor").contentWindow;
		var arPageTags = ewebeditor.document.all("_CMSPage");
		if(arPageTags == null)return;
		if(arPageTags.length){
			for(var i =arPageTags.length-1; i>=0; i--){
				var objPageTag = arPageTags[i];
				if(objPageTag == null)continue;

				var pageTag = ewebeditor.document.createElement("CMS_PAGE_SEPARATOR");		
				//pageTag.innerHTML = "TRS静态分页置标";
				objPageTag.replaceNode(pageTag);
			}
		}else{
			var pageTag =ewebeditor.document.createElement("CMS_PAGE_SEPARATOR");		
			//pageTag.innerHTML = "TRS静态分页置标";
			arPageTags.replaceNode(pageTag);
		}

	}
	
	// 替换特殊字符
	function ContentHTMLEncode1(text){		       
		text = text.replace(/&/g, "&amp;") ;
		text = text.replace(/"/g, "&quot;") ;
		text = text.replace(/</g, "&lt;") ;
		text = text.replace(/>/g, "&gt;") ;
		text = text.replace(/'/g, "&#39;") ;
		return text;
	}