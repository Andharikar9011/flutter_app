import 'package:flutter/material.dart';
import 'package:appcenter/appcenter.dart';
import 'package:appcenter_analytics/appcenter_analytics.dart';
import 'package:appcenter_crashes/appcenter_crashes.dart';




Future<void> main() async {
var app_secret =  "e28083ec-7390-4a29-a803-2dd159910ed0";
await AppCenter.start(app_secret, [AppCenterAnalytics.id, AppCenterCrashes.id]);
runApp(MyApp());
}

class MyApp extends StateLessWidget{
Widget build(BuildContext context){
return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
			title:Text('Second APP'),
			),
		body: Card(
			child: Column(
				children:<Widget>[
				Image.asset(assets/food.jpg),
				Text('Food'),
				Image.asset(assets/food.jpg),
				Text('Food')
				]
				),
			),
		),
	);
}
}