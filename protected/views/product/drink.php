<!--  -->
<div class="pbd">
    <div class=" crumbs">
        <div class="crumbs_drink">
            <a href="<?=Yii::app()->createUrl(Yii::app()->controller->id.'/drink',array('id'=>$model->id,'prev'=>'prev'));?>"><span class="drinkicon drinkicon1"></span>上一个</a>
            <a href="<?=Yii::app()->createUrl(Yii::app()->controller->id.'/drink',array('id'=>$model->id,'next'=>'next'));?>">下一个<span class="drinkicon drinkicon2"></span></a>
        </div>
        <a href="<?=Yii::app()->createUrl(Yii::app()->controller->id.'/Original');?>">返回马利宝朗姆酒介绍</a>
    </div>
    <div class="section sec_pro sec_drink cs-clear">
        <div class="secDrink_pho">
            <img src="<?=$model->photo1?>" width="94" />
        </div>
        <div class="secDrink_info">
            <h2 class="protit "><?=$model->title;?></h2>
            <p class="secpro_txt"><?=$model->content;?></p>
        </div>
        <div class="cs-clear video">
            <embed src="http://player.youku.com/player.php/Type/Folder/Fid/22171680/Ob/1/sid/XNzAyMDEwMDg0/v.swf" quality="high" width="520" height="400" align="middle" allowScriptAccess="always" allowFullScreen="true" mode="transparent" type="application/x-shockwave-flash"></embed>
        </div>
    </div>
</div>
<!--  -->