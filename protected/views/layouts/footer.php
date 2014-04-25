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
foreach (array("jquery-1.8.3.min.js","jquery.easing.1.3.js","jquery.jcarousel.min.js","main.js",) as $key => $file) {
	Yii::app()->getClientScript()->registerScriptFile(yii::app()->baseUrl."/style/fontend/js/$file");
}
?>
</body>
</html>