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
        // wall 为墙纸下载
        $wallMenu=Menu::model()->find(
            array(
                'condition'=>'component = :component',
                'params'=>array(':component'=>'wall'),
            )
        );
        $wallModel=News::model()->findAll(
            array(
                'order'=>'update_time DESC',
                'limit'=>'6',
                'condition'=>'menu_id = :menu_id AND audit = 1',        //audit 1表示已经审核
                'params'=>array(':menu_id'=>12),
            )
        );

        //news 为新闻
        $criteria = new CDbCriteria();
        $criteria->with = 'category';
        $criteria->addCondition('component = :component AND t.audit=1');
        $criteria->params=array(':component'=>'news');
        $count = Product::model()->count($criteria);
        $pager = new CPagination($count);
        $pager->pageSize = 2;
        $pager->applyLimit($criteria);
        $newsModel = Product::model()->findAll($criteria);


        $this->render('index',array('wallModel'=>$wallModel,'newsModel'=>$newsModel,'page'=>$pager));
	}



}
