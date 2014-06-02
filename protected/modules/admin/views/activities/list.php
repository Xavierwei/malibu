<div class="content">
	<?php $form=$this->beginWidget('CActiveForm',array(
		'id'=>'listForm',
	    'action'=>array('/admin/activities/auditAll/'),
	));?>
	<table class="contentTab listTab" width="100%">
		<tr>
			<td class="titleTd" colspan="16">投票管理</td>
		</tr>
		<?php
			if(Yii::app()->user->hasFlash('submit')){
				echo '<tr><td class="leftTd" colspan="14"><p class="submitInfo">'.Yii::app()->user->getFlash('submit').'</p></td></tr>';
			}
		?>
		<tr>
			<th class="leftTd" width="20"><?php echo CHtml::checkBox('',false,array('class'=>'checkAll'))?></th>
			<th><?php echo $form->labelEx($model,'id'); ?></th>
			<th >图片</th>
			<th><?php echo $form->labelEx($model,'title'); ?></th>
			<th><?php echo $form->labelEx($model,'hit'); ?></th>
			<th><?php echo $form->labelEx($model,'author'); ?></th>
			<th><?php echo $form->labelEx($model,'update_time'); ?></th>
			<th><?php echo $form->labelEx($model,'audit'); ?></th>
			<th>操作</th>
		</tr>
		<?php foreach($data as $key=>$item){ ?>
			<tr>
				<td class="leftTd"><?php echo CHtml::checkBox('id[]',false,array('value'=>$item->id))?></td>
				<td><?php echo $item->id;?></td>
				<td width="60"><?php echo $item->photo_url!=''?CHtml::image($item->photo_url,$item->title,array('height'=>'40px')):'';?></td>
				<td><?php echo CHtml::link($item->title,array('/admin/activities/edit/','id'=>$item->id)); ?></td>
				<td><?php echo $item->hit;?></td>
				<td><?php echo $item->author;?></td>
				<td><?php echo date("Y-m-d",$item->update_time);?></td>
				<?php $audit = $item->audit==1?'<img src="'.yii::app()->baseUrl.'/style/admin/images/audit.gif">':'<img src="'.yii::app()->baseUrl.'/style/admin/images/unaudit.gif">';?>
				<td><?php echo CHtml::link($audit,array('/admin/activities/audit/','id'=>$item->id)); ?></td>
				<td><?php echo CHtml::link('<img src="'.yii::app()->baseUrl.'/style/admin/images/edit.gif">',array('/admin/activities/edit/','id'=>$item->id)); ?> <?php echo CHtml::link('<img src="'.yii::app()->baseUrl.'/style/admin/images/del.gif">',array('/admin/activities/delete/','id'=>$item->id),array('class'=>'delete','id'=>$item->id)); ?></td>
			</tr>
		<?php }?>
		<tr>
			<td class="pageTd" colspan="16">
				<div class="action">
					<?php echo CHtml::submitButton('审核',array('class'=>'button'));?>
					<?php echo CHtml::Button('未审核',array('class'=>'button','onclick'=>'formSubmit("'.$this->createUrl('/admin/activities/unAuditAll/').'","")'));?>
					<?php echo CHtml::Button('删除',array('class'=>'button','onclick'=>'formSubmit("'.$this->createUrl('/admin/activities/deleteAll/').'","确定要删除吗？")'));?>
				</div>
				<?php    
				$this->widget('CLinkPager',array(    
					'header'=>'',    
					'firstPageLabel' => '首页',
					'lastPageLabel' => '末页',
					'prevPageLabel' => '上一页',
					'nextPageLabel' => '下一页',
					'pages' => $page,
					'maxButtonCount'=>13
					)    
				);?>
			</td>
		</tr>
	</table>
	<?php $this->endWidget(); ?>
</div>