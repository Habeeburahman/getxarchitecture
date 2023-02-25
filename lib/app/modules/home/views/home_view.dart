import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:
          //create a listview of 100 numbers and display item as a card widget with the number as the title
          ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(index.toString()),
            ),
          );
        },
      ),
    );
  }
}
