import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          //Container dı biz SafeArea yaptık.

          /*child: Transform( //bu transformdu, remove widget yapıp,texti transform içine aldık
            // Aşağıdaki döndürme sorununu genel transform yazarak ve aşağıdaki aligment ile hallettik.
            transform: Matrix4.rotationZ(-0.2),
            alignment: FractionalOffset.center,*/ //merkez eksenli döndürme

          child: Container(
            // transform: Matrix4.rotationZ(-0.2), //container ı döndürmek için kullanılıyor.(içi radyan cinsinde dikkat) Sol köşeden döndürme sağlıyor.
            width: 200,
            height: 200,
            alignment: Alignment.bottomRight, //aligment da widget child ını konumlandırıyor fakat ekran komple genişliyor.(Bunun ayarı için yukardaki width falan)
            decoration: BoxDecoration(
                shape: BoxShape.rectangle, //circle yaparsak komple yuvarak bişey oluştururuz.
                borderRadius: BorderRadiusDirectional.circular(20.0), //kenarları yuvarlama komutu
                color: Colors.white),
            margin: EdgeInsets.all(16.0), // Container ın çevresinde (4 bölgesinden) boşluk bırakmak için kullanılır. Sadece belirtilen taraf istersek only yapıyoruz,symetric ile de dikey ya da yatay mesafeleme yapılır. 4 yöndeki mesafeyi hızlı atamak içinde fromTRB kulanılır
            padding: EdgeInsets.all(16.0), // her yönden boşluk bıraktırmak için bunu kullandık.
            //color: Colors.white, // decoration içine yazdık hata almamak için
            child: Transform(
              child: Text('Saadet Sena'),
              transform: Matrix4.rotationZ(-0.2),
              alignment: FractionalOffset.center,
            ), //yazı döndürme komutu olmuş oldu
          ),
        ),
      ),
    );
  }
}
