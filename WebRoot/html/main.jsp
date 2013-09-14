<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/common/jsp/importtaglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>三一集团开发平台</title>
<link href="stylesheet/index1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../include/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/ajaxtabs.js"></script>
<script type="text/javascript" src="../include/js/disablebaskspace.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/html/js/dialog/lhgdialog.js?self=false"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/html/js/dialog/lan/lhgdialog_<pg:locale/>.js"></script>
</head>
<body>
<div class="index_contain">
    <div  class="side_bar">
    <div class="title_right"><img src="images/function.jpg" width="193" height="26" /></div>
    <div class="links">
      <ul id="custommenus">
        
      </ul>
    </div>
    <div class="link_ad">
      <ul>
        <li><img src="images/competition.jpg" /></li>
        <li><img src="images/recommend.jpg" /></li>
        <li><img src="images/advice.jpg" /></li>
      </ul>
    </div>
  </div>
  <div  class="main_contain">
    <div class="box_1" >
      <div  class="content_top">
        <div class="right_top"></div>
        <div class="left_top"></div>
        <div class="more_info"><a href="#"><img src="images/more.gif" border="0" /></a></div>
        新闻公告</div>
      <div class="box_content">
        <div class="right_content"></div>
        <div class="left_content"></div>
        <div class="content_box">
          <div class="left_ad">
          <div id="petsdivcontainer2" style="width:300px; height:180px;overflow:hidden;"></div>
           <div id="pettabs2"  class="num_ad">
            <ul>
              <li><a href="ad/num_ad1.html" rel="#iframe" class="selected">1</a></li>
              <li><a href="ad/num_ad2.html" rel="#iframe">2</a></li>
              <li><a href="ad/num_ad3.html" rel="#iframe">3</a></li>
              <li><a href="ad/num_ad4.html" rel="#iframe">4</a></li>
              <li><a href="ad/num_ad5.html" rel="#iframe">5</a></li>
            </ul>
          </div>
          </div>
          <div class="module_contain">
            <ul>
              <li>
                <div class="date">2010-12-12</div>
                <a href="#">5月27号新增岗位 58 个，包括物流管理等</a></li>
              <li>
                <div class="date">2010-12-12</div>
                <a href="#">关于绩效自评提交后汇报关系发生变化</a></li>
              <li>
                <div class="date">2010-12-12</div>
                <a href="vote.html">3月21日HRM系统beta1.2.2版更新公告</a></li>
              <li>
                <div class="date">2010-12-12</div>
                <a href="#">5月18日HRM系统beta2.1.0版更新公告</a></li>
              <li>
                <div class="date">2010-12-12</div>
                <a href="#">关于绩效自评提交后汇报关系发生变化</a></li>
              <li>
                <div class="date">2010-12-12</div>
                <a href="#">3月21日HRM系统beta1.2.2版更新公告</a></li>
              <li>
                <div class="date">2010-12-12</div>
                <a href="#">3月21日HRM系统beta1.2.2版更新公告</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div  class="content_bottom">
        <div class="right_bottom"></div>
        <div class="left_bottom"></div>
      </div>
    </div>
    <div class="box_1">
      <div  class="content_top">
        <div class="right_top"></div>
        <div class="left_top"></div>
        我的待办<span class="Pending">( <span class="pending_num">25</span>条 )</span> </div>
      <div class="box_content" style="padding:0px;">
        <div class="right_content"></div>
        <div class="left_content"></div>
        <div class="tabs">
          <div id="pettabs" class="indentmenu">
            <ul>
              <li><a href="ad/pending2.html" rel="#iframe">绩效管理<span class="num">(12)</span></a></li>
              <li><a href="ad/pending3.html" rel="#iframe">辅导管理<span class="num">(5)</span></a></li>
              <li><a href="ad/pending5.html" rel="#iframe">福利关怀<span class="num">(1)</span></a></li>
              <li><a href="ad/pending6.html" rel="#iframe">人事事务<span class="num">(0)</span></a></li>
              <li><a href="ad/pending7.html" rel="#iframe">系统消息<span class="num">(2)</span></a></li>
            </ul>
          </div>
          <div id="petsdivcontainer"></div>
        </div>
        <script type="text/javascript">

var mypets=new ddajaxtabs("pettabs", "petsdivcontainer",200)
mypets.setpersist(false)
mypets.setselectedClassTarget("link")
mypets.init()

var mypets=new ddajaxtabs("pettabs2", "petsdivcontainer2",200)
mypets.setpersist(false)
mypets.setselectedClassTarget("link")
mypets.init();
			
			
				
    $(document).ready(function() {
		var url =  '${pageContext.request.contextPath}/desktop/getCustomMenus.page';
		var urltype = '2';
		$.getJSON(url, { urltype:urltype },
            function(data) {   
				 if(data != null)
				{
					var comm = "";
					for (var i=0; i<data.length; i++) {
						var d = data[i];
						comm = comm +" <li><a href=\"javascript:void(0)\" onclick=\"opencustom('"+d.pathU+"',"+d.desktop_width+","+d.desktop_height+",'"+d.name+"','"+urltype+"')\"><img src=\""+d.imageUrl+"\" width=\"45\" height=\"45\" /><br />"+d.name+"</a></li>";
						
					}
					$("#custommenus").empty(); 
             		$("#custommenus").append(comm); 
				}
               
            });
		
	 });

	 function opencustom(url,width,height,title,urltype)
	 {
		 if(urltype != '2')
			$.dialog({ title:title,width:width,height:height, content:'url:'+url,lock: true}); 	
		 else
		 {
			 top.location.href = url;
		 }
	 }


</script>
      </div>
      <div  class="content_bottom">
        <div class="right_bottom2"></div>
        <div class="left_bottom2"></div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
