<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${posts.postsname}</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/viewAticle.css">
</head>
<body>
<div class="main">
    <div class="topbar">
        <div class="wrap">
            <div class="container topbarswitch cf">
                <div class="topbarsns left cf" style="display: none;">
                    <a href="" target="_blank" class="topbarsns_feed" title="订阅Rss">RSS</a>
                    <a href="" rel="external nofollow" target="_blank" class="topbarsns_qqweibo" title="博主腾讯微博">腾讯微博</a>
                    <a href="" rel="external nofollow" target="_blank" class="topbarsns_weibo" title="博主新浪微博">新浪微博</a>
                    <a href="" rel="external nofollow" target="_blank" title="博主QQ：365267357" class="topbarsns_qqplus">QQ留言</a>
                    <a href="" rel="external nofollow" title="博主邮箱：wumingzhe-cn@qq.com" class="topbarsns_mail">博主邮箱</a>
                </div>
                <div class="searchform">
                    <form id="formsearch" name="formsearch" method="post" action="">
                        <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text"></span>
                        <input name="button_search" src="/pic/pagePic/search_btn.gif" class="button_search" type="image">
                    </form>
                </div>
                <nav class="topbarnav right" style="display: block;">
                    <ul id="" class="menu">
                        <li id="menu-item-408" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-408">
                            <a href="http://www.wumingzhe.cn/">首页</a>
                        </li>
                        <li id="menu-item-410" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-410">
                            <a href="http://wumingzhe.cn/category/web-2/">Web前端</a>
                        </li>
                        <li id="menu-item-409" class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor menu-item-409">
                            <a href="http://wumingzhe.cn/category/programminglanguage/java/">Java</a>
                        </li>
                        <li id="menu-item-431" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431">
                            <a href="http://wumingzhe.cn/category/website/websiteplatform/wp/">WordPress</a>
                        </li>
                        <li id="menu-item-1083" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1083">
                            <a href="http://wumingzhe.cn/category/operatingsystem/win/">Windows</a>
                        </li>
                        <li id="menu-item-1221"
                            class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1221">
                            <a href="http://wumingzhe.cn/category/operatingsystem/linux/">Linux</a></li>
                        <li id="menu-item-1064" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1064">
                            <a href="http://wumingzhe.cn/category/mater/">素材</a>
                        </li>
                        <li id="menu-item-1525" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1525">
                            <a href="http://wumingzhe.cn/archives/">归档</a>
                        </li>
                        <li id="menu-item-1172"
                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1172">
                            <a href="http://wumingzhe.cn/msgboard/">留言板</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <header>
        <div class="wrap">
            <div class="container cf">
                <hgroup class="logohgroup left">
                    <h2 class="hide">
                        <a href="http://sunruxue.cn/" title="">Skaural· 开发技术博客</a>
                    </h2>
                    <h2>
                        <a class="logo" href="http://wumingzhe.cn/"></a>
                    </h2>
                </hgroup>
                <nav class="headnav right">
                    <ul id="menu-headermenu" class="menu">
                        <li id="menu-item-1526" class="">
                            <a href="http://wumingzhe.cn/">首页</a>
                        </li>
                        <li id="menu-item-1527" class="">
                            <a href="http://wumingzhe.cn/archives/">归档</a>
                        </li>
                        <li id="menu-item-1547" class="">
                            <a href="http://wumingzhe.cn/timeline/">时光轴</a>
                        </li>
                        <li id="menu-item-1528" class="">
                            <a href="http://wumingzhe.cn/msgboard/">留言板</a>
                        </li>
                        <li id="menu-item-1751" class="">
                            <a href="http://wumingzhe.cn/about/">关于</a>
                        </li>
                    </ul>
                </nav><!--#nav-primary--> <!-- Wigitized Header -->
                <div class="clear"></div>
                <div id="headimg">
                    <div class="headehello">
                        <span id="hello">欢迎光临Skaural小站。</span>
                        <script>
                            var arr = document.cookie.match(new RegExp("(^| )_c_a=([^;]*)(;|$)"));
                            var h = document.getElementById('hello');
                            if (arr != null) h.innerHTML = "您好，<em>" + decodeURIComponent(unescape(arr[2])) + "</em>！欢迎回来."; else h.innerHTML = "欢迎光临Skaural小站。";
                        </script>
                    </div>
                </div>
                <div class="cjtop"></div>
            </div><!--.container-->
        </div><!--.wrap-->
    </header>
    <div class="wrap">
        <div class="container">
            <div class="containerbg cf">
                <div class="devesingle">
                    <div class="breadcrumbsclear">
                        <ul class="breadcrumbs">
                            <li>
                                <a href="http://wumingzhe.cn/">首页&nbsp;</a>
                                &gt; 分类 &gt;
                                <a href="http://wumingzhe.cn/category/programminglanguage/java/springmvc/" rel="tag">SpringMVC</a>
                                &gt; ${posts.postsname}
                            </li>
                        </ul>
                    </div>
                    <h1 class="singleposth1 zhenghei">
                        <a href="http://wumingzhe.cn/2076.html" title="SpringMVC拦截器实现登录控制" rel="bookmark">${posts.postsname}</a>
                    </h1>
                    <div class="singleinfo">
                        <span class="snomtime">
                            <fmt:formatDate value="${posts.postscreatetime }" pattern="yyyy-MM-dd" />
                        </span>
                        <span class="snomcomt">
                            <a href="http://wumingzhe.cn/2076.html#comments">评论(${posts.reviewnumber})</a>
                        </span>
                        <span class="snomview">${posts.readnumber}</span>
                        <span class="snomlink"><a href="javascript:void(0);" onclick="" style="color:#FD8C84" title="high够之后可以双击空白位置或刷新页面让其停止">点此嗨一下</a></span>
                        <span class="forcedrefresh"><a rel="external nofollow" href="http://wumingzhe.cn/2076.html?_20313" title="轻点强制刷新">强制刷新</a></span></div>
                    <section class="content cf">
                        ${posts.postscontent}
                        <h1>更多文章阅读</h1>
                        <p><a title="http://wumingzhe.cn/2248.html" href="http://wumingzhe.cn/2248.html" target="_blank">SpringMVC之Interceptor拦截器</a>
                        </p>
                        <p>&nbsp;</p>
                        <div class="loc_link">
                            <ul>
                                <li>本站文章除注明转载外，均为本站原创或编译</li>
                                <li>欢迎任何形式的转载，但请务必以链接形式注明出处，请尊重他人劳动成果</li>
                                <li>
                                    本作品采用 [
                                    <a rel="license nofollow" target="_blank" href="http://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh">署名-非商业性使用-相同方式共享4.0 国际</a>
                                    ] 进行许可。
                                </li>
                            </ul>
                        </div>
                        <div class="dashang">
                            <p>如果觉得我的文章对您有用，请随意打赏。您的支持将鼓励我继续创作！</p>
                            <a class="button" href="javascript:;">¥ 打赏博主</a>
                        </div>
                        <script type="text/javascript">var cpro_id = "u2836281";</script>
                        <script type="text/javascript" src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/i.js.下载"></script>
                        <div style="background: url('http://res.wumingzhe.cn/wp-content/themes/wumingzhe/images/112233.png');background-repeat: no-repeat;height: 90px;background-size: 620px 90px;">
                            <script type="text/javascript"> var cpro_id = "u2836277";</script>
                            <script type="text/javascript" src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/c.js.下载"></script>
                            <iframe id="iframeu2836277_0" src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/dcgm.html"
                                        width="620" height="90" align="center,center" vspace="0" hspace="0"
                                        marginwidth="0" marginheight="0" scrolling="no" frameborder="0"
                                        style="border:0; vertical-align:bottom;margin:0;"
                                        allowtransparency="true">
                                </iframe>
                        </div>

                        <div class="footer">
                            <span class="tag">
                                &nbsp;标签：&nbsp;
                                <a href="http://wumingzhe.cn/tag/springmvc/" rel="tag">SpringMVC</a>
                            </span>
                        </div>
                        <div class="singlepagestyle zhenghei cf">
                            <span>
                                上一篇: <a href="###" rel="prev">${postsLast.postsname}</a>
                                下一篇: <a href="###" rel="next">${postsNext.postsname}</a>
                            </span>
                        </div>
                    </section>
                    <div class="relatebar">
                        <span class="relatetitle">相关文章：</span>
                        <ul class="cf">
                            <li class="left">
                                <a href="http://wuzhuti.cn/2558.html" target="_blank" rel="bookmark" title="SpringMVCAjax返回JSON出现问号乱码解决方法">SpringMVCAjax返回JSON出现问号乱码解决方法</a>
                                <span class="relatetime">发表于 2016.01.26</span>
                             </li>
                            <li class="left"><a href="http://wuzhuti.cn/2495.html" target="_blank" rel="bookmark" title="SpringMVC @RequestMapping 多个value">SpringMVC @RequestMapping 多个value</a>
                                <span class="relatetime">发表于 2015.12.15</span>
                            </li>
                            <li class="left">
                                <a href="http://wuzhuti.cn/2260.html" target="_blank" rel="bookmark" title="解决百度Emeditor图片上传与Spring MultipartResolver冲突">解决百度Emeditor图片上传与Spring MultipartResolver冲突</a>
                                <span class="relatetime">发表于 2015.06.26</span>
                            </li>
                            <li class="left"><a href="http://wuzhuti.cn/2248.html" target="_blank" rel="bookmark" title="SpringMVC之Interceptor拦截器">SpringMVC之Interceptor拦截器</a>
                                <span class="relatetime">发表于 2015.06.23</span>
                            </li>
                            <li class="left"><a href="http://wuzhuti.cn/1109.html" target="_blank" rel="bookmark" title="Spring国际化配置">Spring国际化配置</a>
                                <span class="relatetime">发表于 2014.08.15</span></li>
                            <li class="left"><a href="http://wuzhuti.cn/1106.html" target="_blank" rel="bookmark" title="SpringMVC-Spring-Hibernate代码整合">SpringMVC-Spring-Hibernate代码整合</a>
                                <span class="relatetime">发表于 2014.08.15</span>
                            </li>
                        </ul>
                        <script type="text/javascript"> var cpro_id = "u1817751";</script>
                    </div>
                    <div class="sharebar cf bdsharebuttonbox" data-tag="share_1"></div>
                    <div class="commenttab">
                        <span id="commenttab1" class="commenttabcurrent">站内评论</span>
                        <span id="commenttab2">新浪微博评论</span>
                    </div>
                    <div>
                        <div id="commentwb" class="commenttab2" style="display:none;">
                            <p>暂时停用微博评论功能</p>
                        </div>
                        <div id="comments" class="commenttab1">
                            <div id="respond">
                                <img class="gravatar left" src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/avatar.php">
                                <span class="replytitle left">发表评论</span>
                                <span class="replyinfo left"></span>
                                <div id="cancel-comment-reply">
                                    <a rel="nofollow" id="cancel-comment-reply-link" href="http://wumingzhe.cn/2076.html#respond" style="display:none;">取消回复</a>
                                </div>
                                <div class="clear"></div>
                                <form id="commentform" name="comm_frm">
                                    <div id="author_info" style="display:none">
                                        <h2 class="left">Hi，您需要填写昵称和邮箱！</h2>
                                        <div class="writerinfodiv">
                                            <input type="text" name="author" id="author" value="" tabindex="1">
                                            <label for="author">昵称
                                                <span class="red"> *</span>
                                            </label>
                                        </div>
                                        <div class="writerinfodiv">
                                            <input type="email" name="email" id="email" value="" tabindex="2">
                                            <label for="email">邮箱
                                                <span class="red"> *</span>
                                                (用于显
                                                <a href="http://wumingzhe.cn/1368.html" target="_blank">Gravata</a>
                                                头像)
                                            </label>
                                        </div>
                                        <div class="writerinfodiv">
                                            <input type="text" name="url" id="url" value="" tabindex="3">
                                            <label for="url">网址</label>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div id="commenteditor" style="display:none;">
                                        <a href="javascript:CTOOLS.smiley();"><b>表情</b></a>
                                        <a href="javascript:CTOOLS.strong();"><b>粗体</b></a>
                                        <a href="javascript:CTOOLS.em()"><b>斜体</b></a>
                                        <a href="javascript:CTOOLS.quote()"><b>引用</b></a>
                                        <a href="javascript:CTOOLS.del()"><b>删除线</b></a>
                                        <a href="javascript:CTOOLS.underline()"><b>下划线</b></a>
                                        <a href="javascript:CTOOLS.code()"><b>插代码</b></a>
                                        <span class="right" style="color:#E38383">
                                            灌水请到&gt;&gt;
                                            <a href="http://wumingzhe.cn/msgboard/" target="_blank">留言板</a>
                                        </span>
                                    </div>
                                    <div class="wp_smilies" style="display:none;">
                                        <a title="icon_wink.gif" onclick="document.getElementById('comment').value += ' ;-) '">
                                            <img src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/icon_wink.gif" alt="icon_wink.gif">
                                        </a>
                                        &nbsp;
                                        <a title="icon_neutral.gif" onclick="document.getElementById('comment').value += ' :| '">
                                             <img src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/icon_neutral.gif" alt="icon_neutral.gif">
                                        </a>
                                        &nbsp;
                                        <a title="icon_mad.gif" onclick="document.getElementById('comment').value += ' :x '">
                                             <img src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/icon_mad.gif" alt="icon_mad.gif">
                                        </a>
                                        &nbsp;
                                        <a title="icon_twisted.gif" onclick="document.getElementById('comment').value += ' :twisted: '">
                                            <img src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/icon_twisted.gif" alt="icon_twisted.gif">
                                        </a>
                                        &nbsp;
                                        <a title="icon_smile.gif" onclick="document.getElementById('comment').value += ' :smile: '">
                                             <img
                                            src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/icon_smile.gif"
                                            alt="icon_smile.gif">
                                        </a>
                                        &nbsp;
                                        <a title="icon_eek.gif" onclick="document.getElementById('comment').value += ' :shock: '">
                                            <img src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/icon_eek.gif" alt="icon_eek.gif">
                                        </a>
                                        &nbsp;
                                        <a title="icon_sad.gif" onclick="document.getElementById('comment').value += ' :sad: '">
                                            <img src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/icon_sad.gif" alt="icon_sad.gif">
                                        </a>
                                    </div>
                                    <textarea id="comment" name="comment" class="bg" rows="6" tabindex="4"></textarea>
                                    <div id="loading" style="display: none;">
                                        <img src="http://wumingzhe.cn/wp-content/themes/wumingzhe/images/loading.gif" style="vertical-align:middle;" alt=""> 正在提交, 请稍候...
                                    </div>
                                    <div id="##" style="display: none;">#</div>
                                    <div id="###" style="display: none;">
                                        <img src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/loading.gif" style="vertical-align:middle;" alt="">
                                        正在提交, 请稍候...
                                    </div>
                                    <div id="error" style="display: none;">#</div>
                                    <script type="text/javascript">
                                        document.getElementById("comment").onkeydown = function (moz_ev) {
                                            var ev = null;
                                            if (window.event) {
                                                ev = window.event;
                                            } else {
                                                ev = moz_ev;
                                            }
                                            if (ev != null && ev.ctrlKey && ev.keyCode == 13) {
                                                document.getElementById("submit").click();
                                            }
                                         }
                                    </script>
                                    <div id="QapTcha">
                                        <div class="bgSlider">
                                            <div class="Slider ui-draggable" style="position: relative;"></div>
                                        </div>
                                        <div class="Icons"></div>
                                        <div class=" TxtStatus dropError">滑动提交评论</div>
                                        <div class="clr"></div>
                                        <input name="ANZ-#jSD9E5nYSD2_ASRPth@nweqAdS#" value="BGA885k" type="hidden">
                                        <div class="bgSlider">
                                            <div class="Slider ui-draggable" style="position: relative;"></div>
                                        </div>
                                        <div class="Icons"></div>
                                        <div class=" TxtStatus dropError">滑动提交评论</div>
                                        <div class="clr"></div>
                                        <input name="rbtusaSn53qsb_PurQY2S7P#A7gA#G9T" value="rfhsW@P" type="hidden">
                                    </div>
                                    <input name="submit" type="submit" id="submit" class="submitstyle left" tabindex="5" value=" 提交回复（Ctrl+Enter） ">
                                    <input type="hidden" name="comment_post_ID" value="2076" id="comment_post_ID">
                                    <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                                </form>
                            </div><!--#respond-->
                            <div id="commnents" class="commentsorping">
                                <div class="commentsays">评论(14)</div>
                                <div class="adv" style="padding: 8px 10px 0 10px;float: left;color: rgb(153, 153, 153);">
                                    没有看到评论？
                                    <a href="http://wumingzhe.cn/2076.html/?51193%3E#commnents">强制刷新</a>
                                </div>
                                <div class="commentpart">评论 (${articleAllReviewList.size()})</div>
                                <div class="pingpart">引用 (0)</div>
                            </div>
                            <div class="commentshow">
                                <ul class="commentlist">
                                    <c:if test="${articleAllReviewList != null}">
                                        <c:forEach items="${articleAllReviewList}" var="comment" varStatus="status">
                                            <li id="comment-${comment.id}" class="comment even thread-even depth-1 commenttips">
                                                <div class="commnetdiv cf">
                                                    <div class="gravatar">
                                                        <img alt="" src="/pic/pagePic/39ef381d044232f111006d282a6a956e.jpg" class="avatar avatar-40 photo" height="40" width="40"></div><!-- comment-author -->
                                                    <div class="commenttext cf">
                                                        <span class="commentcount right">
                                                             <a href="http://wumingzhe.cn/2076.html#comment-3249">${status.count}楼</a>
                                                        </span>
                                                        <div class="commentp">
                                                            <span class="commentid">
                                                                <a href="http://wumingzhe.cn/go/?url=" target="_blank" rel="external nofollow">${comment.commentusername}</a>
                                                            </span>
                                                            :
                                                            <p>
                                                                ${comment.reviewcontent}
                                                            </p>
                                                        </div>
                                                        <div class="comment-meta">
                                                            <span class="commenttime left"><fmt:formatDate value="${comment.data }" pattern="yyyy-MM-dd HH:MM" /></span>
                                                            <span class="commentua left" data="Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36" mailstatus="">中国北京北京 | ${comment.system} | ${comment.browser} </span>
                                                            <span class="reply right">
                                                                 <a rel="nofollow" class="comment-reply-link" href="http://wumingzhe.cn/2076.html?replytocom=3249#respond" onclick="" aria-label="回复给沧海桑田">回复</a>
                                                            </span>
                                                        </div><!--comment-meta-->
                                                    </div><!-- commenttext -->
                                                </div>
                                                <c:if test="${comment.reviewNextList != null}">
                                                    <c:forEach items="${comment.reviewNextList}" var="review" varStatus="reviewIndex">
                                                        <ul class="children">
                                                            <li id="comment-${review.id}"
                                                                class="comment byuser comment-author-wuzhutiadmin bypostauthor odd alt depth-2 commenttips">
                                                                <div class="commnetdiv cf">
                                                                    <div class="gravatar">
                                                                        <img alt="" src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/060b4733bd0da3471428ab5d747dd5e4" srcset="http://cn.gravatar.com/avatar/060b4733bd0da3471428ab5d747dd5e4?s=80&amp;d=monsterid&amp;r=pg 2x" class="avatar avatar-40 photo" height="40" width="40"> <br>
                                                                        <span class="admin-text">${review.commentusername}</span>
                                                                    </div><!-- comment-author -->
                                                                    <div class="commenttext cf">
                                                        <span class="commentcount right">
                                                            <a href="http://wumingzhe.cn/2076.html#comment-3125"></a>
                                                        </span>
                                                                        <div class="commentp"><span class="commentid">
                                                            <a href="http://wumingzhe.cn/go/?url=http://wumingzhe.cn" target="_blank" rel="external nofollow">${review.commentusername}</a>
                                                            </span>
                                                                            :
                                                                            <c:if test="${review.replyusername != null}">
                                                                                <a href="http://wumingzhe.cn/2076.html#comment-3125" rel="nofollow" class="atreply">@${review.replyusername}</a>
                                                                            </c:if>
                                                                            <p>${review.reviewcontent}</p>
                                                                        </div>
                                                                        <div class="comment-meta"><span class="commenttime left"><fmt:formatDate value="${review.data }" pattern="yyyy-MM-dd HH:MM" /></span>
                                                                            <span class="commentua left"
                                                                                  data="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Safari/602.1.50"
                                                                                  mailstatus="">中国辽宁大连 | ${review.system} | ${review.browser} </span>
                                                                            <span class="reply right"><a rel="nofollow"
                                                                                                         class="comment-reply-link"
                                                                                                         href="http://wumingzhe.cn/2076.html?replytocom=3125#respond"
                                                                                                         onclick=""
                                                                                                         aria-label="回复给小武">回复</a></span>
                                                                        </div><!--comment-meta-->
                                                                    </div><!-- commenttext -->
                                                                </div>
                                                                <%--<ul class="children">
                                                                    <li id="comment-3126" class="comment even depth-3 commenttips">
                                                                        <div class="commnetdiv cf">
                                                                            <div class="gravatar"><img alt=""
                                                                                                       src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/7a62d9531b4d829373b09f2754a21a20"
                                                                                                       srcset="http://cn.gravatar.com/avatar/7a62d9531b4d829373b09f2754a21a20?s=80&amp;d=monsterid&amp;r=pg 2x"
                                                                                                       class="avatar avatar-40 photo"
                                                                                                       height="40" width="40"></div>
                                                                            <!-- comment-author -->
                                                                            <div class="commenttext cf"><span
                                                                                    class="commentcount right"><a
                                                                                    href="http://wumingzhe.cn/2076.html#comment-3126"></a></span>
                                                                                <div class="commentp"><span class="commentid"><a
                                                                                        href="http://wumingzhe.cn/go/?url=http://lccool.com"
                                                                                        target="_blank"
                                                                                        rel="external nofollow">lccool</a></span> : <p>
                                                                                    <a href="http://wumingzhe.cn/2076.html#comment-3125"
                                                                                       rel="nofollow" class="atreply">@小武</a> : 三克油</p>
                                                                                </div>
                                                                                <div class="comment-meta"><span
                                                                                        class="commenttime left">2016.10.11 10:03</span>
                                                                                    <span class="commentua left"
                                                                                          data="Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36"
                                                                                          mailstatus="">中国山东济南 | Windows 7 | Chrome 45.0.2454.101 </span>
                                                                                    <span class="reply right"><a rel="nofollow"
                                                                                                                 class="comment-reply-link"
                                                                                                                 href="http://wumingzhe.cn/2076.html?replytocom=3126#respond"
                                                                                                                 onclick="return addComment.moveForm( &quot;comment-3126&quot;, &quot;3126&quot;, &quot;respond&quot;, &quot;2076&quot; )"
                                                                                                                 aria-label="回复给lccool">回复</a></span>
                                                                                </div><!--comment-meta--> </div><!-- commenttext -->
                                                                        </div>
                                                                    </li><!-- #comment-## -->
                                                                </ul>--%><!-- .children -->
                                                            </li>
                                                            <!-- #comment-## -->
                                                        </ul><!-- .children -->
                                                    </c:forEach>
                                                </c:if>

                                            </li><!-- #comment-## -->
                                        </c:forEach>
                                    </c:if>
                                <nav class="commentnav"></nav>
                            </div>
                            <ul class="pingtlist">
                            </ul>
                        </div><!--#comments-->
                    </div>
                </div>
                <div id="sidebar">
                    <div class="clr"></div>
                    <div class="sb_gadget">
                        <ul class="sb_menu">
                            <div id="deve_widget-2" class="widget-area widget-sidebar">
                                <div class="sb_menu_title">
                                    <span id="zuixin"><a class="sidetabcurrent" href="###">最新</a></span>
                                    <span id="zuire"><a href="###">最热</a></span>
                                    <span id="suiji"><a href="###">随机</a></span>
                                </div>
                                <div class="tabcontent">
                                    <ul class="sidetab1">
                                        <c:if test="${psListACCreateTime != null}">
                                            <c:forEach items="${psListACCreateTime}" var="posts">
                                                <li>
                                                    <a href="###">${posts.postsname}</a>
                                                    <span>(${posts.reviewnumber})</span>
                                                </li>
                                            </c:forEach>
                                        </c:if>
                                    </ul>
                                    <ul class="sidetab2">
                                        <c:if test="${psListACHot != null}">
                                            <c:forEach items="${psListACHot}" var="posts">
                                                <li>
                                                    <a href="###">${posts.postsname}</a>
                                                    <span>(${posts.reviewnumber})</span>
                                                </li>
                                            </c:forEach>
                                        </c:if>
                                    </ul>
                                    <ul class="sidetab3">
                                        <c:if test="${psListACRandom != null}">
                                            <c:forEach items="${psListACRandom}" var="posts">
                                                <li>
                                                    <a href="###">${posts.postsname}</a>
                                                    <span>(${posts.reviewnumber})</span>
                                                </li>
                                            </c:forEach>
                                        </c:if>
                                    </ul>
                                </div>
                            </div>
                            <div id="text-12" class="widget-area widget-sidebar">
                                <div class="sb_menu_title">帮我喂喂小仓鼠</div>
                                <div class="textwidget">
                                    <object type="application/x-shockwave-flash" style="outline:none;" data="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/hamster.swf.下载" width="242" height="184" class="">
                                        <param name="movie" value="https://wumingzhe.cn/resources/flash/hamster.swf?">
                                        <param name="AllowScriptAccess" value="always">
                                        <param name="wmode" value="transparent">
                                    </object>
                                </div>
                            </div>
                            <div id="text-10" class="widget-area widget-sidebar">
                                <div class="sb_menu_title">广而告之</div>
                                <div class="textwidget">
                                    <script type="text/javascript"> var cpro_id = "u2836275";</script>
                                    <script type="text/javascript" src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/c.js.下载"></script>
                                    <iframe id="iframeu2836275_0" src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/dcgm(1).html" width="240"
                                            height="240" align="center,center" vspace="0" hspace="0" marginwidth="0" marginheight="0" scrolling="no" frameborder="0"
                                            style="border:0; vertical-align:bottom;margin:0;" allowtransparency="true">
                                    </iframe>
                                </div>
                            </div>
                            <div id="deve_widget2-2" class="widget-area widget-sidebar">
                                <div class="sb_menu_title">最新评论</div>
                                <ul>
                                    <c:if test="${recentReviewList != null}">
                                        <c:forEach items="${recentReviewList}" var="review">
                                            <li class="devereccomtli cf">
                                                <span class="devecomeravatar">
                                                     <img alt="" src="./SpringMVC拦截器实现登录控制 _ 无主题 · 开发技术博客_files/bc7eb37b75da30257c4d3a64d9755a47" srcset="http://cn.gravatar.com/avatar/bc7eb37b75da30257c4d3a64d9755a47?s=60&amp;d=monsterid&amp;r=pg 2x" class="avatar avatar-30 photo" height="30" width="30">
                                                </span>
                                                <a href="http://wumingzhe.cn/2729.html#comment-3264" target="_blank" title="最新评论">${review.reviewcontent}</a><br>
                                                <span class="devecomer">by ${review.commentusername}</span>
                                                <span class="devecomertime"><fmt:formatDate value="${review.data }" pattern="yyyy-MM-dd" /></span>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                            </div>
                            <div class="fenlei">
                                <div id="deve_widget5-2" class="widget-area widget-sidebar">
                                    <div class="sb_menu_title">分类目录</div>
                                    <ul class="categories">
                                        <c:if test="${mdList != null}">
                                        <c:forEach items="${mdList}" var="module">
                                            <li><a>${module.mdname}</a><span>(${module.postsNum})</span></li>
                                            <c:if test="${module.twoMdList != null && module.twoMdList[0].mdname != null}">
                                                <ul class="child">
                                                    <c:forEach items="${module.twoMdList}" var="twoMd">
                                                        <li><a>${twoMd.mdname}</a><span>(${twoMd.postsNum})</span></li>
                                                    </c:forEach>
                                                </ul>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                    </ul>
                                </div>
                            </div>
                            <div id="deve_widget5-3" class="widget-area widget-sidebar">
                                <div class="sb_menu_title">标签云</div>
                                <div class="devetag">
                                    <a href="http://wumingzhe.cn/tag/java/" class="tag-link-234 tag-link-position-1" title="58个话题" style="font-size: 12px;">Java</a>
                                    <a href="http://wumingzhe.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
                                    <a href="http://wumingzhe.cn/tag/github/" class="tag-link-324 tag-link-position-22" title="7个话题" style="font-size: 12px;">GitHub</a>
                                    <a href="http://wumingzhe.cn/tag/git/" class="tag-link-239 tag-link-position-23" title="7个话题" style="font-size: 12px;">Git</a>
                                    <a href="http://wumingzhe.cn/tag/js-jquery/" class="tag-link-98 tag-link-position-24" title="6个话题" style="font-size: 12px;">Js &amp; JQuery</a>
                                    <a href="http://wumingzhe.cn/tag/%e7%b2%be%e9%80%89%e8%bd%af%e4%bb%b6/" class="tag-link-28 tag-link-position-25" title="6个话题" style="font-size: 12px;">精选软件</a>
                                    <a href="http://wumingzhe.cn/tag/%e5%bb%ba%e7%ab%99%e6%8a%80%e5%b7%a7/" class="tag-link-55 tag-link-position-26" title="6个话题" style="font-size: 12px;">建站技巧</a>
                                    <a href="http://wumingzhe.cn/tag/%e6%89%8b%e6%9c%ba/" class="tag-link-67 tag-link-position-27" title="6个话题" style="font-size: 12px;">手机</a>
                                    <a href="http://wumingzhe.cn/tag/%e4%b9%b1%e7%a0%81/" class="tag-link-139 tag-link-position-28" title="5个话题" style="font-size: 12px;">乱码</a>
                                </div>
                            </div>
                        </ul>
                    </div>
                </div><!--sidebar-->
                <div class="clear">
                </div>
            </div><!--.containerbg-->
            <div class="containerbottom">

            </div>
        </div><!--.container--> </div>
    <footer>
        <div class="wrap cf">
            <div class="widget-area4">
                <h3>随机推荐</h3>
                <ul>
                    <li>
                        <a href="###" target="_blank" rel="bookmark" title="">心碎！iPhone 6模型曝光：就是大号5s</a>
                    </li>
                    <li>
                        <a href="###" target="_blank" rel="bookmark" title="">键盘为什么这么布局</a>
                    </li>
                </ul>
            </div>
            <div class="widget-area4">
                <h3>最新评论</h3>
                <ul>
                    <li class="reccomtli cf">
                        <span class="comeravatar">
                            <img alt="" src="" srcset="" class="avatar avatar-28 photo" height="28" width="28">
                        </span>
                        <a href="" target="_blank" title="">需要向博主学习的地方还有很...</a><br>
                        <span class="comer">by 三五营销</span>
                        <span class="comertime">2017-01-05 14:43:18</span>
                    </li>
                    <li class="reccomtli cf">
                        <span class="comeravatar">
                            <img alt="" src="" srcset="" class="avatar avatar-28 photo" height="28" width="28">
                        </span>
                        <a href="" target="_blank" title="">需要向博主学习的地方还有很...</a><br>
                        <span class="comer">by 天神低调</span>
                        <span class="comertime">2017-01-05 14:43:18</span>
                    </li>
                </ul>
            </div>
            <div class="widget-area4">
                <h3>标签云</h3>
                <div class="devefootertag">
                    <a href="http://wumingzhe.cn/tag/java/" class="tag-link-234 tag-link-position-1" title="58个话题" style="font-size: 12px;">Java</a>
                    <a href="http://wumingzhe.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
            </div>
        </div>
        </div>
        <div class="corig">
            <div class="container cf">
                <p class="free left"> 本博客文章仅供学习和参考，如侵犯到您的权益，请联系站长删除！<br>
                    © 2014-2016
                    <a href="http://sunruxue.cn/">无主题</a>
                    本站采用[
                    <a rel="nofollow license" target="_blank" href="//sunruxue.cn/licenses/by-nc-sa/4.0/deed.zh">署名-非商业性使用-相同方式共享4.0 国际</a>
                    ]进行许可&nbsp;
                    <a href="http://sunruxue.cn/" rel="external nofollow" target="_blank">辽ICP备14002751号-2</a>
                    <a href="http://sunruxue.cn/">站点地图 </a>
                </p>
                <p class="right cori"><br>
                    博客基于
                    <a href="http://wordpress.org/" rel="external nofollow" target="_blank">WordPress</a>
                    技术构建，主题基于
                    <a href="http://ongakuer.com/archives/deve-theme/" rel="external nofollow" target="_blank">Deve </a>
                    修改
                </p>
                <div class="hide"></div>
            </div>
        </div>
    </footer>
    <div id="scrolltop" style="bottom: 50px;">
        <a id="float_gotop" class="footerbtn" href="javascript:;" title="返回顶部"></a>
        <a class="comments footerbtn" href="http://wumingzhe.cn/2076.html#commenttab1" title="评论"></a>
        <a id="float_goend" class="footerbtn" href="javascript:;" title="转到底部"></a>
    </div>
</div>
<script src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
<script>
    $topbarsns = $(".topbarsns");
    $topbarnav = $(".topbarnav");
    $(window).scroll(function () {
        console.info($(window).scrollTop());
        if($(this).scrollTop() <= 400){
            $topbarsns.css("display","block");
            $topbarnav.css("display","none");
        }else if($(this).scrollTop() > 400){
            $topbarsns.css("display","none");
            $topbarnav.css("display","block");
        }
    })
    $s1 = $('.sidetab1');
    $s2 = $('.sidetab2');
    $s3 = $('.sidetab3');
    $("div.sb_menu_title span a").click(function () {
        console.log("点击");
        var whichClick = $(this).html();
        $("div.sb_menu_title span a").removeClass("sidetabcurrent");
        $(".tabcontent ul").css("display","none");
        $(this).addClass("sidetabcurrent");
        if(whichClick == "最新"){
            $s1.css("display","block");
        }else if(whichClick == "最热"){
            $s2.css("display","block");
        }else if(whichClick == "随机"){
            $s3.css("display","block");
        }
    })
    $("#twousertype").change(function () {
        console.log("改变");

    })
</script>
<script>

</script>
</body>
</html>