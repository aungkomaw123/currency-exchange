import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ob/object.dart';
import 'package:flutter_application_1/widget/widget3.dart';
import 'package:http/http.dart' as http;

class WidgetShow extends StatefulWidget {
  @override
  State<WidgetShow> createState() => _WidgetShowState();
}

class _WidgetShowState extends State<WidgetShow> {
  List<CurrencyOb> currencyOb = [];
  List<Rates> rates = [];
  List<String> country = [
    "US",
    "Thai",
    "India",
    "Japan",
    "China",
    "Singapore",
    "Malaysia",
    "Korea"
  ];
  List<String> img = [
    'https://cdn.shopify.com/s/files/1/0993/6346/articles/American_Flag_handrawn_sketck_in_color_1800x.jpg?v=1584581384',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_Thailand.svg/1200px-Flag_of_Thailand.svg.png',
    'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png',
    'https://ih1.redbubble.net/image.1117603951.6259/fposter,small,wall_texture,product,750x1000.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/1200px-Flag_of_the_People%27s_Republic_of_China.svg.png',
    'https://m.media-amazon.com/images/I/51xgJUnn7QL._AC_SL1500_.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Flag_of_Malaysia.svg/2560px-Flag_of_Malaysia.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_South_Korea.png'
  ];
  var exchangeRate = "";
  Uri url = Uri.parse(
      "https://forex.cbm.gov.mm/api/latest?fbclid=IwAR1YSewtLGu0agaEwfgyBKTr6K7gNbXy9PPWLtGrZDALGdUezH2OR9pXc2g");

  getData() async {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // List<dynamic> list = jsonDecode(response.body);
      Map<String, dynamic> list = jsonDecode(response.body);
      print(list);
      CurrencyOb currencyList = CurrencyOb.fromJson(list);
      Rates rateList = Rates.fromJson(list['rates']); // dm

      rates.add(rateList);
      currencyOb.add(currencyList);
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[20],
        centerTitle: true,
        title: const Text("Rate And Convert Currency"),
      ),
      backgroundColor: Colors.blue[100],
      body: currencyOb.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: country.length,
              itemBuilder: (context, index) {
                if (country[index] == "US") {
                  exchangeRate = rates[0].USD;
                } else if (country[index] == "Japan") {
                  exchangeRate = rates[0].JPY;
                } else if (country[index] == "Thai") {
                  exchangeRate = rates[0].THB;
                } else if (country[index] == "China") {
                  exchangeRate = rates[0].CNY;
                } else if (country[index] == "Singapore") {
                  exchangeRate = rates[0].SGD;
                } else if (country[index] == 'Malaysia') {
                  exchangeRate = rates[0].MYR;
                } else if (country[index] == 'Korea') {
                  exchangeRate = rates[0].KRW;
                } else {
                  exchangeRate = rates[0].INR;
                }

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo.withOpacity(0.3),
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        img[index],
                                        height: 100,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                country[index],
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                exchangeRate + " MMK",
                                                style: const TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 30),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.chevron_right),
                                    onPressed: () {
                                      if (country[index] == "US") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Convert(
                                                    currency: rates[0].USD,
                                                    country: "US")));
                                      } else if (country[index] == "Japan") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Convert(
                                                    currency: rates[0].JPY,
                                                    country: "Japan")));
                                      } else if (country[index] == "Thai") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Convert(
                                                    currency: rates[0].THB,
                                                    country: "Thai")));
                                      } else if (country[index] == "China") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Convert(
                                                    currency: rates[0].CNY,
                                                    country: "China")));
                                      } else if (country[index] ==
                                          "Singapore") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Convert(
                                                    currency: rates[0].SGD,
                                                    country: "Singapore")));
                                      } else if (country[index] == "Malaysia") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Convert(
                                                    currency: rates[0].MYR,
                                                    country: "Malaysia")));
                                      } else if (country[index] == "Korea") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Convert(
                                                    currency: rates[0].KRW,
                                                    country: "Korea")));
                                      } else {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Convert(
                                                    currency: rates[0].INR,
                                                    country: "India")));
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[20],
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return WidgetShow();
          }));
        },
        child: const CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
