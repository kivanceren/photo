<?php

namespace frontend\models;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the model class for table "contact".
 *
 * @property integer $id
 * @property string $name
 * @property string $pic
 */
class Contact extends \yii\db\ActiveRecord
{
    public $upload_file;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'contact';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name', 'pic'], 'string', 'max' => 255],
             [['upload_file'], 'file', 'skipOnEmpty' => true, 'extensions' => 'jpg, png', 'mimeTypes' => 'image/jpeg, image/png',],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'pic' => 'Pic',

             'upload_file' => 'Upload File',
        ];
    }

    public function uploadFile() {
        // get the uploaded file instance
        $image = UploadedFile::getInstance($this, 'upload_file');
 
        // if no image was uploaded abort the upload
        if (empty($image)) {
            return false;
        }
 
        // generate random name for the file
        $this->pic = time(). '.' . $image->extension;
 
        // the uploaded image instance
        return $image;
    }
 
    public function getUploadedFile() {
        // return a default image placeholder if your source avatar is not found
        $pic = isset($this->pic) ? $this->pic : 'default.png';
        return Yii::$app->params['fileUploadUrl'] . $pic;
    }
}
