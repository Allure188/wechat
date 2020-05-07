<?php

use think\Route;

//查询全部
Route::get('article','api/article/getArticle');
//查询单条
Route::get('one/:id','api/article/getIdArticle');
//增加
Route::post('article','api/article/addArticle');
//更新
Route::put('article/:id','api/article/updateArticle');
//删除
Route::delete('article/:id','api/article/deleteArticle');
//获取token路由
Route::post('token','api/token/token');
//获取评论
Route::post('comment','api/comment/comment');
//轮播图查询全部
Route::get('lunbo','api/lunbo/get');
//小图标查询全部
Route::get('litte','api/litte/get');
//项目查询全部
Route::get('project','api/project/get');
//详情页查询单条
Route::get('detail/:id','api/project/one');