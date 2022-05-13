import 'package:flutter/material.dart';
class card extends StatelessWidget {
  const card({Key? key,required this.image,required this.txt}) : super(key: key);
 final String image;
 final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,height: 100 ,
      margin: EdgeInsets.symmetric(vertical: 0,horizontal: 9),
      padding:EdgeInsets.all(10) ,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 2),
              blurRadius: 5,
              spreadRadius: 2)
        ],
      ),
      child: Column(
        children: [
          Image(image: AssetImage(image),height: 50,width: 50,),
          SizedBox(height: 5,),
          Text(txt,style: TextStyle(fontSize: 13),)
        ],
      ),
    );
  }
}
// CircleAvatar(
// radius: 25,
// backgroundImage: AssetImage(image),
// backgroundColor: Color.fromARGB(0, 0, 0, 0),
// )