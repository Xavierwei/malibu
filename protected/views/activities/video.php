<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Malibu</title>
    <style>
        *,body{margin: 0px;padding:0px;}
    </style>
</head>
<?php
/*
<!--<video autoplay="autoplay" width="640" height="360" controls>-->
<!--<source src="--><?//=$url?><!--" type="video/mp4" />-->

<!--    <object id="player" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" width="800" height="450">-->
<!--        <param name="allowScriptAccess" value="always"/>-->
<!--        <param name="movie" value="--><?//=Yii::app()->baseUrl?><!--/style/fontend/video/player.swf"/>-->
<!--        <param name="flashVars" value="source=--><?//=$url?><!--&autoplay=true&skinMode=show&onPlay=play()&onPlayComplete=playComplete()"/>-->
<!--        <param name="quality" value="high"/>-->
<!--        <param name="allowFullScreen" value="true"/>-->
<!--        <embed name="player" src="--><?//=Yii::app()->baseUrl?><!--/style/fontend/video/player.swf" allowFullScreen="true" flashVars="source=--><?//=$url?><!--&autoplay=true&skinMode=show&onPlay=play()&onPlayComplete=playComplete()" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="800" height="450" allowScriptAccess="always"></embed>-->
<!--    </object>-->
*/ ?>
<!--<iframe height=450 width=800 src="http://player.youku.com/embed/--><?//=Drtool::getYouKuId($url)?><!--" frameborder=0 allowfullscreen>-->
<!---->
<!--</iframe>-->

<div class="video_flash" style="width: 480px; height: 480px;">
<object width="480" height="480" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">
    <param name="src" value="http://paikeimg.video.sina.com.cn/splayer1.8.7.swf?scid=<?=$url?>&amp;token=&amp;autopause=false&amp;fromweibo=false">
    <param name="wmode" value="transparent">
    <param name="wmode" value="opaque">
    <param name="quality" value="high">
    <param name="allowfullscreen" value="true">
    <param name="allowscriptaccess" value="always">
    <embed id="em" src="http://paikeimg.video.sina.com.cn/splayer1.8.7.swf?scid=<?=$url?>&amp;token=&amp;autopause=false&amp;fromweibo=false" type="application/x-shockwave-flash" autostart="false" width="100%" height="100%" quality="high" allowfullscreen="true" wmode="transparent" allowscriptaccess="always" pluginspage="http://www.macromedia.com/go/getflashplayer">
</object>
</div>
<!--</video>-->
</body>
</html>