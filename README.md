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


<mxfile host="app.diagrams.net" modified="2024-07-09T11:16:45.674Z" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36" etag="gKlvi5_uo7-FJtMuvVoR" version="24.6.4" type="google">
  <diagram name="Page-1" id="3VQLySm89jsCVO_XD0_c">
    <mxGraphModel grid="1" page="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="c4c9qLiy_VqadHw4120j-31" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="c4c9qLiy_VqadHw4120j-2">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="434.5" y="325" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-2" value="&lt;h2 style=&quot;&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font style=&quot;font-size: 18px;&quot;&gt;Provider&lt;/font&gt;&lt;/b&gt;&lt;/h2&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="365" y="240" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-3" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="435" y="478" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-14" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="169" y="480" width="139" height="48" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-15" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Consumer&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="606" y="479" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-37" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="c4c9qLiy_VqadHw4120j-16">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="439.5" y="367" as="targetPoint" />
            <Array as="points">
              <mxPoint x="470" y="426" />
              <mxPoint x="470" y="367" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-16" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;arcSize=22;" vertex="1" parent="1">
          <mxGeometry x="521" y="401" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-17" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="541" y="644" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-18" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="170" y="720" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-19" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="9" y="641" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-20" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="258" y="560" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-21" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="76" y="560" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-33" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="c4c9qLiy_VqadHw4120j-22">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="410" y="370" as="targetPoint" />
            <Array as="points">
              <mxPoint x="401" y="426" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-22" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="217" y="401" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-24" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Consumer&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="169" y="641" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-25" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="702" y="644" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-26" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="615" y="560" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-32" value="&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Widget&lt;/span&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="366" y="325" width="139" height="50" as="geometry" />
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-42" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="270" y="479" as="sourcePoint" />
            <mxPoint x="270" y="450" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-43" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="188" y="560" as="sourcePoint" />
            <mxPoint x="188" y="528" as="targetPoint" />
            <Array as="points">
              <mxPoint x="188" y="552" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-44" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="286.21" y="560" as="sourcePoint" />
            <mxPoint x="286.21" y="528" as="targetPoint" />
            <Array as="points">
              <mxPoint x="286.21" y="552" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-45" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="110" y="641" as="sourcePoint" />
            <mxPoint x="110" y="609" as="targetPoint" />
            <Array as="points">
              <mxPoint x="110" y="633" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-46" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="198" y="641" as="sourcePoint" />
            <mxPoint x="198" y="609" as="targetPoint" />
            <Array as="points">
              <mxPoint x="198" y="633" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-47" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="230" y="721" as="sourcePoint" />
            <mxPoint x="230" y="690" as="targetPoint" />
            <Array as="points">
              <mxPoint x="230" y="713" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-49" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="541" y="478" as="sourcePoint" />
            <mxPoint x="541" y="451" as="targetPoint" />
            <Array as="points">
              <mxPoint x="541" y="466" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-50" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="637" y="478" as="sourcePoint" />
            <mxPoint x="637" y="451" as="targetPoint" />
            <Array as="points">
              <mxPoint x="637" y="466" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-52" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="680" y="560" as="sourcePoint" />
            <mxPoint x="680" y="528" as="targetPoint" />
            <Array as="points">
              <mxPoint x="680" y="552" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-56" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="640" y="643" as="sourcePoint" />
            <mxPoint x="640" y="611" as="targetPoint" />
            <Array as="points">
              <mxPoint x="640" y="635" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-59" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="737" y="643" as="sourcePoint" />
            <mxPoint x="737" y="611" as="targetPoint" />
            <Array as="points">
              <mxPoint x="737" y="635" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="c4c9qLiy_VqadHw4120j-60" value="&lt;h3 style=&quot;&quot;&gt;&lt;font style=&quot;font-size: 12px;&quot;&gt;Value&lt;/font&gt;&lt;/h3&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="468" y="230" width="62" height="30" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>

