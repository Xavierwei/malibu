<?php

class Menu extends CActiveRecord
{
	public $space;
	public $parent_node;
	public $last_brother;

	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return '{{menu}}';
	}

	public function rules()
	{
		return array(
			array('name,component,lft,rgt,parent,depth,content,audit,title,description,keyword,update_time,photo1','default'),
			array('name','required','on'=>'insert,update'),
		);
	}

	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'name' => '栏目名称',
			'component' => '组件名称',
			'lft' => '左值',
			'rgt' => '右值',
			'parent' => '父栏目ID',
			'depth'=> '栏目深度',
            'photo1'=>'图片链接',
			'content' => '栏目内容',
			'audit' => '审核',
			'title' => '标题',
			'description' => '描述',
			'keyword'=> '关键字',
			'update_time' => '更新时间',
		);
	}

	public function getMenuList($index,$value)
	{
		$criteria = new CDbCriteria();
		$criteria->order = 'lft ASC'; 
        $data = Menu::model()->findAll($criteria);
        $list = array($index=>$value);
        foreach($data as $key=>$item){
        	$item->space='';
			for($i=1;$i<=$item->depth;$i++){
				if($item->depth==$i){
					if($item->rgt-$item->lft==1&&$item->parent>0){
						$item->space.='┗ ';
					}else{
						$item->space.='┣ ';
					}
				}else{
					$item->space.='┃ ';
				}
			}
            $list[0]='选择全部';
			$list[$item->id] = $item->space.$item['name'];
		}
		return $list;
	}

    /**
     * 获取一级连接
     */
    public function getRootList()
    {
        $criteria = new CDbCriteria();
        $criteria->addCondition('depth=1');
        return $this->findAll($criteria);
    }

	protected function beforeSave()
	{
		if(parent::beforeSave())
		{
			if($this->isNewRecord)
			{
				$this->update_time=time();
			}else{
				$this->update_time=time();
			}
			return true;
		}else{
			return false;
		}
	}

}