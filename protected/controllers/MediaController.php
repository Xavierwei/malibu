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
        // wall 为椰子味朗姆预调酒
        $wallMenu=Menu::model()->find(
            array(
                'condition'=>'component = :component',
                'params'=>array(':component'=>'wall'),
            )
        );
        if($wallMenu)
        {
            $wallModel=News::model()->findAll(
                array(
                    'order'=>'update_time DESC',
                    'limit'=>'6',
                    'condition'=>'menu_id = :menu_id AND audit = 1',        //audit 1表示已经审核
                    'params'=>array(':menu_id'=>$wallMenu->id),
                )
            );
        }


//        echo "<pre>";
//        print_r($wallModel);
        $this->render('index',array('wallModel'=>$wallModel));
	}



}
