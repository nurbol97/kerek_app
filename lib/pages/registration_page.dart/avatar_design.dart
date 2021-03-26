import 'package:flutter/material.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';

class AvatarDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      width: 125,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 110,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/img/ava_pic.png"),
              radius: 62,
            ),
          ),
          Positioned(
            right: 10,
            bottom: 5,
            child: SizedBox(
              height: 32,
              width: 32,
              child: FlatButton(
                padding: EdgeInsets.only(left: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: ColorStyles.brand_orange, width: 2),
                ),
                color: ColorStyles.brand_black,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  size: 18,
                  color: ColorStyles.brand_orange,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
