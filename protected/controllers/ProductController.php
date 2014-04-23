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
                'params'=>array(':component'=>'original'),
            )
        );

        $children=News::model()->findAll(
            array(
                'condition'=>'menu_id = :menu_id AND audit = 1',        //audit 1表示已经审核
                'params'=>array(':menu_id'=>$model->id),
            )
        );
        $this->render('original',array('model'=>$model,'children'=>$children));
    }

    public function actionDrink($id)
    {
        if($_GET['prev']=='prev')
        {
            $model=News::model()->find(
                array(
                    'condition'=>'id < :id AND audit = 1',        //audit 1表示已经审核
                    'params'=>array(':id'=>intval($id)),
                )
            );
        }
        elseif($_GET['next']=='next')
        {
            $model=News::model()->find(
                array(
                    'condition'=>'id > :id AND audit = 1',        //audit 1表示已经审核
                    'params'=>array(':id'=>intval($id)),
                )
            );
        }
        else
        {
            $model=News::model()->find(
                array(
                    'condition'=>'id = :id AND audit = 1',        //audit 1表示已经审核
                    'params'=>array(':id'=>intval($id)),
                )
            );
        }

        if($model)
        {
            $this->render('drink',array('model'=>$model));
        }
        else
        {
            $model=News::model()->find(
                array(
                    'condition'=>'id = :id AND audit = 1',        //audit 1表示已经审核
                    'params'=>array(':id'=>intval($id)),
                )
            );

            $this->render('drink',array('model'=>$model));
        }

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
