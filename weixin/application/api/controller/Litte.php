<?php


namespace app\api\controller;


use think\Controller;
use app\api\model\Litte as LitteModel;

class Litte extends Controller
{
    //查询所有
    public function get(){
        $data=LitteModel::all();
        return json([
            'status'=>1,
            'msg'=>'查询成功',
            'data'=>$data
        ]);
    }
}