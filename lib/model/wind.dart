class wind{
  double ?speed,deg,gust;

  wind({ this.speed,  this.deg,  this.gust});

  Map<String,dynamic>toJson(){
    return{
      "speed":this.speed,
      "deg":this.deg,
      "gust":this.gust,
  };
}
factory wind.fromJson(Map<String,dynamic>json)
{
  return wind(speed: double.parse(json["speed"]),
      deg: double.parse(json["deg"]),
      gust: double.parse(json["gust"])
  );
}
}