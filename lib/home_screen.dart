import 'package:flutter/material.dart';

import 'bottom_sheet_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        child: Center(
          child: ElevatedButton(child: Text("Open Dialog"),onPressed: (){
            BottomSheetCustomDialog().showBottomSheetDialog(context);
          },),
        ),
      ),
    );
  }
}
