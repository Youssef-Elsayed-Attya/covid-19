import 'package:covid19/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'constant.dart';
import 'image_card.dart';

class PageOnBoard extends StatelessWidget {
  const PageOnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: greenColor,
      body: IntroductionScreen(
        globalBackgroundColor: greenColor,
        pages: [
          PageViewModel(
              decoration: PageDecoration(titlePadding: EdgeInsets.all(0)),
              // titleWidget: Container(
              //   margin: EdgeInsets.only(bottom:  0),
              //   width: 400,
              //   height: 40,
              //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //           Text('covid-',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              //           Text('19',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: greenColor),)
              //     ],
              //   ),
              // ),
              // bodyWidget: Container(
              //   margin: EdgeInsets.only(top: 0),
              //   width: 400,
              //   height: 200,
              //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
              //   child: Center(
              //     child: Text('Lorem lpsum is simply dummy text of the printing and typesetting industry.Lorem lpsum has been the industry standard dummy text ever since the'),
              // ),
              //   ),
              titleWidget: Container(
                height: 1,
              ),
              bodyWidget: Container(
                padding: EdgeInsets.only(top: 25),
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'covid-',
                          style:
                              TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '19',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              color: greenColor),
                        )
                      ],
                    ),
                Container(
                  padding: EdgeInsets.all(25),
                  child: Text(
                      'Lorem lpsum is simply dummy text of the printing and typesetting industry.Lorem lpsum has been the industry standard dummy text ever since the',
                    style: TextStyle(fontSize: 16),
                  ),
                )],
                ),
              ),
              image: image_builder(
                image: 'assets/pic/3877986.jpg',
              )),
          PageViewModel(
              title: 'null',
              body: 'this is the first screen',
              image: image_builder(
                image: 'assets/pic/3877986.jpg',
              )),
          PageViewModel(
              title: 'screen1',
              body: 'this is the first screen',
              image: image_builder(
                image: 'assets/pic/3877986.jpg',
              ))
        ],
        done: Text(
          'Done',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onDone: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        },
        next: Icon(Icons.arrow_forward_sharp),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeColor: greenColor,
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
