<?php

class ProductController extends Controller
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
        // product 为马利宝产品
        $model=Menu::model()->find(
            array(
                'condition'=>'component = :component',
                'params'=>array(':component'=>'product'),
            )
        );
        if($model)
        {
            $modelArray=Menu::model()->findAll(
                array(
                    'condition'=>'parent = :parent',
                    'params'=>array(':parent'=>$model->id),
                )
            );
        }
        $this->render('index',array('model'=>$modelArray));
	}

    public function actionRtd()
    {
        // rtd 为椰子味朗姆预调酒
        $model=Menu::model()->find(
            array(
                'condition'=>'component = :component',
                'params'=>array(':component'=>'rtd'),
            )
        );

        $this->render('rtd',array('model'=>$model));
    }

    public function actionOriginal()
    {
        // original 为椰子味朗姆预调酒
        $model=Menu::model()->find(
            array(
                'condition'=>'component = :component',
                'order'    => 'id DESC',
                'params'=>array(':component'=>'original'),
            )
        );

        $children=News::model()->findAll(
            array(
                'condition'=>'menu_id = :menu_id AND audit = 1',        //audit 1表示已经审核
                'params'=>array(':menu_id'=>$model->id),
                'order'    => 'create_time DESC',
                'limit'=>25,
            )
        );
        $this->render('original',array('model'=>$model,'children'=>$children));
    }

    public function actionDrink()
    {
        // original 为椰子味朗姆预调酒
        $modelMenu=Menu::model()->find(
            array(
                'condition'=>'component = :component',
                'params'=>array(':component'=>'original'),
                'order'    => 'id DESC',
            )
        );


        $count=News::model()->count(
            array(
                'condition'=>'audit = 1 AND menu_id = :menu_id',        //audit 1表示已经审核
                'params'=>array(':menu_id'=>$modelMenu->id),
            )
        );

        if($count)
        {
            $page=Yii::app()->request->getParam('page') ? (int)Yii::app()->request->getParam('page') : 0;
            $prevpage = $page == 0 ? $count-1 : $page-1;
            $nextpage = $page == $count-1 ? 0 : $page+1;
            $model=News::model()->find(
                array(
                    'condition'=>'audit = 1 AND menu_id = :menu_id',        //audit 1表示已经审核
                    'params'=>array(':menu_id'=>$modelMenu->id),
                    'order' => 'create_time DESC',
                    'limit'=>1,
                    'offset'=>$page,
                )
            );
            $this->render('drink',array('model'=>$model,'prevpage'=>$prevpage,'nextpage'=>$nextpage));
        }
    }
}
