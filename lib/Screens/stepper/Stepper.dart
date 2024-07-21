import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Theme(
            data: ThemeData(
              colorScheme: ColorScheme.light(
                primary: Colors.pink,
                onSurface: Colors.red,
                // Change the color of the step label
              ),
            ),
            child: Stepper(
              currentStep: _index,
              onStepCancel: () {
                if (_index > 0) {
                  setState(() {
                    _index -= 1;
                  });
                }
              },
              onStepContinue: () {
                if (_index <= 0) {
                  setState(() {
                    _index += 1;
                  });
                }
              },
              onStepTapped: (int index) {
                setState(() {
                  _index = index;
                });
              },
              steps: <Step>[
                Step(
                    title: Text('Account'),
                    content: TextField(
                      cursorColor: Colors.yellow,
                      // controller: accountCtrl,
                      decoration: InputDecoration(hintText: 'Account Number'),
                    )),
                const Step(
                  title: Text(
                    'Address',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  content: TextField(
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      hintText: 'Enter your Account Address',
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                Step(
                  title: Text(
                    'Mobile Number',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  content: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your Mobile Number',
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        onPressed: () {},
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/Page');
              print('hiii');
            },
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

int _index = 0;
