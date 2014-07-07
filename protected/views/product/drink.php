<!--  -->
<div class="pbd">
    <div class=" crumbs">
        <div class="crumbs_drink">
            <a href="<?=Yii::app()->createUrl(Yii::app()->controller->id.'/drink',array('page'=>$prevpage));?>"><span class="drinkicon drinkicon1"></span>上一个</a>
            <a href="<?=Yii::app()->createUrl(Yii::app()->controller->id.'/drink',array('page'=>$nextpage));?>">下一个<span class="drinkicon drinkicon2"></span></a>
        </div>
        <a href="<?=Yii::app()->createUrl(Yii::app()->controller->id.'/Original');?>">返回马利宝朗姆酒介绍</a>
    </div>
    <div class="section sec_pro sec_drink cs-clear">
        <div class=" cs-clear">
            <div class="secDrink_pho">
                <img src="/2<?=$model->photo1?>" width="94" />
            </div>
            <div class="secDrink_info">
                <h2 class="protit "><?=$model->title;?></h2>
                <p class="secpro_txt"><?=$model->content;?></p>
            </div>
        </div>

        <div class="cs-clear video">
            <?=$model->source_url;?>
        </div>
    </div>
</div>
<!--  -->