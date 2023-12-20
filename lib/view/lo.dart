// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:second_choice_new/screens/profilepage.dart';
// import 'package:second_choice_new/screens/settings_page.dart';
//
// import '../Bottumnavigationbar.dart';
// import 'home.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool isFavorite = false;
//
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final List<String> carName = [
//     'Jeep W186X LandSUV',
//     'LAND ROVER X800',
//     'Benz S Class 350CDI',
//     'AUDI Q5 40 TDI'
//   ];
//   final List<String> carImages = [
//     'assets/images/whitecar.jpg',
//     'assets/images/rangerover.jpg',
//     'assets/images/blackcar.jpg',
//     'assets/images/cargr.jpg'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         key: _scaffoldKey,
//         appBar: CustomAppBar(
//           scaffoldKey: _scaffoldKey,
//           preferredSize: const Size.fromHeight(70),
//         ),
//         body: ListView.builder(
//           itemCount: carName.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(context,  MaterialPageRoute(builder: (context) {
//                   return Details();
//                 },));
//               },
//               child: Card(
//                 color: Colors.lightBlue[50],
//                 elevation: 8,
//                 margin:
//                 const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 child: Column(
//                   children: [
//                     ClipRRect(
//                       borderRadius:
//                       BorderRadius.vertical(top: Radius.circular(10)),
//                       child: SizedBox(
//                         height: 200,
//                         width: double.infinity,
//                         child: Image.asset(
//                           carImages[index],
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         carName[index],
//                         style: const TextStyle(
//                           fontWeight: FontWeight.w900,
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(Icons.calendar_today_rounded,
//                                   color: Colors.white70),
//                               Text(
//                                 '2014',
//                                 style: TextStyle(fontWeight: FontWeight.w900),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Icon(Icons.speed_rounded,
//                                   color: Color.fromARGB(1768, 255, 204, 0)),
//                               Text(
//                                 '59000 KM',
//                                 style: TextStyle(fontWeight: FontWeight.w900),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Icon(Icons.info_outline_rounded,
//                                   color: Colors.teal),
//                               Text(
//                                 'Diesel',
//                                 style: TextStyle(fontWeight: FontWeight.w900),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(Icons.currency_rupee),
//                               Text(
//                                 '71,00,000',
//                                 style: TextStyle(fontWeight: FontWeight.w900),
//                               )
//                             ],
//                           ),
//                           IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   isFavorite =
//                                   !isFavorite; // Toggle the favorite status
//                                 });
//                               },
//                               icon: Icon(
//                                 isFavorite
//                                     ? Icons.favorite
//                                     : Icons.favorite_border,
//                                 color: isFavorite
//                                     ? Colors.red[400]
//                                     : Color.fromARGB(000066, 0, 0, 102),
//                                 size: 30,
//                               ))
//                         ],
//                       ),
//                     )
//                     // Other car details here
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.indigo[100],
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Danial Disooza',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundImage: AssetImage('assets/images/profile.jpg'),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: ListTile(
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
//                   },
//                   leading: Icon(Icons.home, color: Colors.green[100], size: 30),
//                   title: Text('Home',
//                       style: TextStyle(color: Colors.black, fontSize: 17)),
//                 ),
//               ),
//               ListTile(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Seti(),));
//                 },
//                 leading:
//                 Icon(Icons.settings, color: Colors.brown[100], size: 30),
//                 title: Text('Settings',
//                     style: TextStyle(color: Colors.black, fontSize: 17)),
//               ),
//               ListTile(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Prof(),));
//                 },
//                 leading: Icon(Icons.person,
//                     color: Colors.indigoAccent[100], size: 30),
//                 title: Text('Profile',
//                     style: TextStyle(color: Colors.black, fontSize: 17)),
//               ),
//               ListTile(
//                 onTap: () {},
//                 leading: Icon(Icons.privacy_tip_outlined,
//                     color: Colors.red[100], size: 30),
//                 title: Text('About Us',
//                     style: TextStyle(color: Colors.black, fontSize: 17)),
//               ),
//               ListTile(
//                 onTap: () {},
//                 leading: Icon(Icons.star_border_rounded,
//                     color: Colors.orange[100], size: 30),
//                 title: Text('Share your experience',
//                     style: TextStyle(color: Colors.black, fontSize: 17)),
//               ),
//               ListTile(
//                 onTap: () {},
//                 leading: Icon(Icons.live_help_outlined,
//                     color: Colors.purple[100], size: 30),
//                 title: Text('Help line',
//                     style: TextStyle(color: Colors.black, fontSize: 17)),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 18,right: 18,top: 90),
//                 child: ElevatedButton(
//                     style: ButtonStyle(
//                         backgroundColor: MaterialStatePropertyAll(Colors.teal),
//                         fixedSize: MaterialStatePropertyAll(Size(30, 30))),
//                     onPressed: () {},
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [Icon(Icons.login_outlined), Text('Logout')],
//                     )),
//               )
//
// // Add more list items as needed
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final GlobalKey<ScaffoldState> scaffoldKey;
//
//   const CustomAppBar({
//     Key? key,
//     required this.scaffoldKey,
//     required this.preferredSize,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: Builder(
//         builder: (context) => IconButton(
//           onPressed: () {
//             scaffoldKey.currentState?.openDrawer();
//           },
//           icon: Icon(Icons.menu),
//           color: Colors.white,
//         ),
//       ),
//       backgroundColor: Colors.transparent,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(10),
//           bottomRight: Radius.circular(10),
//         ),
//       ),
//       title: Padding(
//         padding: const EdgeInsets.only(left: 30),
//         child: TextField(
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//             border: InputBorder.none,
//             hintText: "Tell us your dream",
//             hintStyle: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   final Size preferredSize;
// }