class wheather{
  int ?id;
  String ?main,des,icon;
  wheather(
  {
     this.id, this.main, this.des, this.icon
});

  factory wheather.fromJson(Map<String,dynamic>json)
  {
    return wheather(
      id: int.parse(json["id"]),
      main: json["main"],
      des: json["description"],
      icon: json["icon"],

    );
  }
  Map<String,dynamic>toJson()
  {
    return{
      "id":this.id,
      "main":this.main,
      "des":this.des,
      "icon":this.icon,

    };
  }
}