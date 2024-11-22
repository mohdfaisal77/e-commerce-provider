import 'package:ecommerce/custom_widgets/list_tile_profile_screen.dart';
import 'package:ecommerce/views/screens/profile/orders/my_orders_screen.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


 // List<String> profile_data=[
//   'My Orders',
//   'Shipping Addresses',
//   'Payment Methods',
//   'Promocodes',
//   'My Reviews',
//   'Settings'
// ];
//
// List<String> sub_title_data=[
//   'Already have 12 Orders',
//   '3 Addresses',
//   'Visa**34',
//   'You have special Promocodes',
//   'Reviews for 4 items',
//   'Notifications,Password'
// ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,

        shadowColor: Colors.white.withOpacity(.25),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => WomensTop()));
            },
            icon: const Icon(Icons.search),
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My Profile",
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
              Row(

                children: [

                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/common/images/profile/profile_img.png',),
                    minRadius: 30,

                  ),
                  SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mohd Faisal",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),),
                      Text("mohdfaisal7839@gmail.com",style: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontWeight: FontWeight.w300,
                          fontSize: 14
                      ),),
                      SizedBox(height: 14,),
                    ],

                  )
          
                ],
              ),
              SizedBox(height: 24,),
              ListTileProfileScreen(title: 'My Orders', subtitle: 'Already have 12 Orders', onTap: () { 
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyOrdersScreen()));
              },),
              ListTileProfileScreen(title: 'Shipping Addresses', subtitle: '3 Addresses', onTap: () {  },),
              ListTileProfileScreen(title: 'Payment Methods', subtitle: 'Visa**34', onTap: () {  },),
              ListTileProfileScreen(title: 'Promocodes', subtitle: 'You have special Promocodes', onTap: () {  },),
              ListTileProfileScreen(title: 'My Reviews', subtitle: 'Reviews for 4 items', onTap: () {  },),
              ListTileProfileScreen(title: 'Settings', subtitle: 'Notifications,Password', onTap: () {  },),
            ],
          ),
        ),
      ),
    );
  }
}
//