<?php


namespace app\api\controller;


use think\Controller;
use app\api\model\User;

class Token extends Controller
{
    public function token(){
        //获取前端传过来的code码（临时凭证）
        $code=input('post.code');
        //小程序开发的appid
        $appid="wx9c63ce9a005fb7ed";
        //秘钥
        $secret="0d63a84f221c589ec81226efc3e91194";
        //登录凭证校验的请求地址,并发送临时凭证，秘钥和小程序开发的appid
        $url="https://api.weixin.qq.com/sns/jscode2session?appid=$appid&secret=$secret&js_code=$code&grant_type=authorization_code";
        //使用CURL发送HTTP
        $ch = curl_init();
        curl_setopt($ch,CURLOPT_URL,$url);
        curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
        curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST,0);
        curl_setopt ($ch, CURLOPT_SSL_VERIFYPEER,0);
        $output = curl_exec($ch);
        if($output === FALSE ){
            echo "CURL Error:".curl_error($ch);
        }
        curl_close($ch);
        //把$output转化为数组模式
        $curl_arr=json_decode($output,true);
        //先查询表中是否有openid
        $is=User::get(['openid'=>$curl_arr['openid']]);
        if($is){
            //有openid就直接拿
            $openid=$is->id;
        }else{
            //没有就把output数组中的openID放到数据表中
            $arr=array(
                'openid'=>$curl_arr['openid']
            );
            //增加数据到数据表
            $res=User::create($arr);
            //然后在拿到表中的openid
            $openid=$res->id;
        }
        //生成的token令牌放到数据表中
        $token=$this->general(32);
        User::where('id',$openid)->update(['token'=>$token]);
        return json([
            'token'=>$token
        ]);
    }
    //生成token令牌
    public function general($length){
        //获取所有英文字符和数组
        $str="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
        $arr="";
        for($i=0;$i<$length;$i++){
            $arr=$arr.$str[rand(0,61)];
        }
        return $arr;
    }
}