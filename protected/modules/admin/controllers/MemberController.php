<?php

class MemberController extends Controller
{
	public $layout='admin';
	private $_model;

	public function filters()
	{	
		return array(
			'accessControl',
		);
		
	}

	public function accessRules()
	{
		return array(
			array('allow',
				'users'=>array('@'),
			),
			array('deny',
				'users'=>array('*'),
			),
		);
	}

	public function actionIndex()
	{
		$this->actionList();
	}

	public function actionList()
	{
		$criteria = new CDbCriteria();
        $count = Member::model()->count($criteria);
        $pager = new CPagination($count);
        $pager->pageSize = 20;    
        $pager->applyLimit($criteria);
        $data = Member::model()->findAll($criteria);
        $this->render('list',array('data'=>$data,'page'=>$pager,'model'=>Member::model()));
	}

	public function actionCreat()
	{
		$model = new Member();
		if(Yii::app()->request->getParam('Member'))
		{
			$_POST['Member']['password'] = md5($_POST['Member']['password']);
			$model->attributes=Yii::app()->request->getParam('Member');
			if($model->save()){
				Yii::app()->user->setFlash('submit','信息提交成功！');
				$this->redirect(array('list'));
			}else{
				Yii::app()->user->setFlash('submit','信息提交失败！');
			}
		}
		$this->render('edit', array('model'=>$model));
	}

	public function actionEdit()
	{
		$model=$this->loadModel();
		if(Yii::app()->request->getParam('Member'))
		{
			$_POST['Member']['password'] = $model->password==$_POST['Member']['password']?$model->password:md5($_POST['Member']['password']);
			$model->attributes=Yii::app()->request->getParam('Member');
			if($model->save()){
				Yii::app()->user->setFlash('submit','信息提交成功！');
				$this->redirect(array('list'));
			}else{
				Yii::app()->user->setFlash('submit','信息提交失败！');
			}
		}
		$this->render('edit',array('model'=>$model));
	}

	public function actionAudit()
	{
		$model=$this->loadModel();
		$model->audit=1-$model->audit;
		if($model->update()){
			Yii::app()->user->setFlash('submit','审核提交成功！');
		}else{
			Yii::app()->user->setFlash('submit','审核提交失败！');
		}
		$this->redirect(array('list'));
	}

	public function actionAuditAll()
	{
		if(Yii::app()->request->getParam('id')&&is_array(Yii::app()->request->getParam('id'))){
			$id = implode("','",Yii::app()->request->getParam('id'));
			$count = Member::model()->updateAll(array("audit"=>1)," `id` in ('".$id."')");
			if($count){
				Yii::app()->user->setFlash('submit','审核提交成功！');
			}else{
				Yii::app()->user->setFlash('submit','审核提交失败！');
			}
		}
		$this->redirect(array('list'));
	}

	public function actionUnAuditAll()
	{
		if(Yii::app()->request->getParam('id')&&is_array(Yii::app()->request->getParam('id'))){
			$id = implode("','",Yii::app()->request->getParam('id'));
			$count = Member::model()->updateAll(array("audit"=>0)," `id` in ('".$id."')");
			if($count){
				Yii::app()->user->setFlash('submit','审核提交成功！');
			}else{
				Yii::app()->user->setFlash('submit','审核提交失败！');
			}
		}
		$this->redirect(array('list'));
	}

	public function actionDelete()
	{
		$model=$this->loadModel();
		$model->delete();
		Yii::app()->user->setFlash('submit','删除提交成功！');
		$this->redirect(array('list'));
	}

	public function actionDeleteAll()
	{
		
		if(Yii::app()->request->getParam('id')&&is_array(Yii::app()->request->getParam('id'))){
			$count = Product::model()->deleteByPk(Yii::app()->request->getParam('id'));
			if($count){
				Yii::app()->user->setFlash('submit','删除提交成功！');
			}else{
				Yii::app()->user->setFlash('submit','删除提交失败！');
			}
		}
		$this->redirect(array('list'));
	}

	public function actionPhotoSave()
	{
		if(Yii::app()->request->isAjaxRequest){
			if(Yii::app()->request->getParam('id')>0){
				$name = Yii::app()->request->getParam('name');
				$root = YiiBase::getPathOfAlias('webroot');
				$model=$this->loadModel();
				if($model->$name!='' && file_exists($root.$model->$name)){
					unlink($root.$model->$name);
				}
				$model->$name=strstr(Yii::app()->request->getParam('photo_url'),'/upload');
				$model->update();
			}
		}
	}

	public function actionPhotoDelete()
	{
		if(Yii::app()->request->isAjaxRequest){
			$root = YiiBase::getPathOfAlias('webroot');
			if(Yii::app()->request->getParam('id')>0){
				$name = Yii::app()->request->getParam('name');
				$model=$this->loadModel();
				if($model->$name!='' && file_exists($root.$model->$name)){
					unlink($root.$model->$name);
				}
				$model->$name='';
				$model->update();
			}else{
				if(file_exists($root.Yii::app()->request->getParam('photo_url'))){
					unlink($root.Yii::app()->request->getParam('photo_url'));
				}
			}
		}
	}

	public function loadModel()
	{
		if($this->_model===null)
		{
			if(Yii::app()->request->getParam('id'))
			{
				$this->_model=Member::model()->findByPk(Yii::app()->request->getParam('id'));
			}
			if($this->_model===null){
				throw new CHttpException(404,'LoadModel无法加载模型');
			}
		}
		return $this->_model;
	}
}