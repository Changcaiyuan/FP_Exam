<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.exam" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"zh-CN\" lang=\"zh-CN\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>" + echo(examresult.examname) + " - " + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link type=\"text/css\" rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/exam.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery-ui/js/jquery-ui-1.9.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jform/jquery.form.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "popup/popup.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/exam.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/video.js\"></");
	ViewBuilder.Append("script>\r\n");

	if (examinfo.iscopy==1)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    if (window.Event)\r\n");
	ViewBuilder.Append("        function nocontextmenu(e) {\r\n");
	ViewBuilder.Append("        var ev = e ? e : window.event;\r\n");
	ViewBuilder.Append("        ev.cancelBubble = true\r\n");
	ViewBuilder.Append("        ev.returnValue = false;\r\n");
	ViewBuilder.Append("        if (ev.preventDefault) {\r\n");
	ViewBuilder.Append("            ev.preventDefault();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        if (ev.stopPropagation) {\r\n");
	ViewBuilder.Append("            ev.stopPropagation();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        return false;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function nocopy(e) {\r\n");
	ViewBuilder.Append("        var ev = e ? e : window.event;\r\n");
	ViewBuilder.Append("        ev.cancelBubble = true\r\n");
	ViewBuilder.Append("        ev.returnValue = false;\r\n");
	ViewBuilder.Append("        if (ev.preventDefault) {\r\n");
	ViewBuilder.Append("            ev.preventDefault();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        if (ev.stopPropagation) {\r\n");
	ViewBuilder.Append("            ev.stopPropagation();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        return false;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function norightclick(e) {\r\n");
	ViewBuilder.Append("        if (window.Event) {\r\n");
	ViewBuilder.Append("            if (e.which == 2 || e.which == 3)\r\n");
	ViewBuilder.Append("                return false;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else\r\n");
	ViewBuilder.Append("            if (event.button == 2 || event.button == 3) {\r\n");
	ViewBuilder.Append("                event.cancelBubble = true;\r\n");
	ViewBuilder.Append("                event.returnvalue = false;\r\n");
	ViewBuilder.Append("                return false;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    document.oncontextmenu = nocontextmenu; // for IE5+ \r\n");
	ViewBuilder.Append("    document.oncopy = nocopy;\r\n");
	ViewBuilder.Append("    document.onkeydown = function (event) //shield F5  //shift+F10 ctrl+R\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("        event = event ? event : (window.event ? window.event : null); // ie firefox\r\n");
	ViewBuilder.Append("        if (event.keyCode == 116 || (event.shiftKey && event.keyCode == 121) || (event.ctrlKey && event.keyCode == 82)) {\r\n");
	ViewBuilder.Append("            event.keyCode = 0;\r\n");
	ViewBuilder.Append("            event.cancelBubble = true;\r\n");
	ViewBuilder.Append("            event.returnValue = false;\r\n");
	ViewBuilder.Append("            if (event && event.preventDefault)\r\n");
	ViewBuilder.Append("                event.preventDefault();\r\n");
	ViewBuilder.Append("            else\r\n");
	ViewBuilder.Append("                window.event.returnValue = false;\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    function nice() {\r\n");
	ViewBuilder.Append("        window.niceObj = $(\".rnlt2\").niceScroll({ cursorcolor: \"#6E737B\", cursoropacitymin: 1, cursorwidth: \"6px\", cursorborder: \"none\", cursorborderradius: \"4px\" });\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function niceback(b) {\r\n");
	ViewBuilder.Append("        if (!window.ascrail2000) return;\r\n");
	ViewBuilder.Append("        if (b) {\r\n");
	ViewBuilder.Append("            window.ascrail2000.css({\r\n");
	ViewBuilder.Append("                \"position\": \"fixed\",\r\n");
	ViewBuilder.Append("                \"z-index\": '9999',\r\n");
	ViewBuilder.Append("                'top': '100px'\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        } else {\r\n");
	ViewBuilder.Append("            window.ascrail2000.css({\r\n");
	ViewBuilder.Append("                \"position\": \"absolute\",\r\n");
	ViewBuilder.Append("                \"z-index\": '9999',\r\n");
	ViewBuilder.Append("                'top': '170px'\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        return true;\r\n");
	ViewBuilder.Append("    }\r\n");

	if (examinfo.channelid==4)
	{

	if (browser=="ie6"||browser=="ie7"||browser=="ie8")
	{
	ViewBuilder.Append("    var isWindowFocus = true;\r\n");
	ViewBuilder.Append("    function checkTable() {\r\n");
	ViewBuilder.Append("        if (!isWindowFocus && isNeedSkip == false) {\r\n");
	ViewBuilder.Append("            examOut();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        setTimeout(\"checkTable()\", 1000);\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    checkTable();\r\n");
	}
	else
	{
	ViewBuilder.Append("    window.onblur = function () {\r\n");
	ViewBuilder.Append("        examOut();\r\n");
	ViewBuilder.Append("    };\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var ipt = $(\"label input\");\r\n");
	ViewBuilder.Append("        ipt.parent().removeClass(\"sd\");\r\n");
	ViewBuilder.Append("        ipt.filter(\":checked\").parent().addClass(\"sd\");\r\n");
	ViewBuilder.Append("        nice();\r\n");
	ViewBuilder.Append("        window.ascrail2000 = $('#ascrail2000');\r\n");
	ViewBuilder.Append("        $('.rnav').mouseover(function () {\r\n");
	ViewBuilder.Append("            niceback($('.hbx1').hasClass(\"fixed\"));\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");

	if (examinfo.iscopy==1)
	{
	ViewBuilder.Append("    document.oncontextmenu = new Function('event.returnValue=false;');\r\n");
	ViewBuilder.Append("    document.onselectstart = new Function('event.returnValue=false;');\r\n");
	}//end if
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    (window != top) && $(function () {\r\n");
	ViewBuilder.Append("        var rnav = $(\".rnav\");\r\n");
	ViewBuilder.Append("        $(window.parent).bind(\"scroll\", function () {\r\n");
	ViewBuilder.Append("            var tpd = $(parent.document.getElementById('frameContent')).offset().top;\r\n");
	ViewBuilder.Append("            rnav.css({\r\n");
	ViewBuilder.Append("                top: Math.max($(this).scrollTop() - tpd + 10, 52) + \"px\"\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        }).scroll();\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<noscript>\r\n");
	ViewBuilder.Append("   <iframe src=\"*\"></iframe>\r\n");
	ViewBuilder.Append("</noscript>\r\n");
	ViewBuilder.Append("<div class=\"hbx1\">\r\n");
	ViewBuilder.Append("  <div class=\"hbx2\">\r\n");
	ViewBuilder.Append("    <div class=\"hbx3\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/top.jpg\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"hbx4\">\r\n");
	ViewBuilder.Append("      <div class=\"fr\"><a href=\"javascript:;\" class=\"btnq1\" onclick=\"extemporeSave()\">保存答案</a><a href=\"#\" class=\"btnq2\" onclick=\"submitExam();return false;\">我要交卷</a> </div>\r\n");
	ViewBuilder.Append("      <span class=\"theTime\" id=\"thetime\">" + echo(thetime) + "</span>\r\n");

	if (examresult.islimit==1)
	{
	ViewBuilder.Append("      <span class=\"line1\"></span><span class=\"write\">考试时间：" + echo(examresult.starttime,"yyyy-MM-dd HH:mm") + "至" + echo(examresult.endtime,"yyyy-MM-dd HH:mm") + "</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("      <span class=\"line1\"></span><span class=\"write\">答题时间：" + echo(examresult.examtime) + "分钟</span>\r\n");
	}//end if
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"hbx2\">\r\n");
	ViewBuilder.Append("<div class=\"rnav\">\r\n");
	ViewBuilder.Append("    <div class=\"rnavhd\">答题卡</div>\r\n");
	ViewBuilder.Append("    <div class=\"rnavct\">\r\n");
	ViewBuilder.Append("      <ul class=\"rnlt1 fc\">\r\n");
	ViewBuilder.Append("        <li><span class=\"bg1\"></span>已答题</li>\r\n");
	ViewBuilder.Append("        <li><span class=\"bg3\"></span>未答题</li>\r\n");
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      <ul class=\"rnlt2 fc\" tabindex=\"5000\" style=\"overflow-y: hidden; outline: none;\">\r\n");
	int en = 0;

	loop__id=0;
	foreach(int examtopic in questionlist)
	{
	loop__id++;
	 en = en+1;
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg3\">" + echo(en) + "</a></li>\r\n");
	}//end loop
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("          $(function () {\r\n");
	ViewBuilder.Append("              $('.rnlt2 a').click(function () {\r\n");
	ViewBuilder.Append("                  var top = $($(this).attr('href')).offset().top+120;\r\n");
	ViewBuilder.Append("                  $(window).scrollTop(top);\r\n");
	ViewBuilder.Append("                  return false;\r\n");
	ViewBuilder.Append("              });\r\n");
	ViewBuilder.Append("          });\r\n");
	ViewBuilder.Append("	</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"rnavft\"></div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"wp wpa\">\r\n");
	ViewBuilder.Append("  <div class=\"wp2\">\r\n");
	ViewBuilder.Append("    <div class=\"wp3\">\r\n");
	ViewBuilder.Append("      <div class=\"wp4 wp4_none\">\r\n");
	ViewBuilder.Append("        <h1 class=\"qtTitle\">" + echo(examresult.examname) + "\r\n");

	if (examinfo.papers>1)
	{
	ViewBuilder.Append("            " + GetPaper(examresult.paper).ToString() + "\r\n");
	}//end if
	ViewBuilder.Append("        </h1>\r\n");
	ViewBuilder.Append("        <div class=\"bx1 pd1m mb20\">\r\n");
	ViewBuilder.Append("          <div>\r\n");
	ViewBuilder.Append("            <table class=\"tab1\">\r\n");
	ViewBuilder.Append("              <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td>考生姓名：\r\n");

	if (user.realname!="")
	{
	ViewBuilder.Append("" + echo(user.realname) + "\r\n");
	}
	else
	{
	ViewBuilder.Append("" + echo(user.username) + "\r\n");
	}//end if
	ViewBuilder.Append("</td>\r\n");
	ViewBuilder.Append("                  <td>试卷总分：" + echo(examresult.total) + "分</td>\r\n");
	ViewBuilder.Append("                  <td>及格分数：" + echo(examresult.passmark) + "分</td>\r\n");
	ViewBuilder.Append("                  <td>答题时间：" + echo(examresult.examtime) + "分钟</td>\r\n");
	ViewBuilder.Append("                  <td>试题总数：" + echo(examresult.questions) + "题</td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("              </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");

	if (examinfo.isvideo==1)
	{
	ViewBuilder.Append("        <div class=\"fc box\">\r\n");
	ViewBuilder.Append("           <div style=\"margin-left:250px;\">\r\n");
	ViewBuilder.Append("            <div class=\"topic_choose\" id=\"topic_video\">\r\n");
	ViewBuilder.Append("             <div id=\"getphoto_state\" style=\"color:white;position:absolute;top:10px;left:20px;\"></div>\r\n");
	ViewBuilder.Append("             <canvas id=\"getphoto_canvas\" style=\"display:none;\" width=\"250\" height=\"230\"></canvas>\r\n");
	ViewBuilder.Append("             <video id=\"getphoto_video\" width=\"250\" height=\"230\" style=\"background-color:black\" autoplay=\"autoplay\"></video>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("           </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	}//end if
	ViewBuilder.Append("        <form id=\"testProcessForm\" name=\"testProcessForm\" action=\"exampost.aspx\" method=\"post\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"resultid\" name=\"resultid\" value=\"" + echo(resultid) + "\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"starttime\" value=\"" + echo(examresult.starttime) + "\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"utime\" name=\"utime\" value=\"0\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"autotime\" value=\"" + echo(examconfig.autotime) + "\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"examtime\" value=\"" + echo(examresult.examtime) + "\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"isexam\" value=\"1\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"isvideo\" value=\"" + echo(examinfo.isvideo) + "\">\r\n");
	int topicnum = 0;

	loop__id=0;
	foreach(ExamResultTopic examtopic in examtopiclist)
	{
	loop__id++;

	if (examtopic.questions>0)
	{
	ViewBuilder.Append("            <input type=\"hidden\" id=\"qidlist_" + echo(examtopic.id) + "\" name=\"qidlist_" + echo(examtopic.id) + "\" value=\"" + echo(examtopic.questionlist) + "\">\r\n");
	ViewBuilder.Append("            <div id=\"1\" class=\"tit1 pd1\"></div>\r\n");
	ViewBuilder.Append("            <div class=\"tit1 pd1\">" + echo(examtopic.title) + "<span class=\"ft3\">(共" + echo(examtopic.questions) + "题，每题" + echo(examtopic.perscore) + "分，共" + echo((examtopic.questions*examtopic.perscore)) + "分)</span></div>\r\n");

	loop__id=0;
	foreach(ExamQuestion item in GetQuestionList(examtopic))
	{
	loop__id++;
	 topicnum = topicnum+1;

	if (item.type==1)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + Option(item.option,item.ascount,item.optionlist).ToString() + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 6; i++){

	if (i<=item.ascount-1)
	{
	ViewBuilder.Append("                  <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" \r\n");

	if (answerarr[i]==item.useranswer)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                 </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==2)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "\r\n");

	if (examtopic.type==6)
	{
	ViewBuilder.Append("（多选）\r\n");
	}//end if
	ViewBuilder.Append("</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + Option(item.option,item.ascount,item.optionlist).ToString() + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 6; i++){

	if (i<=item.ascount-1)
	{
	ViewBuilder.Append("                  <label><input type=\"checkbox\" id=\"_" + echo(topicnum) + "\" \r\n");

	if (ischecked(answerarr[i],item.useranswer))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==3)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");

	if (item.useranswer=="Y")
	{
	ViewBuilder.Append("                 <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" checked=\"checked\" value=\"Y\">正确</label>\r\n");
	}
	else
	{
	ViewBuilder.Append("                 <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"Y\">正确</label>\r\n");
	}//end if

	if (item.useranswer=="N")
	{
	ViewBuilder.Append("                 <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" checked=\"checked\" value=\"N\">错误</label>\r\n");
	}
	else
	{
	ViewBuilder.Append("                 <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"N\">错误</label>\r\n");
	}//end if
	ViewBuilder.Append("                 </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==4)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + FmAnswer(item.title,item.id,item.useranswer,topicnum).ToString() + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==5)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">填写答案</div>\r\n");
	ViewBuilder.Append("                <textarea class=\"jdt\" rows=\"5\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\">" + echo(item.useranswer) + "</textarea>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==6)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p><img src=\"" + GetTxtImg(item.title,item.id).ToString() + "\"></p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">填写答案</div>\r\n");
	ViewBuilder.Append("                <textarea class=\"jdt\" rows=\"5\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\">" + echo(item.useranswer) + "</textarea>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	}//end if
	}//end loop
	}//end loop
	ViewBuilder.Append("        <br>\r\n");
	ViewBuilder.Append("        <div class=\"ta_c mb10\"><a href=\"javascript:void()\" class=\"btnq3\" onclick=\"submitExam();return false;\">我要交卷</a></div>\r\n");
	ViewBuilder.Append("        <div style=\"clear:both;\"></div>\r\n");
	ViewBuilder.Append("      </form>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(document).ready(function () {\r\n");
	ViewBuilder.Append("            var ipt = $(\"label input\");\r\n");
	ViewBuilder.Append("            ipt.parent().removeClass(\"sd\");\r\n");
	ViewBuilder.Append("            ipt.filter(\":checked\").parent().addClass(\"sd\");\r\n");
	ViewBuilder.Append("            ipt.each(function () {\r\n");
	ViewBuilder.Append("                var fkid = $(this).attr(\"id\");\r\n");
	ViewBuilder.Append("                var ids = new Array();\r\n");
	ViewBuilder.Append("                $(\"input[id='\" + fkid + \"']\").each(function () {\r\n");
	ViewBuilder.Append("                    if ($(this).attr('checked'))\r\n");
	ViewBuilder.Append("                        ids.push($(this).val());\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("                if (ids.length > 0) {\r\n");
	ViewBuilder.Append("                    if ($(\"#fc\" + fkid).hasClass(\"bg1\") == false) {\r\n");
	ViewBuilder.Append("                        $(\"#fc\" + fkid).removeClass(\"bg3\");\r\n");
	ViewBuilder.Append("                        $(\"#fc\" + fkid).addClass(\"bg1\");\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                } \r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</body>\r\n");

	if (examinfo.channelid==4)
	{

	if (browser=="ie6"||browser=="ie7"||browser=="ie8")
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("	document.body.onfocusin = function() {isWindowFocus = true;};\r\n");
	ViewBuilder.Append("	document.body.onfocusout = function() {isWindowFocus = false;};\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
