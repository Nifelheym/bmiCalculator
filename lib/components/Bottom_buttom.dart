import 'package:flutter/material.dart';
import '../Constant.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonOnTatile});
  final Function onTap;
  final String buttonOnTatile;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
    child: Center(
    child: Text(
      buttonOnTatile,
      style: kLargeButtonTextStyle,
    ),
    ),
    color: kboottomContainerColour,
    margin: EdgeInsets.only(top: 10.0),
    width: double.infinity,
    height: kbottomContainerHeight,
    padding: EdgeInsets.only(bottom: 20.0),
    ),
    );
  }
}