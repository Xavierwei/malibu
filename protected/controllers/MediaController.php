<?php

class MediaController extends Controller
{
	public $layout='main';
	public $_model;

	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow', // allow authenticated users to access all actions
				'users'=>array('*'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	public function actionIndex()
	{
        $model=Menu::model()->findByPk(1);              //1为马利宝品牌
		$this->render('index',array('model'=>$model));
	}


	public function loadModel()
	{
		if($this->_model===null)
		{
			$this->_model=Site::model()->findByPk(1);
		}
		if($this->_model===null){
			throw new CHttpException(404,'LoadModel无法加载模型');
		}
		return $this->_model;
	}
}
