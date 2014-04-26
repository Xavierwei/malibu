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
                            <div class="madiapho_slide">
                                <ul class="madiapho_list">
                                    <?php for($i=1;$i<=5;$i++):?>
                                        <?php if($value->attributes['photo'.$i]):?><li><img src="<?=$value->attributes['photo'.$i];?>" /></li><?php endif;?>
                                    <?php endfor;?>
                                </ul>
                                <div class="madia_arr madia_prev"></div>
                                <div class="madia_arr madia_next"></div>
                            </div>
                            <p><?=$value->description;?></p>
                        </div>
                        <div class="madia_read"><a href="#">Read more</a><?=$value->comment_number;?> comments</div>
                    </div>
                <?php endforeach;?>
                <!--  -->
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

