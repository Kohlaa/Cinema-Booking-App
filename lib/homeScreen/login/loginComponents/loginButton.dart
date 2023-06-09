import 'package:flutter/material.dart';

import '../../../layout/parking_layout.dart';
import '../../../pages/main_page.dart';

class loginButton extends StatelessWidget {

  String btnTxt;
  loginButton({super.key, required this.btnTxt});
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      // margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14)),
      padding: EdgeInsets.all(10),
      height: 44,
      minWidth: 201,
      color: Color(0xFF196FD5),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const MainPage(),
          ),
        );
      },
      child:  Text(
        btnTxt,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins',
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
