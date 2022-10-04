import 'package:wheatherapp/api/apiRepo.dart';
import 'package:wheatherapp/model/fiveDaysData.dart';

import '../model/currentwheatherData.dart';

class wheatherService{
  String ?city;

  wheatherService({this.city});
String beaseUrl="https://api.openweathermap.org/data/2.5";
String apiKey="appid=4181f4e5bf68163db9507d6301013036";

void getCurrentData({
  Function ()?beforeSend,
  Function(currentwheatherData data) ?onSuccess,
  Function(dynamic data) ?onError,
})
{
final url="$beaseUrl/weather?=$city$apiKey";
apiRepo(url: url,payload: null).getData(
  beforeSend: ()=>beforeSend!(),
  onSuccess: (data)=>onSuccess!(currentwheatherData.fromJson(data)),
  onError: (error)=>onError!(error),
);
}

  void getFiveCurrentData({
    Function ()?beforeSend,
    Function(List<fiveDaysData> data) ?onSuccess,
    Function(dynamic data) ?onError,
  })
  {
    final url="$beaseUrl/forecast?=$city$apiKey";
    apiRepo(url: url,payload: null).getData(
      beforeSend: ()=>beforeSend!(),
      onSuccess: (data)=>
      {
        onSuccess!((data['List']as List)
        ?.map((t) => fiveDaysData.fromJson(t))
            ?.toList()??
            List.empty()
        ),
      },
      onError: (error)=>onError!(error),
    );
  }
}