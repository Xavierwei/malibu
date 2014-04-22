<?php

class Product extends CActiveRecord
{

	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return '{{product}}';
	}

	public function rules()
	{
		return array(
			array('title','unique','on'=>'insert,update'),
			array('title,category_id,content,audit,hot,recommend,photo1,photo2,photo3,photo4,photo5,hit,comment_number,description,keyword,create_time,update_time','default'),
			array('title,category_id','required','on'=>'insert,update'),
			array('category_id','numerical','integerOnly'=>true,'min'=>1,'on'=>'insert,update'),
			array('hit','numerical','integerOnly'=>true,'min'=>0,'on'=>'insert,update'),
			//array('price','numerical','min'=>0.01,'on'=>'insert,update'),
		);
	}

	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => '新闻标题',
			'category_id' => '所属分类',
			'content' => '产品详情',
			'audit' => '审核',
			'hot'=> '置热',
			'recommend' => '推荐',
			'photo1' => '图片1',
			'photo2' => '图片2',
            'photo3' => '图片3',
            'photo4' => '图片4',
            'photo5' => '图片5',
			'hit' => '点击量',
			'comment_number' => '评论数量',
			'description'=> '描述',
			'keyword'=> '关键字',
			'create_time' => '创建时间',
			'update_time' => '更新时间',
		);
	}

	public function relations()
	{
		return array(
			'category' => array(self::BELONGS_TO, 'Category', 'category_id'),
		);
	}

	protected function beforeSave()
	{
		if(parent::beforeSave())
		{
			if($this->isNewRecord)
			{
				$this->create_time=$this->update_time=time();
			}else{
				$this->update_time=time();
			}
			return true;
		}else{
			return false;
		}
	}

}