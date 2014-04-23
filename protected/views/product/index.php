<!--  -->
<div class="pbd">
    <div class="section sec_propage cs-clear">
        <div class=" pt_pro pt_pro1">
            <div class="pt_propho"><?=CHtml::image($model[0]->photo1,$model[0]->title);?></div>
            <h2 class="protit protit_rtd">马利宝<span>®</span> <?=$model[0]->title?></h2>
            <p><a href="<?=Yii::app()->createUrl(Yii::app()->controller->id.'/'.$model[0]->component)?>" class="pro_viewlink">查看具体信息</a></p>
        </div>
        <div class=" pt_pro pt_pro2">
            <div class="pt_propho"><?=CHtml::image($model[1]->photo1,$model[1]->title);?></div>
            <h2 class="protit protit_original">马利宝<span>®</span> <?=$model[1]->title?></h2>
            <p><a href="<?=Yii::app()->createUrl(Yii::app()->controller->id.'/'.$model[1]->component)?>" class="pro_viewlink">查看具体信息</a></p>
        </div>
    </div>
</div>
<!--  -->