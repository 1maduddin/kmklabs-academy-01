<?php 
$I = new AcceptanceTester($scenario);
$I->wantTo('edit existing product');

$I->amOnPage('product/1/edit');
$I->see('Edit Product');
