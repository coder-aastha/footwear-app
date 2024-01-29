import 'package:flutter/material.dart';
import 'package:footwear_admin/controller/home_controller.dart';
import 'package:footwear_admin/pages/add_product_page.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(title: Text('Footwear Admin'),),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Title'),
                subtitle: Text("Price: 100"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    print("Delete");
                  },),
              );
            }),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.to(AddProductPage());
        }, child: Icon(Icons.add),),
      );
    });
  }
}
