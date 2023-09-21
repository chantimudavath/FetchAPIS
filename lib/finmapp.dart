// import 'package:blooth/bluetooth_channel.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(RandomDogImagesApp());
// }

// class RandomDogImagesApp extends StatefulWidget {
//   @override
//   _RandomDogImagesAppState createState() => _RandomDogImagesAppState();
// }

// class _RandomDogImagesAppState extends State<RandomDogImagesApp> {
//   String imageUrl = "";
//     Map<String, dynamic>? userData;

//   @override
//   void initState() {
//     super.initState();
//     fetchRandomDogImage();
//         fetchRandomUser();
//   }

//   Future<void> fetchRandomDogImage() async {
//     final response = await http.get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       setState(() {
//         imageUrl = data["message"];
//       });
//     } else {
//       throw Exception("Failed to load random dog image");
//     }
//   }


//    Future<void> fetchRandomUser() async {
//     final response = await http.get(Uri.parse("https://randomuser.me/api/"));
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       setState(() {
//         userData = data['results'][0];
//       });
//     } else {
//       throw Exception("Failed to load random user data");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Random Dog Images"),
//         ),
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center ,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 if (imageUrl.isNotEmpty)
//                   Image.network(
//                     imageUrl,
//                     width: 300,
//                     height: 300,
//                     fit: BoxFit.cover,
//                   ),
//                 SizedBox(height: 20),
//                 Row(
//                    crossAxisAlignment: CrossAxisAlignment.center ,
//               mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         fetchRandomDogImage();
//                       },  
//                       child: Text("Refresh"),
//                     ),
//                      SizedBox(width: 20),
//                     ElevatedButton(
//               onPressed: () {
//                 // BluetoothChannel.enableBluetooth();
//               },
//               child: Text('Enable Bluetooth'),
//             ),
        
        
         
        
        
//                   ],
//                 ),
        
//         Container(height: 400,
//         width:400 ,
        
        
//         child:   userData == null  ? Center(child: CircularProgressIndicator())
//             : ListView(
//                 padding: EdgeInsets.all(16.0),
//                 children: <Widget>[
//                   CircleAvatar(
//                     radius: 50.0,
//                     backgroundImage: NetworkImage(userData!['picture']['large']),
//                   ),
//                   SizedBox(height: 16.0),
//                   Text(
//                     '${userData!['name']['first']} ${userData!['name']['last']}',
//                     style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(height: 8.0),
//                   Text('Email: ${userData!['email']}'),
//                   SizedBox(height: 8.0),
//                   Text('Phone: ${userData!['phone']}'),
//                   SizedBox(height: 8.0),
//                   Text('Location: ${userData!['location']['city']}, ${userData!['location']['country']}'),

// SizedBox(
//   height: 20,
// ),
//                    ElevatedButton(
//                       onPressed: () {
//                         fetchRandomUser();
//                       },  
//                       child: Text("Refresh"),
//                     )
//                 ],

//               ),),
             
             
//               ],
//             ),
//           ),
//         ),
//       ),
//     ); 
//   }
// }