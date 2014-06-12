<a target="_blank" href="http://brand.tmall.com/brandInfo.htm?spm=a220m.1000858.0.0.W93toE&brandId=4533618&scm=1048.1.1.12&rn=d828f0527b0f12f299928ff64e8e1fbc" class="tmalllink"></a>
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
                        "layer-v1.8.3/layer.min.js",
                        "main.js",
                        'media.js',) as $key => $file) {
	Yii::app()->getClientScript()->registerScriptFile(yii::app()->baseUrl."/style/fontend/js/$file");
}
?>
<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('.mycarousel').jcarousel({
            wrap: 'circular'
        });
    });

    function viewVideo(url)
    {
        $.layer({
            type: 2,
            title: false,
            //fix: true, //滚动条
            shadeClose: true,
            //closeBtn: false,
            area : ['480px' , '480px'],
            offset: [($(window).height() - 450)/2 + 'px', ''],
            //offset : ['100px',''],
            //border: [0],
            shade : [0.4, '#000'],
            iframe: {src: url}
        });
    }
</script>
</body>
</html>