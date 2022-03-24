import 'package:challenge/Screens/calls_screen.dart';
import 'package:challenge/Screens/camera_screen.dart';
import 'package:challenge/Screens/chat_screen.dart';
import 'package:challenge/Screens/status_screen.dart';
import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
   late TabController _tabController;
    @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        return Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
          elevation: 0.0,
          bottom:  TabBar(
            controller: _tabController,
            tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            CameraScreen(),
            ChatScreen(), StatusScreen(), const CallScreen()],
        ));
  }
}
