import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
class BottomButton extends StatelessWidget {

  BottomButton({@required this.buttonTitle, @required this.onTap});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomBarColor,
        width: double.infinity,
        height: kBottomBarHeight,
      ),
    );
  }
}

