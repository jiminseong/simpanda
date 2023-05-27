

import 'package:contact/First.dart';
import 'package:contact/bounceable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Login extends StatelessWidget {
  const Login ({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
        child:Center(
                child: Column(
                  children: [
                    Container(
                    child: Image.asset('assets/logo_blank.png'), margin: EdgeInsets.only(top: 116),),
                  Container(
                    margin: EdgeInsets.only(top: 77),
                  child: Text('로그인',textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.w600, color: Color(0xff444952),
                    ),),),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Text('로그인 후, 심판다로 편한 발품을 뛰어보세요.',textAlign: TextAlign.center,
                     style: TextStyle(fontSize: 14, color: Color(0XFF444952)),),),
                SizedBox(height: 93,),
                Bounceable(onTap: (){
                    Get.to(First(), transition: Transition.rightToLeft);
                  }, child:  Container(
                             width: MediaQuery.of(context).size.width-60,
                               height: 60,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xFFF1F5FA),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Image.asset('assets/googlelogin.png'),Text("  구글로 로그인",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0XFF444952),),
                            textAlign: TextAlign.center,)],
                            )),
        ),

                  Bounceable(onTap: (){
                          Get.to(First(), transition: Transition.rightToLeft);
                        }, child:  Container(
                                  width: MediaQuery.of(context).size.width-60,
                                    height: 60,
                                    margin: EdgeInsets.only(top: 12),
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xFFF1F5FA),
                                  ),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Image.asset('assets/kakaologin.png'),Text("  카카오로 로그인",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0XFF444952),),
                                  textAlign: TextAlign.center,)],
                                  )),
                  ),
                  Spacer(),
                  Bounceable(onTap: (){
                          Get.to(First(), transition: Transition.rightToLeft);
                        }, child:  Container(

                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                    color: Colors.transparent,),
                                  child:
                                    Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Text("아직 가입하지 않았나요? ",
                                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Color(0XFFA5ADBA),),
                                    textAlign: TextAlign.center),
                                    SizedBox(width: 7,),
                                    Text("가입하기",
                                    style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold, fontSize: 14, color: Color(0XFF4387ED)),)],
                                    ),
                                   ),
                  ),
                    SizedBox(height: 30,),
                 ]),
              ),
        ));
  }
}