import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/views/items/home/view_all_grid_items.dart';
import 'package:ecommerce/views/items/shop/view_all_list_items.dart';
import 'package:ecommerce/views/screens/filters/filter_screen.dart';
import 'package:flutter/material.dart';

class WomensTop extends StatefulWidget {
  const WomensTop({super.key});

  @override
  State<WomensTop> createState() => _WomensTopState();
}

class _WomensTopState extends State<WomensTop> {
  bool _showgrid = false; // Move _showgrid here to make it a state variable

  final List<String> img_listView = [
    "assets/images/common/images/women_images/photo.png",
    "assets/images/common/images/women_images/photo.png",
    "assets/images/common/images/women_images/photo.png",
    "assets/images/common/images/women_images/photo.png",
    "assets/images/common/images/women_images/photo.png",
  ];
  final List<String> img_gridView = [
    "assets/images/utils/view_all_img1.png",
    "assets/images/utils/view_all_img2.png",
    "assets/images/utils/view_all_img1.png",
    "assets/images/utils/view_all_img2.png",
    "assets/images/utils/view_all_img1.png",
    "assets/images/utils/view_all_img2.png",
  ];

  final List<String> filters=[
    "Popular",
    "Newest"
  ];

  final List<String> prices_level=[
    "Price: lowest to high",
    "Price: highest to low"
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: .7,
        shadowColor: Colors.white.withOpacity(.25),
        leading: const BackBtn(),
        title: _showgrid ?  Text(
          "Women's Top",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ) : null,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WomensTop()));
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: _showgrid ? null : Text(
              "Women's Top",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 80,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF222222),
                    ),
                    child: Center(
                      child: Text(
                        "Tshirts",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.filter_list_rounded),
              const SizedBox(width: 5),
              InkWell(
                  onTap: () {
                    /// showModalBottomSheet

                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      barrierColor: Colors.black.withOpacity(.3),
                      // isDismissible: false,
                      // elevation: 100,
                      context: context,
                      builder: (_) {
                        return Container(
                          width: double.maxFinite,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 20),
                              Container(
                                height: 6,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Sort By",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10),
                         SizedBox(
                           height: 100,
                           child: ListView.builder(
                               itemCount: filters.length,
                               itemBuilder: (_,index){
                           return InkWell(
                             onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
                             },
                             splashColor: AppColor.orangeIconColor,
                             child: ListTile(

                               title:Text(filters[index])
                             ),
                           );
                           }),
                         ),
                              SizedBox(height: 20),
                            ],
                          ),
                        );
                      },
                    );

                    /// draggable scroll able sheet
                    // DraggableScrollableSheet(
                    //   builder: (context, scrollController) {
                    //     return Container();
                    //   },
                    // );
                  },
                  child: Text("Filters")),
              const SizedBox(width: 20),
              const Icon(Icons.arrow_upward_outlined),
              const SizedBox(width: 5),
              InkWell(
                onTap: () {
                  /// showModalBottomSheet

                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    barrierColor: Colors.black.withOpacity(.3),
                    // isDismissible: false,
                    // elevation: 100,
                    context: context,
                    builder: (_) {
                      return Container(
                        width: double.maxFinite,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 20),
                            Container(
                              height: 6,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Sort By",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                  itemCount: prices_level.length,
                                  itemBuilder: (_,index){
                                    return InkWell(
                                      splashColor: AppColor.orangeIconColor,
                                      // focusColor: Colors.deepOrangeAccent,
                                      onTap: (){},
                                      child: ListTile(
                                      
                                          title:Text(prices_level[index])
                                      ),
                                    );
                                  }),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      );
                    },
                  );

                  /// draggable scroll able sheet
                  // DraggableScrollableSheet(
                  //   builder: (context, scrollController) {
                  //     return Container();
                  //   },
                  // );
                },
                child: Text("Price: Lowest to high"),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  setState(() {
                    _showgrid = !_showgrid; // Toggle _showgrid state
                  });
                },
                child: const Icon(Icons.grid_view_rounded),
              )
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: _showgrid
                ? GridView.builder(
                    itemCount: img_gridView.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        mainAxisExtent: 260),
                    itemBuilder: (_, int index) {
                      return ViewAllGridItems(image: img_gridView[index]);
                    },
                  )
                : ListView.builder(
                    itemCount: img_listView.length,
                    itemBuilder: (_, int index) {
                      return ViewAllListItems(image: img_listView[index]);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
