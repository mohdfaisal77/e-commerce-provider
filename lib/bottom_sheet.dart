import 'package:flutter/material.dart';
class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          showModalBottomSheet(
            //for giving height to bottomsheet
            // scrollControlDisabledMaxHeightRatio: 0.4,


            //for making sheet not closable , closed only when user manually close it
            isDismissible: false,

              //Take complete screen for showing bottom sheet
             isScrollControlled: true,

              //
              //shape:,
              //for sharpness
              elevation: 10,
              //sheet background color of back page
              barrierColor: Colors.black.withOpacity(0.3),
              backgroundColor: Colors.white,
              context: context,
              builder:(_){
            return Container(
width: double.maxFinite,
              child: Column(
                //For taking screen of bottomsheet as per Text in this Sheet
                 mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 20,),
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
                  SizedBox(height: 200),
                ],
              ),
            );
          });

          //Same as Bottom Sheet - Alternate option

          // DraggableScrollableSheet(
          //   builder: (context,scrollController){
          //
          //   },
          // );
        },
          child: Text("Show Model Bottom Sheet"),
        ),
      ),
    );
  }
}
