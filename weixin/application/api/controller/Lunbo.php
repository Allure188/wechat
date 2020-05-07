<?php


namespace app\api\controller;


use think\Controller;
use app\api\model\Lunbo as LunboModel;

class Lunbo extends Controller
{
    //查询所有
    public function get(){
        $data=LunboModel::all();
        return json([
            'status'=>1,
            'msg'=>'查询成功',
            'data'=>$data
        ]);
    }
}