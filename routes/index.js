const express = require('express');
const conn = require('../db/db');
const router = express.Router();
const svgCaptcha = require('svg-captcha');

let userCode = []; // 存储用户手机验证码

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});


/*
  获取首页轮播图
*/
router.get('/api/homecasual', (req, res)=>{
  conn.query('select * from pdd_homecasual',(error, results, fields)=>{
    if(error) res.json({status: 500, message:'服务器未响应。'});
    else res.json({status: 200, message: results});
  })
});
/*
 获取首页导航
*/
router.get('/api/homenav', (req, res)=>{
  const navJson = require('./../data/homenav');
  res.json({status: 200, message: navJson.data});
});
/*
 获取首页商品列表
*/
router.get('/api/homeshoplist', (req, res)=>{
  const data = require('./../data/shopList');
  res.json({status: 200, message: data});
});
/*
 获取搜索分类列表
*/
router.get('/api/searchgoods', (req, res)=>{
  const data = require('./../data/search');
  res.json({status: 200, message: data});
});
/* 
 获取推荐商品列表
*/
router.get('/api/recommendshoplist', (req, res)=>{
  let pageNo = parseInt(req.query.page) || 1;
  let pageSize = parseInt(req.query.count) || 20;
  conn.query(`select * from pdd_recommend limit ${(pageNo-1)*pageSize},${pageSize}`, (error, results, fields)=>{
    if(error) res.json({status: 500, message:'服务器未响应。'});
    else setTimeout(()=>{
      res.json({status: 200, message: results});
    },1000)
  })
});
/*
获取图形验证码
*/
router.get('/api/captcha', (req, res)=>{
  let captcha = svgCaptcha.create({
    size: 4,
    noise: 3,
    color: true,
  });
  req.session.captcha = captcha.text.toLowerCase();
  res.type('svg');
  res.status(200).send(captcha.data);
})
/*
生成手机登录验证码并返回
*/
router.get('/api/usercode', (req, res)=>{ 
  if(!req.query.phone){
    res.json({status: 500, message:'请输入手机号。'});
  }
  let code = Math.random().toFixed(6).slice(-6);
  let phone = req.query.phone;
  userCode[phone] = code;
  res.json({status: 200, message:code});
})
/*
手机验证码登录
*/
router.post('/api/logincode', (req, res)=>{
  let phone = req.body.phone;
  let code = req.body.code;
  if(userCode[phone] !== code){ // 验证码错误
    res.json({status: 500, message:'验证码错误。'});
  }else{  // 验证码正确
    delete userCode[phone];
    conn.query(`select * from pdd_userinfo where user_phone='${phone}';`, (error, results, fields)=>{
      if(error) res.json({status: 500, message:'服务器未响应。'});
      else if(results[0]){  // 用户已注册
        let data = JSON.parse(JSON.stringify(results[0]));
        req.session.userId = data.user_id;
        res.json({status: 200, message:{id: data.user_id, name: data.user_name, phone: data.user_phone}});
      }else{  // 新用户
        conn.query(`insert into pdd_userinfo(user_name,user_phone) values('${phone}','${phone}')`, (error, results, fields)=>{
          if(error) res.json({status: 500, message:'服务器未响应。'});
          else{
            conn.query(`select * from pdd_userinfo where user_phone='${phone}'`, (error, results, fields)=>{
              if(error) res.json({status: 500, message:'服务器未响应。'});
              else{ 
                data = JSON.parse(JSON.stringify(results[0]));
                req.session.userId = data.user_id;
                res.json({status: 200, message: {
                  id: results[0].user_id,
                  phone: results[0].user_phone, 
                  name: results[0].user_name, 
                  sex: results[0].user_sex, 
                  address: results[0].user_address, 
                  birthday: results[0].user_birthday,
                  signature: results[0].user_signature
                }});
              }
            })
          }
        });
      }
    });
  }
})
/*
账号密码登录
*/
router.post('/api/loginpwd', (req, res)=>{
  let username = req.body.username;
  let password = req.body.password;
  let captcha = req.body.captcha.toLowerCase();

  if(captcha !== req.session.captcha){ // 验证码错误
    res.json({status: 500, message:'验证码错误。'});
    delete req.session.captcha;
    return;
  }else{  // 验证码正确
    delete req.session.captcha;
    conn.query(`select * from pdd_userinfo where user_name='${username}' or user_phone= '${username}';`, (error, results, fields)=>{
      console.log(results);
      if(error) res.json({status: 500, message:'服务器未响应。'});
      else if(results[0]){  // 用户名存在
        let data = JSON.parse(JSON.stringify(results[0]));
        if(password !== data.user_pwd){
          res.json({status: 500, message:'用户名或密码错误。'});
          return;
        }
        req.session.userId = data.user_id;
        res.json({status: 200, message: {
          id: results[0].user_id,
          phone: results[0].user_phone, 
          name: results[0].user_name, 
          sex: results[0].user_sex, 
          address: results[0].user_address, 
          birthday: results[0].user_birthday,
          signature: results[0].user_signature
        }});
      }else{
        res.json({status: 500, message:'用户名或密码错误。'});
      }
    });
  }
})
/*
判断是否登录
*/
router.get('/api/islogin', (req, res)=>{
  let userId = req.session.userId;
  if(!userId){
    res.json({status: 500, message:'请登录。'});
    return;
  }
  conn.query(`select * from pdd_userinfo where user_id=${userId};`, (error, results, fields)=>{
    if(error) res.json({status: 500, message:'服务器未响应。'});
    else if(results[0]){  // 用户存在
      let data = JSON.parse(JSON.stringify(results[0]));
      req.session.userId = data.user_id;
      res.json({status: 200, message: {
        id: results[0].user_id,
        phone: results[0].user_phone, 
        name: results[0].user_name, 
        sex: results[0].user_sex, 
        address: results[0].user_address, 
        birthday: results[0].user_birthday,
        signature: results[0].user_signature
      }});
    }else{
      delete req.session.user_id;
      res.json({status: 500, message:'请登录。'});
    }
  });
})
/*
退出登陆
*/
router.get('/api/logout', (req, res)=>{
  delete req.session.userId;
  res.json({status: 200, message: '退出登陆成功。'});
})
/*
修改个人信息
*/
router.post('/api/alterinfo', (req, res)=>{
  let id = req.body.id || '';
  let name = req.body.name || '';
  let sex = req.body.sex || '';
  let address = req.body.address || '';
  let birthday = req.body.birthday || '';
  let signature = req.body.signature || '';
  let sqlStr = `update pdd_userinfo set user_name='${name}',user_sex='${sex}',user_address='${address}',user_birthday='${birthday}',user_signature='${signature}' where user_id=${id}`;
  conn.query(sqlStr, (error, results, fields)=>{
    if(error) res.json({status: 500, message: '服务器错误。'});
    else res.json({status:200, message: '修改成功。'})
  })
})
module.exports = router;
