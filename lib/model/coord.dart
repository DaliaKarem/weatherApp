class coord{
  double ?lon,lat ;
  coord({
     this.lon,  this.lat
  });
factory coord.fromJson(Map<String,dynamic>json)
{
  return coord(
      lon: double.parse(json["long"]),
      lat: double.parse(json["lat"]),

  );
}
Map<String,dynamic>toJson()
{
  return{
    "Lon":this.lon,
    "lat":this.lat,
  };
}
}