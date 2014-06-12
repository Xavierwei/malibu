<!--  -->
<div class="pbd">
    <div class=" crumbs"><a href="<?=Yii::app()->createUrl(Yii::app()->controller->id);?>">返回产品列表</a></div>
    <div class="section sec_pro sec_RTD cs-clear">
        <div class="secRTD_pho">
            <?=CHtml::image($model->photo1,$model->title);?>
        </div>
        <div class="secRTD_info">
            <h2 class="protit protit_rtd">马利宝<span>®</span> <?=$model->title?></h2>
            <p class="secpro_txt"><?=$model->content;?></p>
        </div>
    </div>
</div>
<!--  -->