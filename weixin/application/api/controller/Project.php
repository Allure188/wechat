<?php


namespace app\api\controller;

use think\Controller;
use app\api\model\Project as ProjectModel;

class Project extends Controller
{
    //查询所有
    public function get(){
        $data=ProjectModel::all();
        return json([
            'status'=>1,
            'msg'=>'查询成功',
            'data'=>$data
        ]);
    }
    //查询单条
    public function one($id){
        $data=ProjectModel::get($id);
        if(!empty($data)){
            $data['music']=$data->music;
            return json([
                'status'=>1,
                'msg'=>'查询信息成功',
                'data'=>$data
            ]);
        }else{
            return json([
                'status'=>0,
                'msg'=>'别找了，没有这个页面:(',
                'data'=>[]
            ],404);
        }
    }
}