import 'package:homework2/data/app_asset.dart';

class Person {
  String? imgUrl;
  String? name;
  bool? activate;
  String? number;
  String? message;
  String? time;

  Person(this.imgUrl, this.name, this.activate,this.number, this.message, this.time);

  static List<Person> generatePerson() {
    return [
      Person(AppAssets.avtMu, "Christopher", true,"3" ,"Hey!How's it going?", "04:04Am"),
      Person(AppAssets.avtLiv, "Reese", true,"1" ,"What kind of music do you like?", "08:58PM"),
      Person(AppAssets.avtTot, "Jeffrey", true,"0","Sound good to me!", "11:33PM"),
      Person(AppAssets.avtChel, "Laura", true,"0" ,"Hi tina.How's your night going", "06:58Am"),
      Person(AppAssets.avtMu, "Christopher", true,"0" ,"Hey!How's it going?", "04:04Am"),
      Person(AppAssets.avtLiv, "Reese", true,"0" ,"What kind of music do you like?", "08:58PM"),
      Person(AppAssets.avtTot, "Jeffrey", false,"0" ,"Sound good to me!", "11:33PM"),
      Person(AppAssets.avtChel, "Laura", false,"0" ,"Hi tina.How's your night going", "06:58Am"),
    ];
  }
}
