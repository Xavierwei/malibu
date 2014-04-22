<div class="content">
	<?php $form=$this->beginWidget('CActiveForm',array(
		'id'=>'listForm',
	    'action'=>array('/admin/type/auditAll/'),
	));?>
	<table class="contentTab listTab" width="100%">
		<tr>
			<td class="titleTd" colspan="11">分类管理</td>
		</tr>
		<?php
			if(Yii::app()->user->hasFlash('submit')){
				echo '<tr><td class="leftTd" colspan="11"><p class="submitInfo">'.Yii::app()->user->getFlash('submit').'</p></td></tr>';
			}
		?>
		<tr>
			<th class="leftTd" width="20"><?php echo CHtml::checkBox('',false,array('class'=>'checkAll'))?></th>
			<th><?php echo $form->labelEx($model,'id'); ?></th>
			<th><?php echo $form->labelEx($model,'name'); ?></th>
			<th width="600"><?php echo $form->labelEx($model,'component'); ?></th>
			<th><?php echo $form->labelEx($model,'update_time'); ?></th>
			<th colspan="2">排序</th>
			<th><?php echo $form->labelEx($model,'audit'); ?></th>
			<th>操作</th>
		</tr>
		<?php foreach($data as $key=>$item){ ?>
			<tr>
				<td class="leftTd"><?php echo CHtml::checkBox('id[]',false,array('value'=>$item->id))?></td>
				<td><?php echo $item->id;?></td>
				<td><?php echo $item->space;?><?php echo CHtml::link($item->name,array('/admin/type/edit/','id'=>$item->id)); ?></td>
				<td><?php echo $item->component;?></td>
				<td><?php echo date("Y-m-d",$item->update_time);?></td>
				<td width="10">
					<?php 
						$temp=isset($item->parent_node)?$item->parent_node->lft:0;
						if($key>0&&($item->lft!=$temp+1)){echo CHtml::link('<img src="'.yii::app()->baseUrl.'/style/admin/images/up.gif">',array('/admin/type/moveUp/','id'=>$item->id));}
					?>
				</td>
				<td width="10">
					<?php
                        $temp=isset($item->parent_node)?$item->parent_node->rgt:0;
						if($item->id!=$item->last_brother->id&&($item->rgt!=$temp-1)){echo CHtml::link('<img src="'.yii::app()->baseUrl.'/style/admin/images/down.gif">',array('/admin/type/moveDown/','id'=>$item->id));}
					?>
				</td>
				<?php $audit = $item->audit==1?'<img src="'.yii::app()->baseUrl.'/style/admin/images/audit.gif">':'<img src="'.yii::app()->baseUrl.'/style/admin/images/unaudit.gif">';?>
				<td><?php echo CHtml::link($audit,array('/admin/type/audit/','id'=>$item->id)); ?></td>
				<td><?php echo CHtml::link('<img src="'.yii::app()->baseUrl.'/style/admin/images/edit.gif">',array('/admin/type/edit/','id'=>$item->id)); ?> <?php echo CHtml::link('<img src="'.yii::app()->baseUrl.'/style/admin/images/del.gif">',array('/admin/type/delete/','id'=>$item->id),array('class'=>'delete','id'=>$item->id)); ?></td>
			</tr>
		<?php }?>
		<tr>
			<td class="pageTd" colspan="11">
				<div class="action">
					<?php echo CHtml::submitButton('审核',array('class'=>'button'));?>
					<?php echo CHtml::Button('未审核',array('class'=>'button','onclick'=>'formSubmit("'.$this->createUrl('/admin/type/unAuditAll/').'","")'));?>
				</div>
			</td>
		</tr>
	</table>
	<?php $this->endWidget(); ?>
</div>