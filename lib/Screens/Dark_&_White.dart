
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: (isDark) ? ThemeMode.light : ThemeMode.dark,
//       home: SafeArea(
//         child: Scaffold(
//           body: Center(
//             child: Column(
//               children: [
//                 SizedBox(height: height * 0.2,),
//                 Text(
//                   'Yo Man!',
//                   style: TextStyle(
//                     fontSize: 50,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'Its a Simple example of \n\t\t\t\t\t\t\t\t\t\t dark theme',
//                   style: TextStyle(fontSize: 25),
//                 ),
//                 SizedBox(
//                   height: height * 0.1,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       isDark = true;
//                     });
//                   },
//                   child: Container(
//                     height: height * 0.12,
//                     width: width * 0.9,
//                     decoration: BoxDecoration(
//                       color: Colors.amber,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Light Icon',
//                         style: TextStyle(
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: height * 0.03,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       isDark = false;
//                     });
//                   },
//                   child: Container(
//                     height: height * 0.12,
//                     width: width * 0.9,
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Dark Icon',
//                         style: TextStyle(
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 //  Stepper(
//                 //                   currentStep: _index,
//                 //                   onStepCancel: () {
//                 //                     if (_index > 0) {
//                 //                       setState(() {
//                 //                         _index -= 1;
//                 //                       });
//                 //                     }
//                 //                   },
//                 //                   onStepContinue: () {
//                 //                     if (_index <= 0) {
//                 //                       setState(() {
//                 //                         _index += 1;
//                 //                       });
//                 //                     }
//                 //                   },
//                 //                   onStepTapped: (int index) {
//                 //                     setState(() {
//                 //                       _index = index;
//                 //                     });
//                 //                   },
//                 //                   steps: <Step>[
//                 //                     Step(
//                 //                       title: const Text('Step 1 title'),
//                 //                       content: Container(
//                 //                         alignment: Alignment.centerLeft,
//                 //                         child: const Text('Content for Step 1'),
//                 //                       ),
//                 //                     ),
//                 //                     const Step(
//                 //                       title: Text('Step 2 title'),
//                 //                       content: Text('Content for Step 2'),
//                 //                     ),
//                 //                   ],
//                 //                 ),
//                 // Stepper(steps: [Step(title: , content: content)])
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// bool isDark = false;