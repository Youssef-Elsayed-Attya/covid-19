import 'package:covid19/constant.dart';
import 'package:covid19/elementCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        foregroundColor: greenColor,
        backgroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: (){},
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(
          ),
          notchMargin: 10,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(backgroundColor: Colors.transparent,radius: 30,child: Icon(Icons.home_rounded,color: greenColor,size: 35,),),
                ),
                SizedBox(width: 170,),
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(backgroundColor: Colors.transparent,radius: 30,child: Icon(Icons.science,color: greenColor,size: 35,),),
                ),
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(backgroundColor: Colors.transparent,radius: 30,child: Icon(Icons.person,color: greenColor,size: 35,),),
                )
              ],

            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 28),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      'assets/pic/160010847_2863351977325755_6422188516820328325_n.jpg'),
                ),
                SizedBox(
                  height: 5,
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Youssef EL-Sayed',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
              width: 400,
            ),
            Container(
              width: 380,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 2),
                        blurRadius: 5,
                        spreadRadius: 2)
                  ]),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Search',
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(
                    width: 225,
                  ),
                  Icon(
                    Icons.mic,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 400,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 380,
                  height: 160,
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 35),
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Covid-19',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Protect your self and',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text('your family from',
                          style: TextStyle(color: Colors.white)),
                      Text('Covid-19', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Positioned(
                    right: -35,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage('assets/pic/doctor.jpg'),
                      backgroundColor: Color.fromARGB(0, 0, 0, 0),
                    )),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'What Do you need ?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                    child: Row(
                  children: [
                    card(image: 'assets/pic/syringe.png', txt: 'Vaccines'),
                    card(image: 'assets/pic/blood-test.png', txt: 'Rapid'),
                    card(image: 'assets/pic/ambulance.png', txt: 'Ambulance')
                  ],
                )),
                Expanded(
                  flex: 1,
                    child: Row(
                  children: [
                    card(image: 'assets/pic/hospital.png', txt: 'Hospital'),
                    card(image: 'assets/pic/flask.png', txt: 'Emargancy'),
                    card(image: 'assets/pic/test.png', txt: 'Lab Test')
                  ],
                ))
              ],
            )),
          ]),
        ));
  }
}
