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
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/9746981f-5f77-490d-8bdf-4078db995367"  height = 20% width = 35%>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/374a762c-3f08-4f75-aaa8-03e2c5be647e" height = 20% width = 35%>
</p>

## Stepper : 

• The Stepper Widget in Flutter is a versatile tool that plays a crucial role in enhancing user experience within mobile applications.

• It provides an intuitive way to guide users through a multi-step process, allowing developers to create interactive and user-friendly interfaces.


<p>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/351ea6fb-0552-4757-a0e8-c6d294f90e5c"  height = 20% width = 35%>
  <img src = "https://github.com/AishwaryaBaisane/advnce_flutter_daily_task/assets/149373597/2755dd4b-3f00-48e2-97d3-865bab289967" height = 20% width = 35%>
</p>

