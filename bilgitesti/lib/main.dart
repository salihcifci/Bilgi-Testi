import 'package:bilgitesti/constants.dart';
import 'package:bilgitesti/test_veri.dart';
import 'package:flutter/material.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.orange,
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

  List <Widget> secimler=[];

 TestVeri test_1=TestVeri();

  int soruIndex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Salih İle Dosta Doğru',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(soruIndex),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 10,
          spacing: 10,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(12),
                          backgroundColor: Colors.red[400],),
                          child: Icon(Icons.thumb_down, size: 30.0,),
                          onPressed: () {
                            setState(() {
                              test_1.getSoruYaniti(soruIndex)==false
                                  ? secimler.add(kDogruIconu)
                                  : secimler.add(kYanlisIconu);
                              soruIndex++;
                              if( soruIndex == 5) {soruIndex=0;}
                            });
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(12),
                          backgroundColor: Colors.green[400],),
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            setState(() {
                              test_1.getSoruYaniti(soruIndex)==true
                                  ? secimler.add(kDogruIconu)
                                  :secimler.add(kYanlisIconu);
                              soruIndex++;
                              if( soruIndex == 5) {soruIndex=0;}
                            });
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

