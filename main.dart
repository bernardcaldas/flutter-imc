import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:imc/ios/cupertino-app.dart';
import 'package:imc/ui/android/material-app.dart';


//void main() => runApp(MyMaterialApp());
void main() => 
Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());
