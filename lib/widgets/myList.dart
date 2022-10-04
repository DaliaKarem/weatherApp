import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wheatherapp/controller/HomeContrroller.dart';

import '../const/images.dart';
import '../model/currentwheatherData.dart';


class MyList extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) =>
            VerticalDivider(
              color: Colors.transparent,
              width: 5,
            ),
        itemCount: controller.dataList.length,
        itemBuilder: (context, index) {
          currentwheatherData? data;
          (controller.dataList.length > 0)
              ? data = controller.dataList[index]
              : data = null;
          return Container(
            width: 140,
            height: 150,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      (data != null)
                          ? '${data.name}'
                          : '',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontFamily: 'flutterfonts',
                      ),
                    ),
                    Text(
                      (data != null)
                          ? '${(data.mainwheather!.temp !- 273.15).round().toString()}\u2103'
                          : '',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontFamily: 'flutterfonts',
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: LottieBuilder.asset(
                          images.cloudy),
                    ),
                    Text(
                      (data != null)
                          ? '${data.Wheather![0].des}'
                          : '',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(
                        color: Colors.black45,
                        fontFamily: 'flutterfonts',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
