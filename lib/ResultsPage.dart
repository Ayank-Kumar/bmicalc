import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String value ;
  String opinion ;
  String tips ;
  ResultPage({this.value,this.opinion,this.tips});            /// constructor to chahiye hi yaar kabhi bhi kisi class ko koi cheez use krni ha bahar se
  @override                                                   ///to wo use as a argument hi leke ayega na apne constructor me just like variable
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
          backgroundColor: Colors.greenAccent, ///jo tum hexadecimal code laoge usse # htana and 0xFF(Fully opaque ke lie) colorzilla firefox pe hi chalta ha
        ),
      body: Container(
        color: Colors.black,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your Result",style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),),
              Expanded(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                  color: Color(0xFFF4E6BC),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(opinion,style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 30.0),),
                        Text(value,style: TextStyle(color: Colors.redAccent,fontSize: 60.0,fontWeight: FontWeight.w900),),
                        Text(tips,style: TextStyle(fontSize: 25.0,color: Colors.pinkAccent,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BMICalculator()));
                },
                child: Container(
                  child: Center(child: Text("Re-Calculate",style: TextStyle(color: Colors.white,fontSize: 30.0),)),
                  color: Colors.greenAccent,
                  height: 60.0,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10.0),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(floatongkaicon),
        backgroundColor: Colors.purpleAccent,
      ),
    );
  }
}
