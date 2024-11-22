import 'package:flutter/material.dart';
class DeliveredOrderContainer extends StatefulWidget {
  const DeliveredOrderContainer({super.key});

  @override
  State<DeliveredOrderContainer> createState() => _DeliveredOrderContainerState();
}

class _DeliveredOrderContainerState extends State<DeliveredOrderContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(

margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5), // Shadow color
            spreadRadius: 8, // How much the shadow spreads
            blurRadius: 5, // How soft the shadow looks
            offset: Offset(0, 3), // Offset in X and Y directions
          ),
        ],
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: Colors.grey),
      ),

      width: 343,
      height: 164,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:Column(
        children: [

             Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order No1947034",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),),
                Text('05-04-2024',style:
                  TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9B9B9B)
                  ),)
              ],
            ),
          SizedBox(height: 4,),
          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Tracking Number:   ",style:
              TextStyle(
                  fontSize: 14,
                  color: Color(0xFF9B9B9B)
              ),),
              Text('988785466785',style:
              TextStyle(
                fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF9B9B9B)
              ),)
            ],
          ),
          SizedBox(height: 4,),
          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Quantity:   ",style:
              TextStyle(
                  fontSize: 14,
                  color: Color(0xFF9B9B9B)
              ),),
              Text('3',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
              SizedBox(width: 68,),
              Text("Total Amount:   ",style:
              TextStyle(
                  fontSize: 14,
                  color: Color(0xFF9B9B9B)
              ),),
              Text('112',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
            ],
          ),
          SizedBox(height: 14,),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        OutlinedButton(

// style: ButtonStyle(
//
// ),
            onPressed: (){}, child: Center(child: Text("Details",style: TextStyle(color: Colors.black),),)

        ),
              Text("Delivered",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2AA952)
              ),),


            ],
          ),
        ],

    ),



      ),
    );
  }
}
