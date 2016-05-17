<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\modules\photoalbum\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Arkadaş Ekle';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">

    <h1><?= Html::encode($this->title) ?></h1>
  

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            
            'username',
            'firstname',
            'lastname',

            ['class' => 'yii\grid\ActionColumn', 'template'=>'{link}',
               
            'buttons' => [

               'link' => function ($data,$model) {
                                return Html::a('<span class="glyphicon glyphicon-plus"></span>',
                                'http://localhost/photo/frontend/web/index.php?r=photoalbum/user/friendship&username='.$model->username.'&name='.$model->firstname.'&surname='.$model->lastname);
                },
            ],
            ], 
        ],
    ]); ?>


    
    <h1><?= "Arkadaşlık İstekleri" ?></h1>
    
     <?= GridView::widget([
        'dataProvider' => $dataProviderOne,
        'filterModel' => $searchModelOne,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            
            'userOne',
            'oFN',
            'oLN',
            
            
    

            ['class' => 'yii\grid\ActionColumn', 'template'=>'{link} {delete}',
               
            'buttons' => [

               'link' => function ($data,$model) {
                                return Html::a('<span class="glyphicon glyphicon-plus"></span>',
                                'http://localhost/photo/frontend/web/index.php?r=photoalbum/user/ekle&username='.$model->userOne);
                },
                'delete' => function ($data,$model) {
                                return Html::a('<span class="glyphicon glyphicon-trash"></span>',
                                'http://localhost/photo/frontend/web/index.php?r=photoalbum/user/sil&username='.$model->userOne);
                },
            ], 
               
            
            ], 
        ],
    ]); ?>

</div>
