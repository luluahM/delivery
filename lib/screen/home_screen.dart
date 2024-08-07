import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List food = ["برجر", "بيتزا", "بطاطس", "ماء"];

  List food2 = ["برجر دجاج", "بيتزا جبن"];

  List<Color> bgColor = [
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFefcfe7),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "المكان",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          Text(
                            "المدينة المنورة",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/person.png"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        left: 40,
                        child: Container(
                          padding: EdgeInsets.all(6),
                          margin: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              color: Colors.red,
                              shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration:
                          InputDecoration(hintText: "ابحث عن طعامك هنا"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 24, 11),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/voucher.jpg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("الأصناف",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "إظهار الكل",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: food.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 15),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: bgColor[index],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/${food[index]}.png",
                            width: 80,
                            height: 80,
                          ),
                          Text(
                            food[index],
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("منتشر",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "إظهار الكل",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: food2.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        margin: EdgeInsets.only(
                          left: 15,
                          top: 5,
                          bottom: 5,
                          right: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                                "assets/${food[index]}.png",
                                width: MediaQuery.of(context).size.width / 1.4,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        food2[index],
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        "وجبات خفيفة",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.star,
                                              size: 20, color: Colors.red),
                                          Text("4.5",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            "تقييم 999",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.all(6),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.red,
                                              ),
                                              SizedBox(height: 3,),
                                              Text("3 KM"),
                                            ],
                                          )),
                                          SizedBox(height: 10,),
                                          Container(padding: EdgeInsets.all(10),
                                          decoration:BoxDecoration(color: Colors.red,
                                          borderRadius: BorderRadius.circular(10)),
                                          child: Text("SAR 25",style: TextStyle(fontSize: 15,color: Colors.white),),
                                          
                                          )
                                          
                                          
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
