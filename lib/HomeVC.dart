import 'package:demo/Utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:demo/Utils/assets_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    //Logo
    Container logo = new Container(
      margin: new EdgeInsets.only(left: ScreenUtil().setHeight(50.0), right: ScreenUtil().setHeight(50.0), top: ScreenUtil().setHeight(150.0), bottom: ScreenUtil().setHeight(40.0)),
      height: ScreenUtil().setHeight(200),
      child: new Image.asset('assets/images/logo.png', fit: BoxFit.fill,),
    );

    Widget accountInfo = new Container(
      margin: EdgeInsets.only(left: ScreenUtil().setHeight(16.0), right: ScreenUtil().setHeight(16.0), top: ScreenUtil().setHeight(8.0)),
      decoration: new BoxDecoration(
        color: Colors.white,
        border: Border.all(width: ScreenUtil().setWidth(3.0), color: Colors.black12),
        borderRadius: const BorderRadius.all(const Radius.circular(6.0))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(height: ScreenUtil().setHeight(20),),
          Container(height: ScreenUtil().setHeight(70),child:
          Row(
            children: <Widget>[
              SizedBox(width: ScreenUtil().setHeight(50.0),),
              Expanded(child: Align(alignment: Alignment.centerLeft, child: Text("余力"),),),
              Expanded(child: Align(alignment: Alignment.centerRight, child: RichText(text: TextSpan(style: DefaultTextStyle.of(context).style,
                  children: <TextSpan> [
                    TextSpan(text: "9.999.999", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " 円")
                  ]
              ),),),),
              SizedBox(width: ScreenUtil().setHeight(30.0),),
            ],
          ),
          ),
          Divider(height: ScreenUtil().setHeight(4.0),color: Colors.black12,indent: ScreenUtil().setWidth(40.0),endIndent: ScreenUtil().setWidth(2.0),),
          Container(height: ScreenUtil().setHeight(70),child:
          Row(
            children: <Widget>[
              SizedBox(width: ScreenUtil().setHeight(50.0),),
              Expanded(child: Align(alignment: Alignment.centerLeft, child: Text("評価損益"),),),
              Expanded(child: Align(alignment: Alignment.centerRight, child: RichText(text: TextSpan(style: DefaultTextStyle.of(context).style,
                  children: <TextSpan> [
                    TextSpan(text: "-999.999", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                    TextSpan(text: " 円")
                  ]
              ),),),),
              SizedBox(width: ScreenUtil().setHeight(30.0),),
            ],
          ),
          ),
          Divider(height: ScreenUtil().setHeight(4.0),color: Colors.black12,indent: ScreenUtil().setWidth(40.0),endIndent: ScreenUtil().setWidth(2.0),),
          Container(height: ScreenUtil().setHeight(70),child:
          Row(
            children: <Widget>[
              SizedBox(width: ScreenUtil().setHeight(50.0),),
              Expanded(child: Align(alignment: Alignment.centerLeft, child: Text("当日決済損益"),),),
              Expanded(child: Align(alignment: Alignment.centerRight, child: RichText(text: TextSpan(style: DefaultTextStyle.of(context).style,
                  children: <TextSpan> [
                    TextSpan(text: "1234", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " 円")
                  ]
              ),),),),
              SizedBox(width: ScreenUtil().setHeight(30.0),),
            ],
          ),
          ),
          Divider(height: ScreenUtil().setHeight(4.0),color: Colors.black12,indent: ScreenUtil().setWidth(40.0),endIndent: ScreenUtil().setWidth(2.0),),
          Container(height: ScreenUtil().setHeight(70),child:
          Row(
            children: <Widget>[
              SizedBox(width: ScreenUtil().setHeight(50.0),),
              Expanded(child: Align(alignment: Alignment.centerLeft, child: Text("消去金維持率"),),),
              Expanded(child: Align(alignment: Alignment.centerRight, child: RichText(text: TextSpan(style: DefaultTextStyle.of(context).style,
                  children: <TextSpan> [
                    TextSpan(text: "2,11", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " %")
                  ]
              ),),),),
              SizedBox(width: ScreenUtil().setHeight(30.0),),
            ],
          ),
          ),
          Divider(height: ScreenUtil().setHeight(4.0),color: Colors.black12,indent: ScreenUtil().setWidth(40.0),endIndent: ScreenUtil().setWidth(2.0),),
          Container(height: ScreenUtil().setHeight(70),child:
          Row(
            children: <Widget>[
              SizedBox(width: ScreenUtil().setHeight(50.0),),
              Expanded(child: Align(alignment: Alignment.centerLeft, child: Text("消去金ステータス"),),),
              Expanded(child: Align(alignment: Alignment.centerRight, child: Text("適正", style: TextStyle(fontWeight: FontWeight.bold)),),),
              SizedBox(width: ScreenUtil().setHeight(30.0),),
            ],
          ),
          ),
          Container(height: ScreenUtil().setHeight(20),),
        ],
      ),
    );


    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/background.png"), fit: BoxFit.cover),
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              logo,
              accountInfo
            ],
          )

        ],
      ),
    );
  }
}

