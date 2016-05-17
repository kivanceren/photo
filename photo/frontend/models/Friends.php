<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "friends".
 *
 * @property string $userOne
 * @property string $oFN
 * @property string $oLN
 * @property string $userTwo
 * @property string $tFN
 * @property string $tLN
 * @property string $state
 *
 * @property User $userTwo0
 * @property User $userOne0
 */
class Friends extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'friends';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['userOne', 'oFN', 'oLN', 'userTwo', 'tFN', 'tLN', 'state'], 'required'],
            [['userOne', 'userTwo'], 'string', 'max' => 255],
            [['oFN', 'oLN', 'tFN', 'tLN'], 'string', 'max' => 80],
            [['state'], 'string', 'max' => 5]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'userOne' => 'User One',
            'oFN' => 'O Fn',
            'oLN' => 'O Ln',
            'userTwo' => 'User Two',
            'tFN' => 'T Fn',
            'tLN' => 'T Ln',
            'state' => 'State',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUserTwo0()
    {
        return $this->hasOne(User::className(), ['username' => 'userTwo']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUserOne0()
    {
        return $this->hasOne(User::className(), ['username' => 'userOne']);
    }
}
