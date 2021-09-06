import 'package:flutter/material.dart';

class BottomSheetCustomDialog {
  BottomSheetCustomDialog();

  void showBottomSheetDialog(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    showModalBottomSheet(
        backgroundColor: Colors.orange,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        context: context,
        builder: (builder) {
          return AnimatedPadding(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOutSine,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SafeArea(
              maintainBottomViewPadding: true,
              child: SingleChildScrollView(
                child: Wrap(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 100,
                            height: 2,
                            margin: const EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade700,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Add Task",
                            style: themeData.textTheme.headline2,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Sample Text",
                                  style: themeData.textTheme.bodyText1,
                                ),
                              ),
                              const SizedBox()
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.create),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Name",
                            style: themeData.textTheme.bodyText1,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: Material(
                            elevation: 10,
                            shadowColor: Colors.grey.shade600,
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                            child: TextFormField(
                              textInputAction: TextInputAction.done,
                              maxLines: 1,
                              autocorrect: false,
                              style: themeData.textTheme.subtitle1,
                              validator: (value) {},
                              onSaved: (value) {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const CloseButton(),
                           ElevatedButton(onPressed: (){}, child: Text("OK"))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
