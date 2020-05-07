<?php


namespace app\api\model;


use think\Model;

class Project extends Model
{
    //查询数据
    protected $table="xm";
    //关联两个数据表
    public function music(){
        return $this->belongsTo('Song','music_id','id');
    }
}