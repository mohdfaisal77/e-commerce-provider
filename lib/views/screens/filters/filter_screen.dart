import 'package:ecommerce/custom_widgets/CircularBordersContainerWidget.dart';
import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/custom_widgets/brands_list_widget.dart';
import 'package:ecommerce/custom_widgets/sizes_of_clothes_widget.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/models/CircularBordersContainer.dart';
import 'package:ecommerce/models/sizes_of_clothes.dart';
import 'package:ecommerce/providers/slider_povider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}
int _value=1;

List<String> choice_chips=[
  "All",
  "Women",
  "Men",
  "Boys",
  "Girls"
];

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    print("whole build");
    // final provider = Provider.of<SliderProvider>(context,listen: true);
    final provider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22, right: 22, top: 10, bottom: 18),
            child: Text("Price Range"),
          ),
          Consumer<SliderProvider>(builder: (context, value, child) {
            return RangeSlider(
              min: 0.0,
              max: 100.0,
              values: RangeValues(value.startValue, value.endValue),
              onChanged: (values) {
                print("build");
                value.setStartValue(values.start);
                value.setEndValue(values.end);
              },
            );
          }),
          Container(
            color: Colors.grey.shade200,
            width: double.infinity,
            height: 1,
          ),
          Column(
            children: [
              //Need to check
              Padding(
                padding: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Colors"),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularBordersContainerWidget(
                      containerModel: CircularBordersContainer(
                        width: 50,
                        height: 50,
                        outerColor: "#FFFFFF",
                        innerColor: "#008000",
                        borderColor: "#FFA500",
                        boxShadowColor: "#A2B5B7",
                      ),
                    ),
                    CircularBordersContainerWidget(
                      containerModel: CircularBordersContainer(
                        width: 50,
                        height: 50,
                        outerColor: "#FFFFFF",
                        innerColor: "#008000",
                        borderColor: "#FFA500",
                        boxShadowColor: "#A2B5B7",
                      ),
                    ),
                    CircularBordersContainerWidget(
                      containerModel: CircularBordersContainer(
                        width: 50,
                        height: 50,
                        outerColor: "#FFFFFF",
                        innerColor: "#008000",
                        borderColor: "#FFA500",
                        boxShadowColor: "#A2B5B7",
                      ),
                    ),
                    CircularBordersContainerWidget(
                      containerModel: CircularBordersContainer(
                        width: 50,
                        height: 50,
                        outerColor: "#FFFFFF",
                        innerColor: "#008000",
                        borderColor: "#FFA500",
                        boxShadowColor: "#A2B5B7",
                      ),
                    ),
                    CircularBordersContainerWidget(
                      containerModel: CircularBordersContainer(
                        width: 50,
                        height: 50,
                        outerColor: "#FFFFFF",
                        innerColor: "#008000",
                        borderColor: "#FFA500",
                        boxShadowColor: "#A2B5B7",
                      ),
                    ),
                    CircularBordersContainerWidget(
                      containerModel: CircularBordersContainer(
                        width: 50,
                        height: 50,
                        outerColor: "#FFFFFF",
                        innerColor: "#008000",
                        borderColor: "#FFA500",
                        boxShadowColor: "#A2B5B7",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey.shade200,
                width: double.infinity,
                height: 1,
              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Sizes"),
                ),
              ),
             Padding(
               padding:  EdgeInsets.only(left: 18, right: 18,bottom: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   SizesOfClothesWidget(

                     sizesOfClothesModel: SizesOfClothesModel(
                       width: 40,
                       height: 40,
                       color: '#FFFFFF', // Provide a valid hex color string
                       borderRadius: 10, // Pass only the double value
                       borderWidth: 2,   // Provide a valid border width
                     ),
                     text: 'XL', // Provide meaningful text
                   ),
                   SizesOfClothesWidget(
                     sizesOfClothesModel: SizesOfClothesModel(
                       onTap: (){},
                       width: 40,
                       height: 40,
                       color: '#FFFFFF', // Provide a valid hex color string
                       borderRadius: 10, // Pass only the double value
                       borderWidth: 2,   // Provide a valid border width
                     ),
                     text: 'XL', // Provide meaningful text
                   ),
                   SizesOfClothesWidget(
                     sizesOfClothesModel: SizesOfClothesModel(
                       width: 40,
                       height: 40,
                       color: '#FFFFFF', // Provide a valid hex color string
                       borderRadius: 10, // Pass only the double value
                       borderWidth: 2,   // Provide a valid border width
                     ),
                     text: 'XL', // Provide meaningful text
                   ),
                   SizesOfClothesWidget(
                     sizesOfClothesModel: SizesOfClothesModel(
                       width: 40,
                       height: 40,
                       color: '#FFFFFF', // Provide a valid hex color string
                       borderRadius: 10, // Pass only the double value
                       borderWidth: 2,   // Provide a valid border width
                     ),
                     text: 'XL', // Provide meaningful text
                   ),
                   SizesOfClothesWidget(
                     sizesOfClothesModel: SizesOfClothesModel(
                       width: 40,
                       height: 40,
                       color: '#FFFFFF', // Provide a valid hex color string
                       borderRadius: 10, // Pass only the double value
                       borderWidth: 2,   // Provide a valid border width
                     ),
                     text: 'XL', // Provide meaningful text
                   ),

                 ],
               ),
             ),

              // Container(
              //   width: 40,
              //   height: 40,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.white,
              //     border: Border.all(color: Colors.grey.shade200)
              //   ),
              //   child: Center(
              //     child: Text("XL"),
              //   ),
              // )

            ],
          ),
          Container(
            color: Colors.grey.shade200,
            width: double.infinity,
            height: 1,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Category"),
            ),
          ),
         Padding(padding: EdgeInsets.only(left: 18,bottom: 20),
         child:  Wrap(
          direction:Axis.horizontal,
           spacing: 30.0,
           children: List<Widget>.generate(
             choice_chips.length,
                 (int choices) {
               return ChoiceChip(
                 selectedColor: AppColor.orangeIconColor,
                 padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                 showCheckmark: false,
                 label: Text(choice_chips[choices]),
                 selected: _value == choices,
                 onSelected: (bool selected) {
                   setState(() {
                     _value = (selected ? choices : null)!;
                   });
                 },
               );
             },
           ).toList(),
         ),
         ),
          Container(
            color: Colors.grey.shade200,
            width: double.infinity,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,top: 6.0),
            child: BrandsList(
              title: 'Brands',
              subTitle: 'Adidas , Puma , Sports',
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          )
        ],
      ),
    );
  }
}
