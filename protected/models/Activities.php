<?php

/**
 * This is the model class for table "{{activities}}".
 *
 * The followings are the available columns in table '{{activities}}':
 * @property string $id
 * @property string $title
 * @property string $author
 * @property string $video_url
 * @property string $photo_url
 * @property string $hit
 * @property integer $audit
 * @property string $create_time
 * @property string $update_time
 */
class Activities extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{activities}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title, author, video_url, photo_url, hit', 'required'),
			array('audit', 'numerical', 'integerOnly'=>true),
			array('title, author', 'length', 'max'=>30),
			array('video_url, photo_url', 'length', 'max'=>255),
			array('hit, create_time, update_time', 'length', 'max'=>11),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, title, author, video_url, photo_url, hit, audit, create_time, update_time', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'id',
			'title' => '标题',
			'author' => '作者',
			'video_url' => 'mp4',
			'photo_url' => '封面',
			'hit' => '投票数量',
			'audit' => '审核',
			'create_time' => '创建时间',
			'update_time' => '修改时间',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id,true);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('author',$this->author,true);
		$criteria->compare('video_url',$this->video_url,true);
		$criteria->compare('photo_url',$this->photo_url,true);
		$criteria->compare('hit',$this->hit,true);
		$criteria->compare('audit',$this->audit);
		$criteria->compare('create_time',$this->create_time,true);
		$criteria->compare('update_time',$this->update_time,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Activities the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
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

    public static function getStar($num)
    {
        if(!$num)
            return 0;
        else if($num <= 10)
            return 20;
        else if($num <= 50)
            return 40;
        else if($num <= 200)
            return 60;
        else if($num <= 500)
            return 80;
        else
            return 100;
    }
}
