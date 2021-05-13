import 'package:flutter/material.dart';

class reusable extends StatefulWidget {
/*  const reusable({
    Key key,
  }) : super(key: key);*/                                                       ///ye tb use jb aapaka widget screen pe move kr raha ho to uspe nazar rakhne ke lie key se associate kr dete ha
  final Color colours;                                      ///neeche bana do tb bhi kaam kr raha ha.
  final Widget andarka;                                   ///kyunki ye widget lega.
  reusable({this.colours, this.andarka});               /// @required likh do to fir constructor ka argument dalna must ho jayega .
  @override
  _reusableState createState() => _reusableState();
}

class _reusableState extends State<reusable> {

  @override
  Widget build(BuildContext context) {
    return Container(                                                           /// ctrl + shift + i to open preview
      child: widget.andarka,
      margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: widget.colours,                                                             /// todo : jb need ayegi bhar lenge color
      ),
    );
  }}