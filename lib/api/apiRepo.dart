import 'package:dio/dio.dart';

class apiRepo{
  Dio ?_dio;
  String ?url;
  Map<String,dynamic> ?payload;

  apiRepo({this.url, this.payload});
  void getData(
  {
    Function ()?beforeSend,
    Function(Map<String,dynamic> data) ?onSuccess,
    Function(dynamic data) ?onError,

  }
      ) {
_dio?.get(url!,queryParameters: payload).then((response) {
if(onSuccess!=null)
  {
    onSuccess(response.data);
  }
  
}
).catchError((error){
  onError!(error);
});
}

}