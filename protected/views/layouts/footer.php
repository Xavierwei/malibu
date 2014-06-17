<div class="bottomlogo"></div>
<div class="bgtl"></div>
<div class="bgbr"></div>
</div>
<div class="shade" style="display:none;"></div>
<div class="pop" style="display:none;opacity:0;top:-40%;">
	<div class="age-input">
	    <h1>请确认您已满18周岁</h1>
	    <div class="popcon">
	        <p>输入出生年月日</p>
	        <div class="ageform cs-clear">
	            <input class="ipt ipt1" type="text"  />
	            <input class="ipt ipt3" type="text" />
	            <input class="ipt ipt2" type="text" />
	        </div>
	        <div class=" cs-clear">
	            <p class="poptips">乐享美酒需理性</p>
	            <p class="popcheck"><label><input id="remember" type="checkbox" />记住我</label></p>
	        </div>
	        <div class="cs-clear">
	            <a href="#" class="popbtn login">登 录</a>
	        </div>
	    </div>
    </div>
    <div class="age-error" style="display:none;">
    	<h1>抱歉，您未满18岁</h1>
    	<a href="#" class="popbtn return">返 回</a>
    </div>
</div>
<!--  -->
<!--IE6透明判断-->
<!--[if IE 6]>
<?php Yii::app()->getClientScript()->registerScriptFile(yii::app()->baseUrl."/style/fontend/js/DD_belatedPNG.js");?>
<script>
    DD_belatedPNG.fix('*');
    document.execCommand("BackgroundImageCache", false, true);
</script>
<![endif]-->
<?php
foreach (array("jquery-1.8.3.min.js",
                        "jquery.easing.1.3.js",
                         "jquery.jcarousel.min.js",
                        "video.js",
                        "main.js",
                        'media.js',) as $key => $file) {
	Yii::app()->getClientScript()->registerScriptFile(yii::app()->baseUrl."/style/fontend/js/$file");
}
?>
<script src="http://tjs.sjs.sinajs.cn/t35/apps/opent/js/frames/client.js" language="JavaScript"></script>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-51831708-1', '42.159.199.145');
    ga('send', 'pageview');
</script>

</body>
</html>