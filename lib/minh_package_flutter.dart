library minh_package_flutter;
import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
class PlusButton extends StatelessWidget{

  final Color?  myBackgroundColor, myIconColor,myTextColor;
  final Function? myOnPressed;
  final String? myText;
  final IconData? myIcon;
  const PlusButton({
      Key? key,
      this.myTextColor,
      this.myBackgroundColor,
      this.myOnPressed,
      this.myIconColor,
      this.myText,
      this.myIcon
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      onPressed: myOnPressed!() ?? (){
      },
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Icon(
              myIcon,
              size: 20,
              color: myIconColor ?? Colors.blueAccent,
            ),
          ),
          Text(
            myText?? "None",
            style: TextStyle(
              fontFamily: 'Roboto',
              color: myTextColor ?? Colors.white,
              fontSize: 14,
              backgroundColor: Colors.indigoAccent,
            ),
          ),
        ],
      ),
      );
  }
}
