import 'package:bmi_calculator/formula.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'andarka.dart';
import 'ResultsPage.dart';
import 'reusablecontainer.dart';                                              /// tb tk import kr payega jab tak lib me main ke saath hi rhe
int height = 150 ;
int weight = 60 ;
int age = 30 ;
const double BottomHeight = 60.0;
const Color Top_Bottomcolor = Colors.greenAccent ;
IconData floatongkaicon = Icons.ac_unit_sharp;
enum Gender{      ///waise maine jo bnaya usme useful nhi ((user defined datatype - c me tha ))
  male,
  female
}

void function(){
  if(floatongkaicon == Icons.add){
    floatongkaicon = Icons.ac_unit_sharp;
  }
  else if(floatongkaicon == Icons.ac_unit_sharp){   ///again ye kaam kiya kyunki ye setter method tha
    floatongkaicon = Icons.add ;
  }
}
Function presseddetector(Gender genderwa){    ///yeh function type ka variable tha yaar but isko function ki trh hi | isko bhi pass kr skte ho as object
  if(genderwa == Gender.male){                ///(jaise variable as arguments pass hote ha and get used as parameter)| isme fir return statement jruri ha ig
    MaleButtonActiveColor == khalicolorwa ? {MaleButtonActiveColor = tapcolorwa,FemaleActiveButtonColor = khalicolorwa} : MaleButtonActiveColor = khalicolorwa ;
  }
  else{
    FemaleActiveButtonColor == khalicolorwa ? {FemaleActiveButtonColor = tapcolorwa, MaleButtonActiveColor = khalicolorwa} : FemaleActiveButtonColor = khalicolorwa ;
  }
}   ///kahi bhi bana skte ho yaar bs asal vale varible ko change kr raha ho

void main() => runApp(BMICalculator());
class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}
class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {

  /*void colorupdater (Color buttoncolor){    /// kaam nhi kiya kyunki variable ki copy pass hoti ha var. khud nhi.
    if(buttoncolor == khalicolorwa){
      buttoncolor = tapcolorwa;
    }
    else{
      buttoncolor = khalicolorwa ;
    }
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
        backgroundColor: Top_Bottomcolor, ///jo tum hexadecimal code laoge usse # htana and 0xFF(Fully opaque ke lie) colorzilla firefox pe hi chalta ha
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(                                                           ///to ab column ki limit tk expand honge jitni available space hogi
              child: Row(
                children: [
                  Expanded(                                                     /// is row ki jo limit hogi us tak expand krenge
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          presseddetector(Gender.male);
                        });
                      },
                      child: reusable(
                          andarka: NewWidget(text: "MALE",icons: FontAwesomeIcons.male,),///hmesha identifier: krke hi fir data de skte ho constructor ko.
                          colours: MaleButtonActiveColor
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                         presseddetector(Gender.female);
                        });
                      },
                      child: reusable(
                          andarka: NewWidget(text: "FEMALE",icons: FontAwesomeIcons.female),
                          colours: FemaleActiveButtonColor
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: reusable(
                  andarka: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Text("Height",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                            Text(height.toString(),style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50.0,color: Colors.redAccent),),
                            Text("cm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.orange.shade600),)
                        ],
                      ),
                      SliderTheme(          ///theme pure whole material ke liye bhi ho skta ha and particular widgets ke liye bhi ho skta ha
                        data: SliderThemeData(        /// themes help us in customazing widget
                          activeTrackColor: Colors.lightBlue,
                          inactiveTrackColor: Colors.lightBlueAccent,
                          thumbColor: Colors.pinkAccent,
                          thumbShape: RoundSliderThumbShape(disabledThumbRadius: 8.0,enabledThumbRadius: 12.0 )
                        ),
                        child: Slider(
                          value: height.toDouble(),      ///value required hoti ha yhi initial value hoti ha
                          min: 120.0,
                          max: 210.0,
                          onChanged: (double value){
                            setState(() {
                              height = value.toInt();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  colours: khalicolorwa),                         ///widget ko extract jr skte ho widget pe clock krkre outline me jake right me
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: reusable(
                        andarka: Column(
                          children: [
                            Text("Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.teal),),
                            Text(weight.toString(),style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50.0,color: Colors.redAccent),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RoundIconButton(iconData: Icon(FontAwesomeIcons.minus),
                                    changer: (){
                                      setState(() {
                                        weight--;
                                      });
                                    }),
                                RoundIconButton(iconData: Icon(FontAwesomeIcons.plus),
                                    changer: (){
                                      setState(() {
                                        weight++;
                                      });
                                    }),
                              ],
                            ),
                          ],
                        ),
                        colours: khalicolorwa),                   ///wo bhar do jo jab color ke aage likhaye to sahi ho.
                  ),
                  Expanded(
                    child: reusable(
                        andarka: Column(
                          children: [
                            Text("Age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.teal),),
                            Text(age.toString(),style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50.0,color: Colors.redAccent),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RoundIconButton(iconData: Icon(FontAwesomeIcons.minus),
                                changer: (){
                                  setState(() {
                                    age--;
                                  });
                                },),
                                RoundIconButton(iconData: Icon(FontAwesomeIcons.plus),
                                  changer: (){
                                  setState(() {
                                    age++;
                                  });
                                },),
                              ],
                            ),
                          ],
                        ),
                        colours: khalicolorwa),                   ///yha , hi ; ha
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Formulae formulae = Formulae(heightwa: height,weightwa: weight); /// hme chahiye ki class ka object tb bane (and hence all properties and methods)jb ye button click ho
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                  value: formulae.bmiResult(),
                  opinion: formulae.checker(),
                  tips: formulae.explanatory(),
                    ),
                  ),
                ); ///result page pe bnane ka mtlb nhi jb tk object bnega tb tk result page bhi ho chuka hoga
              },                                                                          ///wo bhi ye nhi ha us page pe likh diya to kis time pe banni ha
              child: Container(
                child: Center(child: Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 30.0),)),
                width: double.infinity,
                height: BottomHeight,
                color: Top_Bottomcolor,
              ),
            )
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            function();
          });
        },
        child: Icon(floatongkaicon),
        backgroundColor: Colors.purpleAccent,
      ),
    );
  }
}
class RoundIconButton extends StatelessWidget {
 final Widget iconData;
 final Function changer;
  RoundIconButton({this.iconData,this.changer});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Colors.orangeAccent,
      elevation: 5.0,
      constraints: BoxConstraints(minHeight: 50.0,minWidth: 50.0),
      child: iconData,
      onPressed: changer, ///simply like any variable
                                        ///agar hm khali chhor dete mtlb ye button class press krne pe kuchh nhi krega pr yaha pe setState nhi since stateless widget
                                        /// moreover agar hme kabhi bhi UI change krna hota ha to jiska change krna hota ha usi me uski state change krni hoti
    );
  }                                       ///(wo baat alag ha ki aap function wgerh call kr skte ho but usi ke setstate ke andr hona chahiye)
}




