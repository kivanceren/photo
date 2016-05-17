<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\Uploadform */

$this->title = 'Create Uploadform';
$this->params['breadcrumbs'][] = ['label' => 'Uploadforms', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="uploadform-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
