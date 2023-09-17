import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: Constants.whatsAppGreen,
            foregroundColor: Constants.whiteColor,
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 90,
            title: Text(
              Constants.appname,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => Container(
                
              ),
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
