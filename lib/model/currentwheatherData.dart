import 'package:wheatherapp/model/clouds.dart';
import 'package:wheatherapp/model/coord.dart';
import 'package:wheatherapp/model/main_wheather.dart';
import 'package:wheatherapp/model/system.dart';
import 'package:wheatherapp/model/wheather.dart';

class currentwheatherData{
  coord ?Coord;
  List<wheather> ?Wheather;
  String ?base;
  main_wheather ?mainwheather;
  int ?visability;
  clouds ?cloud;
int ?dt;
system ?sys;
int ?timezone,id;
String ?name,cod;

  currentwheatherData(
      {this.Coord,
      this.Wheather,
      this.base,
      this.mainwheather,
      this.visability,
      this.cloud,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});
  Map<String,dynamic> toJson()
  {
    return{
      "Coord":this.Coord,
      "Wheather":this.Wheather,
      "base":this.base,
      "mainwheather":this.mainwheather,
      "visability":this.visability,
      "cloud":this.cloud,
      "dt":this.dt,
      "sys":this.sys,
      "timezone":this.timezone,
      "id":this.id,
      "name":this.name,
      "cod":this.cod,


    };
  }
  factory currentwheatherData.fromJson(Map<String,dynamic> json)
  {
    return currentwheatherData(
      cloud: json["cloud"],
      Coord: coord.fromJson(json["coord"]),
      Wheather:List.of(json["wheather"]),
      // List.of(json["wheather"])
      //     .map((i) => i)
      //     .toList(),
      base: json["base"],
      mainwheather: main_wheather.fromJson(json["mainwheather"]),
      visability: int.parse(json["visability"]),
      cod: json["cod"],
      sys: system.fromJson(json["sys"]),
      dt: int.parse(json["dt"]),
      timezone: int.parse(json["timezone"]),
      id: int.parse(json["id"]),
      name: json["name"],



    );
  }
}