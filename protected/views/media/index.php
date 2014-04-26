<div class="pbd">
    <div class="section sec_media cs-clear">
        <?php if($newsModel):?>
            <div class="media_main">
                <div class="media_maintit"></div>
                <!--  -->
                <?php foreach($newsModel as $key => $value):?>
                    <div class="mod mod_madia">
                        <h2><?=$value->title;?></h2>
                        <h3><?=date('d M, Y  H:i',$value->update_time);?></h3>
                        <div class="madia_con">
                            <img width="270" height="150" src="<?=$value->photo1;?>" />
                            <p><?=$value->description;?></p>
                        </div>
                        <div class="madia_read"><a href="#">Read more</a><?=$value->comment_number;?> comments</div>
                    </div>
                <?php endforeach;?>
                <!--  -->
<!--                <div class="madia_page">-->
<!--                    <a href="#" class="madia_prev">&lt;</a>-->
<!--                    <a href="#">1</a>-->
<!--                    <a href="#">2</a>-->
<!--                    <a href="#">3</a>-->
<!--                    <a href="#">4</a>-->
<!--                    <a href="#">5</a>-->
<!--                    <a href="#">6</a>-->
<!--                    <a href="#" class="madia_next">&gt;</a>-->
<!--                </div>-->
                <div class="madia_page">
                    <?php
                    $this->widget('CLinkPager',array(
                            'cssFile'=>false,
                            'htmlOptions'=>array('class'=>'madia_pageul cs-clear'),
                            'header'=>'',
                            'previousPageCssClass'=>'madia_prev',
                            'nextPageCssClass'=>'madia_next',
                            'internalPageCssClass'=>'pageitem',
                            'firstPageLabel' => '',
                            'lastPageLabel' => '',
                            'prevPageLabel' => '&lt;',
                            'nextPageLabel' => '&gt;',
                            'pages' => $page,
                            'maxButtonCount'=>6
                        )
                    );?>
                </div>
            </div>
        <?php endif;?>
        <!--  -->
        <?php if($wallModel):?>
        <div class="media_side">
            <div class="media_sidetit"></div>
            <?php foreach($wallModel as $key => $value):?>
                <div class="mod mod_wallpaper">
                    <a href="#">
                        <img width="140" height="87" src="<?=$value->photo1;?>" />
                        <p>点击下载</p>
                    </a>
                </div>
            <?php endforeach;?>
        </div>
        <?php endif;?>
    </div>
</div>

