import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/Model/rental_model.dart';
import 'Model/CountryModel.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final List<Country> ctnLt = [
    Country(
        country: 'India',
        url:
            'https://img.freepik.com/free-photo/beautiful-vertical-shot-taj-mahal-building-agra-india-with-trees-nearby_181624-34372.jpg?t=st=1728317073~exp=1728320673~hmac=245a6905cd6c31595441b1707b88daf0a5e7129b2dfb9f91e1d5b9cdda50a28b&w=360'),
    Country(country: 'USA', url: 'https://wallpapercave.com/wp/rdbGBa5.jpg'),
    Country(
        country: 'UK',
        url:
            'https://th.bing.com/th/id/OIP.04jT6P0mdDoFBx439xUYhwAAAA?rs=1&pid=ImgDetMain'),
    Country(
        country: 'China',
        url:
            'https://th.bing.com/th/id/OIP.LAXdoqc9eBP3Y7HfVzFMIQHaLL?rs=1&pid=ImgDetMain'),
    Country(
        country: 'Australia',
        url:
            'https://th.bing.com/th/id/OIP.qrCgtTqE3GylvqpoatIydQHaJ4?rs=1&pid=ImgDetMain'),
  ];
  final List<RentalModel> rntLt = [
    RentalModel(
        price: r'$400/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/4 beds',
        url:
            'https://greenhaveninc.com/wp-content/uploads/2020/08/house-with-front-yard-with-green-grass-and-landscaping--1080x675.jpg'),
    RentalModel(
        price: r'$100/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/2 beds',
        url:
            'https://www.forbes.com/advisor/wp-content/uploads/2021/06/featured-image-front-yard-landscaping.jpeg'),
    RentalModel(
        price: r'$300/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/3 beds',
        url:
            'https://www.homestratosphere.com/wp-content/uploads/2016/04/48front-yard-garden.jpg'),
    RentalModel(
        price: r'$800/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/7 beds',
        url:
            'https://probiltgroup.com/wp-content/uploads/2022/11/add-a-level-morris-county-nj-probilt-group-llc-header-9-1024x683.jpg'),
    RentalModel(
        price: r'$250/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/5 beds',
        url:
            'https://www.capstonefundinggroup.com/wp-content/uploads/2017/03/bigstock-Luxury-house-with-beautiful-la-91049936-1024x683.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: EdgeInsets.only(top: Get.height * 0.06),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 225, 225, 225),
                // const Color.fromRGBO(246, 240, 255, 1),
                height: Get.height * 0.25,
                child: Padding(
                  padding: EdgeInsets.all(Get.height * 0.015),
                  child: Column(
                    children: [
                      Text(
                        'Explore the world! By Travelling',
                        style: TextStyle(
                            fontSize: Get.height * 0.035,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: Get.height * 0.027,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.7,
                            child: Card(
                              elevation: 2,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Where did you go?',
                                  prefixIcon: Icon(Icons.search),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(17)),
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          Card(
                            elevation: 2,
                            child: Container(
                                height: Get.height * 0.058,
                                width: Get.width * 0.14,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.height * 0.015),
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.filter_list)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.all(Get.height * 0.015),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular location',
                      style: TextStyle(fontSize: Get.height * 0.03),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          ctnLt.length,
                          (index) =>
                              container(ctnLt[index].country, ctnLt[index].url),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.035,
              ),
              Padding(
                padding: EdgeInsets.all(Get.height * 0.015),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(fontSize: Get.height * 0.03),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          rntLt.length,
                          (index) => container2(
                              rntLt[index].url,
                              rntLt[index].price,
                              rntLt[index].details,
                              rntLt[index].roomDetails,
                              false),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.035,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Get.height * 0.015, right: Get.height * 0.015),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 225, 225, 225),
                        borderRadius: BorderRadius.circular(Get.height * 0.02),
                      ),
                      height: Get.height * 0.35,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(Get.height * 0.02),
                        child: CachedNetworkImage(
                          progressIndicatorBuilder:
                              (context, url, loadingProgress) {
                            return Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 3,
                                color: Colors.black,
                                value: loadingProgress.progress,
                              ),
                            );
                          },
                          imageUrl:
                              'https://thumbs.dreamstime.com/b/two-girls-drinking-tea-18110920.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Get.height * 0.025),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hosting fee for as low as 1%',
                            style: TextStyle(
                                fontSize: Get.height * 0.03,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white),
                            onPressed: () {},
                            child: const Text('Become a host'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.035,
              ),
              Padding(
                padding: EdgeInsets.all(Get.height * 0.015),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Most viewed',
                      style: TextStyle(fontSize: Get.height * 0.03),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Get.height * 0.015),
                child: Column(
                  children: List.generate(
                      3,
                      (index) => container2(
                          rntLt[index].url,
                          rntLt[index].price,
                          rntLt[index].details,
                          rntLt[index].roomDetails,
                          true)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget container(String country, String url) {
    return Padding(
      padding: EdgeInsets.only(right: Get.width * 0.03),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: Get.height * 0.213,
            width: Get.width * 0.4,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 225, 225, 225),
              borderRadius: BorderRadius.circular(Get.height * 0.02),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Get.height * 0.02),
              child: CachedNetworkImage(
                progressIndicatorBuilder: (context, url, loadingProgress) {
                  return Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: Colors.black,
                      value: loadingProgress.progress,
                    ),
                  );
                },
                imageUrl: url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            country,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: Get.height * 0.02,
                color: const Color.fromARGB(255, 255, 255, 255)),
          ),
        ],
      ),
    );
  }

  Widget container2(
      String url, String price, String details, String roomDtl, bool check) {
    return Padding(
      padding: EdgeInsets.only(
        right: check ? 0.0 : Get.width * 0.03,
        bottom: check ? Get.height * 0.02 : 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: Get.height * 0.22,
                width: check ? Get.width : null,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 225, 225),
                  borderRadius: BorderRadius.circular(Get.height * 0.02),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Get.height * 0.02),
                  child: CachedNetworkImage(
                    imageUrl: url,
                    progressIndicatorBuilder: (context, url, loadingProgress) {
                      return SizedBox(
                        width: check ? null : Get.width / 1.4,
                        height: check ? null : Get.height * 0.22,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                            value: loadingProgress.progress,
                          ),
                        ),
                      );
                    },
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Get.height * 0.01),
                child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Text(
            price,
            style: TextStyle(fontSize: Get.height * 0.025),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Text(
            details,
            style: TextStyle(fontSize: Get.height * 0.018),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Text(
            roomDtl,
            style: TextStyle(fontSize: Get.height * 0.015, color: Colors.grey),
          ),
          check
              ? SizedBox(
                  height: Get.height * 0.035,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
