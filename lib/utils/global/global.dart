import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Screens/1.5 Quotes Data Solving with Provider/model/quoteModel.dart';


var txtQuote = TextEditingController();
var txtAuthor = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey();
QuotesModel quotesModel = QuotesModel();


// ThemeData Theme = ThemeData(
//   colorScheme: const ColorScheme(
//     brightness: Brightness.light,
//     primary: Colors.purple,
//     onPrimary: Colors.green,
//     secondary: Colors.blue,
//     onSecondary: Colors.deepOrangeAccent,
//     error: Colors.red,
//     onError: Colors.redAccent,
//     surface: Colors.white,
//     onSurface: Colors.black,
//   ),
// );
//
// ThemeData Theme = ThemeData(
//   colorScheme: const ColorScheme(
//     brightness: Brightness.dark,
//     primary: Colors.amber,
//     onPrimary: Colors.blue,
//     secondary: Colors.pink,
//     onSecondary: Colors.yellowAccent,
//     error: Colors.red,
//     onError: Colors.redAccent,
//     surface: Colors.black,
//     onSurface: Colors.white,
//   ),
// );