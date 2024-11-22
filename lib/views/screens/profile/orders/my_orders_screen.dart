import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/views/layouts/profile/orders/delivered_layout.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
     
        leading: const BackBtn(),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyOrdersScreen()),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "My Orders",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          TabBar(
            splashFactory: NoSplash.splashFactory ,
dividerColor: Colors.transparent,
            controller: _tabController,
            indicator: BoxDecoration(

              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs:  [
         Container(
           width: 100,
           height: 30,
           child:  Center(
             child: Text("Delivered"),
           )
         ),Container(
           width: 100,
           height: 30,
           child:  Center(
             child: Text("Processing"),
           )
         ),Container(
           width: 100,
           height: 30,
           child:  Center(
             child:   Text("Cancelled"),
           )
         ),



            ],
          ),
          Expanded(
            child: TabBarView(

              controller: _tabController,
              children: const [
               DeliveredLayout(),
               DeliveredLayout(),
               DeliveredLayout(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
