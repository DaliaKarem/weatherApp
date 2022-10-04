import 'package:get/get.dart';
import 'package:wheatherapp/model/currentwheatherData.dart';
import 'package:wheatherapp/service/wheatherService.dart';

import '../model/fiveDaysData.dart';

class HomeController extends GetxController {
 String ?city;

 HomeController({this.city});

  currentwheatherData CurrentWeatherData=currentwheatherData();
 List<fiveDaysData>FiveDayData=[];
 List<currentwheatherData> dataList=[];
  @override
  void onInit() {
    initState();
    getTopFiveCities();
    super.onInit();
  }

  void updateweather() {
    initState();
  }

  void initState() {
    getCurrentweatherDate();
    getFiveDayData();
  }

  void getCurrentweatherDate() {
wheatherService(city: city).getCurrentData(
  onSuccess: (data){
CurrentWeatherData=data;
update();
  },
  onError: (error){
    print(error);
    update();
  }
);
  }
  void getFiveDayData()
  {
    wheatherService(city: city).getFiveCurrentData(
        onSuccess: (data){
          FiveDayData=data;
          update();
        },
        onError: (error){
          print(error);
          update();
        }
    );
  }


void getTopFiveCities()
{List<String>cities=['Cairo','Giza','Alexandria','Luxor','Sharm'];
  cities.forEach((element) {
    wheatherService(city: city).getCurrentData(
        onSuccess: (data){
          dataList.add(data);
          update();
        },
        onError: (error){
          print(error);
          update();
        }
    );
  });

}


}