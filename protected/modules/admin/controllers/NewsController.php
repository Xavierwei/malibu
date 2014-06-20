<?php

class NewsController extends Controller
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

	public function actionIndex($id='')
	{
		$this->actionList($id);
	}

	public function actionList($id='')
	{
        $model=new News();
        if(isset($_GET['News'])  || $id)
        {
            if(isset($_GET['News']["menu_id"]) || isset($_GET['News']["title"]) || $id)
            {
                $model->menu_id=isset($_GET['News']["menu_id"]) ? $_GET['News']["menu_id"] : $id ;
                $model->title=isset($_GET['News']["title"]) ? $_GET['News']["title"] : '';

                $criteria = new CDbCriteria();
                $criteria->with = 'menu';

                if($model->title)
                {
                    $criteria->addCondition("t.title LIKE :title");
                    $criteria->params[':title']= '%'.$model->title.'%';
                }

                if($model->menu_id)
                {
                    $criteria->addCondition('menu_id = :menu_id');
                    $criteria->params[':menu_id']=$model->menu_id;
                }

                $count = News::model()->count($criteria);
                $pager = new CPagination($count);
                $pager->pageSize = 15;
                $criteria->order = 't.update_time DESC';
                $pager->applyLimit($criteria);
                $data = News::model()->findAll($criteria);
            }
        }
        else
        {
            $criteria = new CDbCriteria();
            $criteria->with = 'menu';
            $count = News::model()->count($criteria);
            $pager = new CPagination($count);
            $pager->pageSize = 15;
            $pager->applyLimit($criteria);
            $data = News::model()->findAll($criteria);
        }
        $this->render('list',array('data'=>$data,'page'=>$pager,'model'=>$model));
	}

	public function actionCreat()
	{
		$model = new News();
		if(Yii::app()->request->getParam('News'))
		{
			$model->attributes=Yii::app()->request->getParam('News');
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
		if(Yii::app()->request->getParam('News'))
		{
			$model->attributes=Yii::app()->request->getParam('News');

			if($model->save()){
				Yii::app()->user->setFlash('submit','信息提交成功！');
				$this->redirect(array('list'));
			}else{
				Yii::app()->user->setFlash('submit','信息提交失败！');
			}
		}
		$this->render('edit',array('model'=>$model));
	}

	public function actionHot(){
		$model=$this->loadModel();
		$model->hot=1-$model->hot;
		if($model->update()){
			Yii::app()->user->setFlash('submit','置热提交成功！');
		}else{
			Yii::app()->user->setFlash('submit','置热提交失败！');
		}
		$this->redirect(array('list'));
	}

	public function actionRecommend(){
		$model=$this->loadModel();
		$model->recommend=1-$model->recommend;
		if($model->update()){
			Yii::app()->user->setFlash('submit','推荐提交成功！');
		}else{
			Yii::app()->user->setFlash('submit','推荐提交失败！');
		}
		$this->redirect(array('list'));
	}

	public function actionAudit(){
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
			$count = News::model()->updateAll(array("audit"=>1)," `id` in ('".$id."')");
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
			$count = News::model()->updateAll(array("audit"=>0)," `id` in ('".$id."')");
			if($count){
				Yii::app()->user->setFlash('submit','审核提交成功！');
			}else{
				Yii::app()->user->setFlash('submit','审核提交失败！');
			}
		}
		$this->redirect(array('list'));
	}

	public function actionDelete(){
		$model=$this->loadModel();
		$model->delete();
		Yii::app()->user->setFlash('submit','删除提交成功！');
		$this->redirect(array('list'));
	}

	public function actionDeleteAll()
	{
		if(Yii::app()->request->getParam('id')&&is_array(Yii::app()->request->getParam('id'))){
			$count = News::model()->deleteByPk(Yii::app()->request->getParam('id'));
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
				$this->_model=News::model()->findByPk(Yii::app()->request->getParam('id'));
			}
			if($this->_model===null){
				throw new CHttpException(404,'LoadModel无法加载模型');
			}
		}
		return $this->_model;
	}
}