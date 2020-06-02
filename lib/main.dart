import 'package:flutter/material.dart';
import 'package:appcenter/appcenter.dart';
import 'package:appcenter_analytics/appcenter_analytics.dart';
import 'package:appcenter_crashes/appcenter_crashes.dart';


final ios = defaultTargetPlatform == TargetPlatform.iOS;

var app_secret =  "e28083ec-7390-4a29-a803-2dd159910ed0";
await AppCenter.start(app_secret, [AppCenterAnalytics.id, AppCenterCrashes.id]);
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
@override

State<StatefulWidget> createState(){
	return _MyAppState();
	}
}
class _MyAppState extends State<MyApp> {
	List<String> _products = ['Food Tester'];
@override
Widget build(BuildContext context){
return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
			title:Text('Second APP'),
			),
		body: 
			Column( 
				children:[
				Container(
					margin: EdgeInsets.all(10.0),
					child: RaisedButton(
						onPressed:() {
							setState((){
							_products.add('Advances Food Tester');
							print(_products);
								});
							},
						child :Text('Add Product'),

						),
					),


				 Column( 
				 children:  
					_products.map((element) => Card(child: Column(children:<Widget>[Image.asset('assets/food.jpg'),Text(element)] ))).toList(),
						
					),
						
				]
			)
		),
	);
}
}