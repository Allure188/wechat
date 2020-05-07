<?php


namespace app\api\controller;

use think\Controller;
use app\api\model\Article as ArticleModel;

class Article
{
    //查询所有
    public function getArticle(){
        $data=ArticleModel::all();
        return json([
            'status'=>1,
            'msg'=>'查询成功',
            'data'=>$data
        ]);
    }
    //查询单条
    public function getIdArticle($id){
        $data=ArticleModel::get($id);
        if(empty($data)){
            return json([
                'status'=>0,
                'msg'=>'查询的页面不存在',
                'data'=>[]
            ],404);
        }else{
            //把连表查询获取的音乐信息放到$data数组中
            $data['music']=$data->music;
            return json([
                'status'=>1,
                'msg'=>'查询一条信息成功',
                'data'=>$data
            ]);
        }
    }
    //增加
    public function addArticle(){
        //助手函数获取所有以post方法传过来的数据
        $data=input('post.');
        $res=ArticleModel::create($data);
        return json([
            'status'=>1,
            'msg'=>'增加成功',
            'data'=>$res
        ]);
    }
    //更新
    public function updateArticle($id){
        //获取更新请求传过来的数据
        $data=input('put.');
        $res=ArticleModel::where('id','$id')->update($data);
        return json([
            'status'=>1,
            'msg'=>'更新成功',
            'data'=>$data
        ]);
    }
    //删除
    public function deleteArticle($id){
        $res=ArticleModel::destroy($id);
        return json([
            'status'=>1,
            'msg'=>'删除成功',
            'data'=>$res
        ]);
    }
}