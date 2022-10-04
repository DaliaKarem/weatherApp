class main_wheather{
  /*
  "temp": 304.57,
    "feels_like": 304.17,
    "": 304.57,
    "": 304.57,
    "": 1007,
    "": 37
   */
  double ?temp,feels_like,temp_min,
      temp_max,pressure,humidity;
  main_wheather({
     this.feels_like, this.humidity, this.pressure,
     this.temp, this.temp_max, this.temp_min,
});
  factory main_wheather.fromJson(dynamic json) {
    {
      return main_wheather(
        temp: double.parse(json["temp"]),
        feels_like: double.parse(json["feels_like"]),
        temp_min: double.parse(json["temp_min"]),
        temp_max: double.parse(json["temp_max"]),
        pressure: double.parse(json["pressure"]),
        humidity: double.parse(json["humidity"]),

      );
    }
  }
  Map<String,dynamic>toJson()
  {
    return{
      "temp":this.temp,
      "feels_like":this.feels_like,
      "temp_min":this.temp_min,
      "temp_max":this.temp_max,
      "pressure":this.pressure,
      "humidity":this.humidity,


    };
  }
}