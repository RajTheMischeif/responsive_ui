import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/Model/rental_model.dart';
import 'Model/CountryModel.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final List<Country> ctnLt = [
    Country(country: 'India', url: 'assets/image/taj.jpg'),
    Country(country: 'USA', url: 'assets/image/usa.jpg'),
    Country(country: 'UK', url: 'assets/image/uk.jpg'),
    Country(country: 'China', url: 'assets/image/china.jpg'),
    Country(country: 'Australia', url: 'assets/image/aus.jpeg'),
  ];
  final List<RentalModel> rntLt = [
    RentalModel(
        price: r'$400/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/4 beds',
        url: 'assets/image/house/house1.jpg'),
    RentalModel(
        price: r'$100/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/2 beds',
        url: 'assets/image/house/house2.jpg'),
    RentalModel(
        price: r'$300/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/3 beds',
        url: 'assets/image/house/house3.jpg'),
    RentalModel(
        price: r'$800/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/7 beds',
        url: 'assets/image/house/house4.jpg'),
    RentalModel(
        price: r'$250/Night',
        details: 'Carinthia lake see breakfast lorem',
        roomDetails: 'private room/5 beds',
        url: 'assets/image/house/house5.jpg'),
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
                color: const Color.fromRGBO(246, 240, 255, 1),
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
                              rntLt[index].roomDetails),
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
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(Get.height * 0.02),
                      ),
                      height: Get.height * 0.35,
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(Get.height * 0.02),
                          child: Image.asset(
                            'assets/image/hotel_pic.jpg',
                            fit: BoxFit.fill,
                          )),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Most viewed',
                          style: TextStyle(fontSize: Get.height * 0.03),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.035,
                    ),
                    Column(
                      children: List.generate(
                          3,
                          (index) => container2(
                              rntLt[index].url,
                              rntLt[index].price,
                              rntLt[index].details,
                              rntLt[index].roomDetails)),
                    ),
                  ],
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
              borderRadius: BorderRadius.circular(Get.height * 0.02),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Get.height * 0.02),
              child: Image.asset(
                url,
                fit: BoxFit.fill,
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

  Widget container2(String url, String price, String details, String roomDtl) {
    return Padding(
      padding:
          EdgeInsets.only(right: Get.width * 0.03, bottom: Get.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: Get.height * 0.213,
                width: Get.width * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Get.height * 0.02),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(Get.height * 0.02),
                    child: Image.asset(
                      url,
                      fit: BoxFit.fill,
                    )),
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
        ],
      ),
    );
  }
}
