<div class="act_con">
    <div class="act_contit"></div>
    <!-- mod txt -->
    <div class="act_contxt">
        <p>崇尚“无乐不作”、机智迷人的你，一定也擅长发现乐趣、制造乐趣。马利宝启动秒拍大赛，爆嗨招募“作乐达人”！</p>
        <p>对捉弄好友有什么心得妙法？秒拍分享！怎样的贱招，最能快速活跃气氛？秒拍教授一下！你的朋友有什么令人捧腹的怪癖？秒拍记录捧红TA！好友聚会出现搞笑窘迫一刻？当然要赶紧秒拍！</p>
        <p>你够无乐不作么？即刻加入比赛证明“作乐”能力吧，参与就有机会赢得马利宝惊喜大奖。</p>
    </div>
    <!-- mod -->
    <?php if($model):?>
        <div class="act_awardmod ">
            <div class="act_wordtit">第1周</div>
            <!--  -->
             <div class="act_concarlist">
                <ul class="act_videolist act_videocar cs-clear mycarousel" id="">
                <?php foreach($model as $key => $value):?>
                    <li class="act_videoitem">
                        <!--  -->
                        <div class="act_video" onclick=viewVideo('<?=Yii::app()->createUrl('/activities/video',array('url'=>$value->video_url))?>') ><img src="<?=Yii::app()->baseUrl.$value->photo_url?>" /></div>
                        <div class="act_videoinfo">
                            <p class="act_infotiem"><?=date('Y-m-d',$value->create_time)?></p>
                            <div class="act_infouser">上传者 <?=$value->author?> <span><img src="<?=Yii::app()->baseUrl.'/style/fontend/'?>img/act_weiboicon.png" /></span></div>
                            <div class="act_convote cs-celar"><a href="<?=Yii::app()->createUrl('/activities/setstar',array('id'=>$value->id))?>" class="fl">我要投票</a><span class="fr">得票数 <em><?=$value->hit?></em></span></div>
                            <div class="act_votestatbg"><p class="act_votestat" style="width: <?=Activities::getStar($value->hit)?>%"></p></div>
                        </div>
                        <!--  -->
                    </li>
                <?php endforeach;?>
                </ul>
             </div>
            <!--  -->
        </div>
    <?php endif;?>


</div>