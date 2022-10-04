class clouds{
  int ?all;
  clouds({
    this.all,
});
factory clouds.fromJson(Map<String,dynamic>json)
{
  return clouds(
    all: int.parse(json["all"])
  );
}
Map<String,dynamic>toJson()
{
  return{
    "all":this.all
  };
}
}