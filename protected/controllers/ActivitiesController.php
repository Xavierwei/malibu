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

    public function actionWinner()
    {
        $this->render('winner');
    }

    public function actionContest()
    {
        $model=Activities::model()->findAll();
        $this->render('contest',array('model'=>$model));
    }

    public function actionSetStar($id)
    {
        if(Drtool::getMyCookie('setStar_'.(int)$id))
        {
            $data=array(
              'error'=>1,
              'message'=>'该视频您已经参与过投票',
            );
           echo CJSON::encode($data);
        }
        else
        {
            if((int)$id)
            $update=Activities::model()->updateByPk(
                (int)$id,
               array(
                   'hit'=>new CDbExpression('hit+1'),
               )
            );
            if($update)
            {
                Drtool::setMyCookie('setStar_'.(int)$id,0.5);
                $data=array(
                    'success'=>1,
                    'message'=>'投票成功',
                );
                echo CJSON::encode($data);
            }
        }
    }

    public function actionVideo($url)
    {
        $this->layout=false;
        $this->render('video',array('url'=>$url));
    }

}
