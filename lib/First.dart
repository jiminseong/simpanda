
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:contact/bounceable.dart';
import 'package:get/get.dart';
import 'package:contact/Login.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  int pageIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  void onPageChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  void goToNextPage() {
    if (pageIndex < 2) {
      pageController.animateToPage(
        pageIndex + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    else if (pageIndex == 2){
      Get.to(Login(),transition: Transition.rightToLeft);
    }
  }


  @override
  Widget build(BuildContext context) {
    
    return  CupertinoPageScaffold(
      child:SafeArea(
            child: Column(
                children: [
                Expanded(
                    child: PageView(
                    controller: pageController,
                    onPageChanged: onPageChanged,
                         children: [
                        Container(
                        child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 190),
                          child: SvgPicture.asset('assets/Memo.svg'),
                          ),
                        Container(
                          margin: EdgeInsets.only(top:60),
                          child: Text('첫 발품은 심판다와 함께', textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w600, color: Color(0xff444952)
                            ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Text('심판다의 체크리스트로 발품 기록을\n꼼꼼하게 남겨보세요.',textAlign: TextAlign.center,
                           style: TextStyle(fontSize: 14, color: Color(0XFF444952)),),
                        )
                        ],
                        ),
                        ),

                         Container(
                          child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 190),
                          child: SvgPicture.asset('assets/Magnifying glass tilted left.svg'),
                          ),
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          child: Text('비교하며 찾아보기',textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w600, color: Color(0xff444952)
                            ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Text('심판다의 체크리스트로 발품을 기록하고,\n꼼꼼하게 비교하세요.', textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Color(0XFF444952)),),
                        )
                        ],
                        ),
                        ),

                         Container(
                           child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 190),
                          child: SvgPicture.asset('assets/Running shoe.svg'),
                          ),
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          child: Text('뛰지 않고 발품 뛰기',textAlign: TextAlign.center,
                          style: TextStyle(
                             fontSize: 32, fontWeight: FontWeight.w600, color: Color(0xff444952)
                            ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Text('다른 사용자가 공유한 발품 기록을 통해\n집에서도 발품을 뛸 수 있어요.',
                          textAlign: TextAlign.center,style: TextStyle(fontSize: 14, color: Color(0XFF444952)),),
                        ),
                        ]
                        ),
                        ),
                      ]
                    ),
                ),
             Column(
                children: [
                  Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedContainer(

                                    width: pageIndex==0 ? 40.0 : 8.0,
                                    height: pageIndex==0 ? 8.0 : 8.0,
                                    alignment:
                                        pageIndex==0 ? Alignment.center : AlignmentDirectional.topCenter,
                                    duration: Duration(milliseconds: 300),
                                    decoration: BoxDecoration(
                                      color: pageIndex==0 ? Color(0XFF4387ED) : Color(0XFFC9D7E8),
                                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                    ),
                                    curve: Curves.fastOutSlowIn,
                                  ),
                                  SizedBox(width: 8.0),
                                  AnimatedContainer(

                                    width: pageIndex==1 ? 40.0 : 8.0,
                                    height: pageIndex==1 ? 8.0 : 8.0,
                                    alignment:
                                        pageIndex==1 ? Alignment.center : AlignmentDirectional.topCenter,
                                    duration: Duration(milliseconds: 300),
                                    decoration: BoxDecoration(
                                      color: pageIndex==1 ? Color(0XFF4387ED) : Color(0XFFC9D7E8),
                                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                    ),
                                    curve: Curves.fastOutSlowIn,
                                  ),
                                  SizedBox(width: 8.0),
                                  AnimatedContainer(

                                    width: pageIndex==2 ? 40.0 : 8.0,
                                    height: pageIndex==2 ? 8.0 : 8.0,
                                    alignment:
                                        pageIndex==2 ? Alignment.center : AlignmentDirectional.topCenter,
                                    duration: Duration(milliseconds: 300),
                                    decoration: BoxDecoration(
                                      color: pageIndex==2 ? Color(0XFF4387ED) : Color(0XFFC9D7E8),
                                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                    ),
                                    curve: Curves.fastOutSlowIn,
                                  ),
                            ],
                          ),
                        ),
                 Container(
                         margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: Bounceable(onTap:goToNextPage,
                         child:  Container(
                          width: MediaQuery.of(context).size.width-60,
                         height: 60,
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         color: Colors.blueAccent
                         ),

                         child: Center(
                           child: Text((pageIndex == 2) ?  "시작하기" : "다음",
                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,
                           color: Colors.white),textAlign: TextAlign.center,),
                         )
                        )),
                 )
                ]),
              ])
              )
    );
  }
}




