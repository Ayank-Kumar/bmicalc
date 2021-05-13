import 'package:flutter/material.dart';

const Color khalicolorwa = Color(0xFFF4E6BC) ;    ///ye khud me hi ek integer ha .
const Color tapcolorwa = Color(0xFFF67DC7) ;
Color MaleButtonActiveColor = Color(0xFFF4E6BC) ;
Color FemaleActiveButtonColor = Color(0xFFF4E6BC) ;


class NewWidget extends StatelessWidget {
  final String text;
  final IconData icons;         /// datatype neeche bata dia neeche
  NewWidget({@required this.icons,@required this.text});      ///Constructor aur variable to return ke bahar hi bnenege na
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icons,
          size: 50.0,),
        SizedBox(
          height: 20.0,
        ),
        Text(text,
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),)
      ],
    );
  }
}