class system{
  String ?country;
  int ?sunriset,sunset,id;

  system({this.country, this.sunriset, this.sunset,this.id,});
  factory system.fromJson(Map<String,dynamic> json)
  {
    return system(
      country: json["country"],
      sunriset: int.parse(json["sunriset"]),
      sunset: int.parse(json["sunset"]),
      id: int.parse(json["id"]),

    );
  }
  Map<String,dynamic>toJson()
  {
    return{
      "country":this.country,
      "sunriset":this.sunriset,
      "sunset":this.sunset,
      "id":this.id,
    };
  }
}