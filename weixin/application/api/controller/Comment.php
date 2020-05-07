<?php


namespace app\api\controller;


use think\Controller;
use think\Request;

class Comment extends Controller
{
    public function comment(){
        $arr=input('post.');
        //获取token令牌
        $token=Request::instance()->header('token');
        //把token赋值给$arr数组
        $arr['token']=$token;
        return json($arr);
    }
}