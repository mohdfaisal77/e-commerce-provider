import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/custom_widgets/brands_list_widget.dart';
import 'package:flutter/material.dart';
class BrandsScreen extends StatefulWidget {
  const BrandsScreen({super.key});

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: .7,
        shadowColor: Colors.white.withOpacity(.25),
        title: Text(
          'Filters',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: BackBtn(),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            BrandsList(
              title: 'Brands',
              trailing: Icon(Icons.check_box_outline_blank),
            ),
          ],
        ),
      ),
    ));
  }
}
