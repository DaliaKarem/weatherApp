import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:wheatherapp/controller/HomeContrroller.dart';

import '../const/images.dart';

class MyCard extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter:
          ColorFilter.mode(Colors.black38, BlendMode.darken),
          image: AssetImage(
            'assets/images/cloud-in-blue-sky.jpg',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),),
          Container(
            padding: EdgeInsets.only(top: 100, left: 20, right: 20),
            child: TextField(
              onChanged: (value) => controller.city = value,
              style: TextStyle(
                color: Colors.white,
              ),
              textInputAction: TextInputAction.search,
              onSubmitted: (value) => controller.updateweather(),
              decoration: InputDecoration(
                suffix: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintStyle: TextStyle(color: Colors.white),
                hintText: 'Search'.toUpperCase(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: SizedBox(
              height: 10,
              width: 10,
              child: OverflowBox(
                minWidth: 0.0,
                maxWidth: MediaQuery.of(context).size.width,
                minHeight: 0.0,
                maxHeight: (MediaQuery.of(context).size.height / 4),
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      height: double.infinity,
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, left: 20, right: 20),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text('${controller.CurrentWeatherData.name}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                        color: Colors.black45,
                                        fontSize: 24,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily:
                                        'flutterfonts',
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      DateFormat()
                                          .add_MMMMEEEEd()
                                          .format(DateTime.now()),
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                        color: Colors.black45,
                                        fontSize: 16,
                                        fontFamily:
                                        'flutterfonts',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        '${controller.CurrentWeatherData.Wheather![0].des}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(
                                          color: Colors.black45,
                                          fontSize: 22,
                                          fontFamily:
                                          'flutterfonts',
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('${(controller.CurrentWeatherData.mainwheather!.temp! - 273.15).round().toString()}\u2103',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(
                                            color: Colors.black45,
                                            fontFamily:
                                            'flutterfonts'),
                                      ),
                                      Text(
                                        'min: ${(controller.CurrentWeatherData.mainwheather!.temp_min! - 273.15).
                                        round().toString()}\u2103 / max: ${(controller.CurrentWeatherData.mainwheather!.temp_max! - 273.15)
                                            .round().toString()}\u2103',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(
                                          color: Colors.black45,
                                          fontSize: 14,
                                          fontWeight:
                                          FontWeight.bold,
                                          fontFamily:
                                          'flutterfonts',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 120,
                                        height: 120,
                                        child: LottieBuilder.asset(
                                            images.cloudymain),
                                      ),
                                      Container(
                                        child: Text(
                                          'wind ${controller.CurrentWeatherData.wind!.speed} m/s',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption!
                                              .copyWith(
                                            color: Colors.black45,
                                            fontSize: 14,
                                            fontWeight:
                                            FontWeight.bold,
                                            fontFamily:
                                            'flutterfonts',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}