		<!--  -->
		<div class="pbd">
			<div class="section sec_home cs-clear">
				<div class="sechome_pho">
                    <?php echo CHtml::image($model->photo1,$model->title);?>
                </div>
				<div class="sechome_info">
					<h2 class="protit"><?=$model->title?></h2>
                    <div style="margin-top:15px;"><embed src="http://player.video.qiyi.com/fde79cb74c2f4ca1134aa7edcd63475f/0/0/w_19rr4sx261.swf-albumId=1361396309-tvId=1361396309-isPurchase=0-cnId=7" allowFullScreen="true" quality="high" width="415" height="330" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed></div>
					<p class="secpro_txt"><?=$model->content;?></p>
			</div>
		</div>
		<!--  -->