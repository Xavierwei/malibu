<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Malibu</title>
    <!--    --><?php //Yii::app()->getClientScript()->registerScriptFile(yii::app()->baseUrl."/style/admin/script/jquery.min.js");?>
    <!--    --><?php //Yii::app()->getClientScript()->registerScriptFile(yii::app()->baseUrl."/style/admin/script/admin.js");?>
    <?php Yii::app()->getClientScript()->registerCssFile(yii::app()->baseUrl."/style/fontend/css/style.css");?>
</head>
<body>
<div class="page">
    <div class="phd" style="top:-97px;" data-animate="top:0" data-time="500" data-easing="easeOutQuart">
        <div class="nav cs-clear">
            <?php
                $model=Menu::model()->getRootList();
                $controller=Yii::app()->controller->id;
                $index = 1;
                foreach($model as $key =>$value)
                {
                    if($controller == $value->component)
                        echo '<a href="' . Yii::app()->createUrl($value->component) . '" class="nav'. $index .' on">' . $value->title .'</a>';
                    else
                        echo '<a href="' . Yii::app()->createUrl($value->component) . '" class="nav'. $index .'">' . $value->title .'</a>';
                    $index++;
                }
            ?>
        </div>
        <a target="_blank" href="http://brand.tmall.com/brandInfo.htm?spm=a220m.1000858.0.0.W93toE&brandId=4533618&scm=1048.1.1.12&rn=d828f0527b0f12f299928ff64e8e1fbc" class="tmalllink"></a>
    </div>