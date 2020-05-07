<?php


namespace app\api\model;


use think\Model;

class Article extends Model
{
    protected $table="wechat";

    public function getImageAttr($value){
        $baseurl="http://www.wxapi.com/static";
        return $baseurl.$value;
    }
    public function getPictureAttr($value){
        $baseurl="http://www.wxapi.com/static";
        return $baseurl.$value;
    }
    //关联两个数据表
    public function music(){
        //$this->belongsTo('要关联的表的模型','wechat表的字段','music表的字段')
        return $this->belongsTo('Music','music_id','id');
    }
}