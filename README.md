# advnce_flutter_daily_task

## Theme :

In Flutter, themes are used to control the appearance of your app.Flutter provides two built-in themes: LightTheme and DarkTheme. You can further customize these themes or create your own custom themes.


This Flutter project demonstrates how to implement theme switching between light and dark themes.

### Example :



```javascript
import 'package:flutter/material.dart';


//isDark is a boolean variable that determines whether the dark theme is active.
bool isDark = false;

//use ternary operator in the theme property of the MaterialApp widget is set based on the value of isDark.
 themeMode: isDark?ThemeMode.dark:ThemeMode.light,


 //For Dark theme
  onTap: () {
    setState(() {
        isDark=true;
    });
},

//For Light theme
onTap: () {
    setState(() {
        isDark=false;
    });
},
 
```
## Light & Dark Theme :
<p>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/9746981f-5f77-490d-8bdf-4078db995367"  height = 20% width = 30%>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/374a762c-3f08-4f75-aaa8-03e2c5be647e" height = 20% width = 30%>
</p>

## Stepper : 

• The Stepper Widget in Flutter is a versatile tool that plays a crucial role in enhancing user experience within mobile applications.

• It provides an intuitive way to guide users through a multi-step process, allowing developers to create interactive and user-friendly interfaces.


<p>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/351ea6fb-0552-4757-a0e8-c6d294f90e5c"  height = 20% width = 30%>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/2755dd4b-3f00-48e2-97d3-865bab289967" height = 20% width = 30%>
</p>



## State :-
- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app. 
- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets.

## State management:-

- The state management is one of the most popular and necessary processes in the lifecycle of an application. 
- According to official documentation, Flutter is declarative.
- It means Flutter builds its UI by reflecting the current state of your app. 
- The following figure explains it more clearly where you can build a UI from the application state.
- The setState() function allows us to set the properties of the state object that triggers a redraw of the UI.

## There are Two way to represent a State management :-

- Treditional :-
   
    State management involves handling and updating this data to reflect changes in the application's UI. 
   - setState();

- Provider StateManagement :-

    Provider is a Flutter package that simplifies state management by offering a straightforward approach based on the InheritedWidget mechanism.
   - ChangeNotifier
   - ChangeNotifierProvider
   - Consumer   


### ChangeNotifier :-

 - ChangeNotifier is a simple class, which provides change notification to its listeners.
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes.
- In this, we only use the notifyListener() method to inform the listeners.


```dart


class Counter with ChangeNotifier {  
  int _counter;  
  
  Counter(this._counter);  
  
  getCounter() => _counter;  
  setCounter(int counter) => _counter = counter;  
  
  void increment() {  
    _counter++;  
    notifyListeners();  
  }  
  
  void decrement() {  
    _counter--;  
    notifyListeners();  
  }  
}  



```

### ChangeNotifierProvider :-

- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. 
- It comes from the provider package. 
- The following code snippets help to understand the concept of ChangeNotifierProvider.

```dart
void main() {  
  runApp(  
    MultiProvider(  
      providers: [  
        ChangeNotifierProvider(builder: (context) => Counter()),  
        Provider(builder: (context) => SomeOtherClass()),  
      ],  
      child: MyApp(),  
    ),  
  );  
}  

```
### Consumer

- It is a type of provider that does not do any fancy work. 
- It just calls the provider in a new widget and delegates its build implementation to the builder. 
- The following code explains it more clearly.

```dart
return Consumer<Counter>(  
  builder: (context, count, child) {  
    return Text("Total price: ${count.total}");  
  },  
);  
```
### Provider Tree :-
<p>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/40f7eaa9-83b6-49d8-963f-7a0ef8bd4c18"  height = 40% width = 80%>
</p>

### 1.4 Provider & Change Theme using Provider :-

<p>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/edc40cf3-ab57-4429-a372-161f04b44560"  height = 20% width = 30%>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/3e16e8f5-cf70-494e-9ff7-2ef15790bcde" height = 20% width = 30%>
</p>

[ThemeMode.webm](https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/1cdb69fe-0872-4a91-a4c5-a4eb8bbf9627)



### 1.5 Quotes Data Solving with Provider :-

<p>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/6423687c-70b3-4a67-8973-2eab6f7ff6f5"  height = 20% width = 30%>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/25571fc0-dbc1-4e9c-848d-e7ce78e1181b" height = 20% width = 30%>
</p>



https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/1bb88f01-12d5-4bd2-ae02-784c888050eb

