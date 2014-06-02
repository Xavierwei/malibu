<?php

class ActivitiesController extends Controller
{
	public $layout='activities_main';
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
        $this->render('index');
	}

    public function actionContest()
    {
        $model=Activities::model()->findAll();
        $this->render('contest',array('model'=>$model));
    }

    public function actionSetStar()
    {

    }

}
