<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Malibu</title>
    <?php Yii::app()->getClientScript()->registerCssFile(yii::app()->baseUrl."/style/fontend/css/style.css");?>
    <?php Yii::app()->getClientScript()->registerCssFile(yii::app()->baseUrl."/style/fontend/css/video-js.css");?>
    <script>
        videojs.options.flash.swf = "video-js.swf";
    </script>
</head>
<body>
<div class="activity">
    <div class="act_hd cs-clear">
        <div class="act_hditem">
            <div class="act_hdtit act_hdicon1">马利宝天团</div>
            <div class="act_hdbox">
                <div>搜索了解逗逼领袖<br />马利宝天团</div>
                <a href="<?=Yii::app()->baseUrl?>/activities">天团详介</a>
            </div>
        </div>
        <!--  -->
        <div class="act_hditem">
            <div class="act_hdtit act_hdicon2">马利宝<br />短视频大赛</div>
            <div class="act_hdbox">
                <div>以＃无乐不作＃态度<br />参与比赛赢大奖</div>
                <a href="<?=Yii::app()->baseUrl?>/activities/contest">欣赏视频</a>
            </div>
        </div>
        <!--  -->
        <div class="act_hditem">
            <div class="act_hdtit act_hdicon3">获奖名单</div>
            <div class="act_hdbox">
                <div>你是本周短视频大赛赢家吗？<br />赶紧了解！</div>
                <a href="<?=Yii::app()->baseUrl?>/activities/winner">查看名单</a>
            </div>
        </div>
    </div>