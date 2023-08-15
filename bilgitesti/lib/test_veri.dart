

import 'package:bilgitesti/soru.dart';

class TestVeri {
  int soruIndex = 0;

  List<Soru> _soruBankasi = [
    Soru(soruMetni: 'Salih Bu Dünya Üzerinde Bir Tane mi?', soruYaniti: true),
    Soru(soruMetni: '2023-2024 Şampiyonu FenerBahçe mi?', soruYaniti: true),
    Soru(soruMetni: 'PSG Tüm Yıldızlarını Kaybediyor mu?', soruYaniti: false),
    Soru(soruMetni: 'Arda Güler RealMadrid e Gidecek mi?', soruYaniti: true),
    Soru(soruMetni: 'Türkiye AB ye Girecek mi?', soruYaniti: false)
  ];

  String getSoruMetni (int soruIndex){
    return _soruBankasi[soruIndex].soruMetni;
  }
  bool getSoruYaniti (int soruIndex){
    return _soruBankasi[soruIndex].soruYaniti;
  }

  void sonrakiSoru(){
    if(soruIndex + 1 >=_soruBankasi.length){
      soruIndex++;
    }

  }
}