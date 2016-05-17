<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Uploadform */

$this->title = 'Update Uploadform: ' . ' ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Uploadforms', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="uploadform-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
