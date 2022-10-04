class fiveDaysData{
 String ?data;
 int ?temp;

 fiveDaysData({this.data, this.temp});

 factory fiveDaysData.fromJson(Map<String,dynamic>json)
 {
  return fiveDaysData(
   data: json["data"],
   temp: int.parse(json["temp"]),
  );
 }
 Map<String,dynamic> toJson()
 {
  return{
   "data":this.data,
   "temp":this.temp,
  };
 }
}