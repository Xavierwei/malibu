<div class="content">
	<?php $form=$this->beginWidget('CActiveForm',array(
		'htmlOptions'=>array('enctype'=>'multipart/form-data'),
		'focus'=>array($model,'title'),
	));?>
	<table class="contentTab" width="100%">
		<tr>
			<td class="titleTd" colspan="6">投票管理</td>
		</tr>
		<tr>
			<td class="leftTd" width="100">&nbsp;</td>
			<td colspan="5">
				<?php
				if(Yii::app()->user->hasFlash('submit')){
					echo '<p class="submitInfo">'.Yii::app()->user->getFlash('submit').'</p>';
				}else{
					echo'<p class="note">带<span class="required">*</span>为必填项</p>';
				}
				?>
				<?php echo CHtml::errorSummary($model); ?>
			</td>
		</tr>
		<tr>
			<td class="leftTd" width="100"><?php echo $form->labelEx($model,'title'); ?></td>
            <td colspan="5">
				<?php echo $form->textField($model,'title',array('value'=>$model->title,'class'=>'commonText'));?>
				<?php echo $form->error($model,'title'); ?>
			</td>
		</tr>
        <tr>
            <td class="leftTd" width="100"><?php echo $form->labelEx($model,'author'); ?></td>
            <td colspan="5">
                <?php echo $form->textField($model,'author',array('value'=>$model->title,'class'=>'commonText'));?>
                <?php echo $form->error($model,'author'); ?>
            </td>
        </tr>
        <tr>
            <td class="leftTd" width="100"><?php echo $form->labelEx($model,'video_url'); ?></td>
            <td colspan="5">
                <?php echo $form->textField($model,'video_url',array('value'=>$model->video_url,'class'=>'commonText'));?>
                <?php echo $form->error($model,'video_url'); ?>
            </td>
        </tr>
		<tr>
			<td class="leftTd"><?php echo '封面' ?></td>
			<td>
                    <?php echo CHtml::Button('上传封面',array('id'=>'uploadButton1','class'=>'uploadButton'));?>
                    <?php echo CHtml::activeHiddenField($model,'photo_url',array('value'=>$model->photo_url,'id'=>'photo_url'));?>
                    <?php echo $form->error($model,'photo_url'); ?>

                    <?php
                    $this->widget('ext.kindeditor.KindUploadWidget',array(
                        'id'=>'uploadButton1',
                        'dir'=>'image/activities',
                        'preview'=>'photoPreview1',
                        'delete'=>'photoDelete1',
                        'callback_url'=>Yii::app()->createUrl('/admin/activities/photoSave'),
                        'thumbWidth'=>146,
                        'thumbHeight'=>150,
                        'parameters'=>array(
                            'id'=>$model->id,
                            'name'=>'photo_url',
                        )
                    ));
                    ?>
			</td>
		</tr>
		<tr>
			<td class="leftTd">预览</td>
			<td>
				<?php echo CHtml::image($model->photo_url!=''?$model->photo_url:yii::app()->baseUrl.'/style/admin/images/noPhoto.png',$model->title,array('id'=>'photoPreview1','class'=>'photoPreview','height'=>'50px'));?>
				<?php echo CHtml::ajaxLink(
			        '删除', 
			        array('/admin/activities/photoDelete'),
			        array(
			            'data'=>array('id'=>$model->id,'name'=>'photo_url','photo_url'=>'js:$("#photo_url").val()','YII_CSRF_TOKEN'=>Yii::app()->request->csrfToken),
			            'type'=>"post",
			            'success' => 'js:function(data){
			                $("#photoDelete1").hide();
			                $("#photoPreview1").attr("src","'.yii::app()->baseUrl.'/style/admin/images/noPhoto.png");
			                $("#photo_url").val("");
			            }'
			        ),
			        array('id'=>'photoDelete1','class'=>'photoDelete','style'=>$model->photo_url!=''?'':'display:none')
			    );?>
			</td>
		</tr>
		<tr>
			<td class="leftTd" width="100"><?php echo $form->labelEx($model,'audit'); ?></td>
            <td colspan="5">
				<?php echo $form->radioButtonList($model,'audit',array(0=>'未审核',1=>'已审核'),array('separator'=>'&nbsp;&nbsp;'));?>
				<?php echo $form->error($model,'audit'); ?>
			</td>
		</tr>
        <tr>
            <td class="leftTd" width="100"><?php echo $form->labelEx($model,'hit'); ?></td>
            <td colspan="5">
                <?php echo $form->textField($model,'hit',array('value'=>$model->hit,'class'=>'commonText'));?>
                <?php echo $form->error($model,'hit'); ?>
            </td>
        </tr>
		<tr>
			<td class="pageTd" colspan="6"><?php echo CHtml::submitButton($model->isNewRecord ? '添加':'保存',array('class'=>'button'));?></td>
		</tr>
	</table>
	<?php $this->endWidget(); ?>
</div>