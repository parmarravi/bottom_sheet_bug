import 'package:bottom_sheet_bug/bottom_sheet_dialog.dart';
import 'package:flutter/material.dart';

class BlankScreen extends StatelessWidget {
  const BlankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
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
