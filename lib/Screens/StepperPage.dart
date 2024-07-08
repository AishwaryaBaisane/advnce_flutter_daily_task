import 'package:flutter/material.dart';

class StepperPage2 extends StatefulWidget {
  const StepperPage2({super.key});

  @override
  State<StepperPage2> createState() => _StepperPage2State();
}

class _StepperPage2State extends State<StepperPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        title: Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stepper(
        type: StepperType.horizontal,
        onStepCancel: () {
          if (index > 0) {
            setState(() {
              index -= 1;
            });
          }
        },
        onStepContinue: () {
          if (index <= 0) {
            setState(() {
              index += 1;
            });
          }
        },
        onStepTapped: (int index) {
          setState(() {
            index = index;
          });
        },
        steps: <Step>[
          Step(
            title: const Text(
              'Personal',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      label: Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.black45,
                          ),
                          Text(
                            '  Email',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                          // iconColor: ,
                        ],
                      ),
                      // hintText: 'Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.black45),

                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      label: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.black45,
                          ),
                          Text(
                            '  Address\n\n\n\n\n',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black45, width: 2),
                          borderRadius: BorderRadius.circular(10),
                         ),
                      // hintStyle: TextStyle(color: Colors.black45),

                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      label: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black45,
                          ),
                          Text(
                            '  Mobile No',
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                          // iconColor: ,
                        ],
                      ),
                      // hintText: 'Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.black45),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Step(
            title: Text(
              'Contact',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
            content: Text(''),
          ),
          Step(
            title: Text(
              'Upload',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
            content: Text(''),
          ),
        ],
      ),
    );
  }
}

int index = 0;
