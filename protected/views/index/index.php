		<!--  -->
		<div class="pbd">
			<div class="section sec_home cs-clear">
				<div class="sechome_pho">
                    <?php echo CHtml::image($model->photo1,$model->title);?>
                </div>
				<div class="sechome_info">
					<h2 class="protit"><?=$model->title?></h2>
                    <div style="margin-top:15px;">
                    <video id="example_video_1" class="video-js vjs-default-skin" poster="video/index.jpg" controls preload="none" width="415" height="250"
                           data-setup="{}">
                        <source src="video/index.mp4" type='video/mp4' />
                        <source src="video/index.webm" type='video/webm' />
                    </video>
                    </div>
					<p class="secpro_txt"><?=$model->content;?></p>
			</div>
		</div>
		<!--  -->