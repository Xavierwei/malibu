<div class="pbd">
    <div class="section sec_media cs-clear">
        <div class="media_main">
            <div class="media_maintit"></div>
            <!--  -->
            <div class="mod mod_madia">
                <h2>马利宝新闻标题标题</h2>
                <h3>3 Feb, 2012 14:55 </h3>
                <div class="madia_con">
                    <img src="style/fontend/img/madia_demo.jpg" />
                    <p>Have you heard this year's hottest new track from Ne-Yo!? Check out the fiery music video and
                        download the track for FREE! - On the Malibu Red Facebook page, <a href="#">http://www.facebook.com/MalibuRed/app_270339236347932</a></p>
                </div>
                <div class="madia_read"><a href="#">Read more</a>3 comments</div>
            </div>
            <!--  -->
            <div class="mod mod_madia">
                <h2>马利宝新闻标题标题</h2>
                <h3>3 Feb, 2012 14:55 </h3>
                <div class="madia_con">
                    <img src="style/fontend/img/madia_demo.jpg" />
                    <p>Have you heard this year's hottest new track from Ne-Yo!? Check out the fiery music video and
                        download the track for FREE! - On the Malibu Red Facebook page, <a href="#">http://www.facebook.com/MalibuRed/app_270339236347932</a></p>
                </div>
                <div class="madia_read"><a href="#">Read more</a>3 comments</div>
            </div>
            <!--  -->
            <div class="madia_page">
                <a href="#" class="madia_prev">&lt;</a>
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#" class="madia_next">&gt;</a>
            </div>
        </div>
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