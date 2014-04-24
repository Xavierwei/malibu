<!--  -->
<div class="pbd">
    <div class=" crumbs"><a href="<?=Yii::app()->createUrl(Yii::app()->controller->id);?>">返回产品列表</a></div>
    <div class="section sec_pro sec_Original cs-clear">
        <div class="secRUM_pho">
            <img src="<?=$model->photo1;?>" width="62" />
        </div>
        <div class="secRUM_info">
            <h2 class="protit protit_original">马利宝<span>®</span> <?=$model->title;?></h2>
            <p class="secpro_txt"><?=$model->content;?></p>
        </div>
    </div>
    <?php if($children) :?>
    <div class="section sec_prolist">
        <ul class="scrollpic cs-clear" id="mycarousel">
            <?php foreach($children as $key =>$value):?>
                <li class="sec_prolist_item">
                    <img src="<?=$value->photo1;?>" />
                    <p><?=$value->title;?></p>
                    <a href="<?=Yii::app()->createUrl(Yii::app()->controller->id.'/drink',array('id'=>$value->id))?>">查看如何制作</a>
                </li>
            <?php endforeach;?>
        </ul>
        <!-- <p class="scrollbtn prev"></p>
        <p class="scrollbtn next"></p> -->
    </div>
    <?php endif;?>
</div>
<!--  -->