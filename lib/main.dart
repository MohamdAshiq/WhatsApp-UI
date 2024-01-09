import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Provider/msg_controller.dart';
import 'package:whatsapp_ui/Screens/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MsgController(),
          ),
        ],
        child: MaterialApp(
          title: Constants.appname,
          theme: ThemeData(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        ),
      );
}
