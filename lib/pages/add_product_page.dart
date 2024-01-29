import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:footwear_admin/controller/home_controller.dart';
import 'package:footwear_admin/widgets/drop_down_button.dart';
import 'package:get/get.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(title: Text("Add Product"),),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Add New Product",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text('Product Name'),
                      hintText: 'Enter Your Product Name'
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text('Description'),
                      hintText: 'Enter Your Product Description'
                  ),
                  maxLines: 4,
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text('Image URL'),
                      hintText: 'Enter Image URL'
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text('Price'),
                      hintText: 'Enter Your Product Price'
                  ),
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Flexible(child: DropDownBtn(
                      items: ['Category1', 'Category2', 'Category3'],
                      selectedItemText: 'Category',
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },)),
                    Flexible(child: DropDownBtn(
                      items: ['Brand1', 'Brand2', 'Brand3'],
                      selectedItemText: 'Brand',
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },)),
                  ],
                ),
                SizedBox(height: 10,),
                Text("Offer Product?"),
                SizedBox(height: 10,),
                DropDownBtn(items: ['true', 'false'],
                  selectedItemText: 'Offer',
                  onSelected: (selectedValue) {
                    print(selectedValue);
                  },),
                SizedBox(height: 10,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text("Add Product"),),

              ],
            ),
          ),
        ),
      );
    });
  }
}
