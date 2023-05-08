// import 'package:flutter/material.dart';

// List conversationList = [
//   {
//     "name": "Novac",
//     "imageUrl": "<https://randomuser.me/api/portraits/men/31.jpg>",
//     "isOnline": true,
//     "hasStory": true,
//     "message": "Where are you?",
//     "time": "5:00 pm"
//   },
//   {
//     "name": "Derick",
//     "imageUrl": "<https://randomuser.me/api/portraits/men/81.jpg>",
//     "isOnline": false,
//     "hasStory": false,
//     "message": "It's good!!",
//     "time": "7:00 am"
//   },
//   {
//     "name": "Mevis",
//     "imageUrl": "<https://randomuser.me/api/portraits/women/49.jpg>",
//     "isOnline": true,
//     "hasStory": false,
//     "message": "I love You too!",
//     "time": "6:50 am"
//   },
//   {
//     "name": "Emannual",
//     "imageUrl": "<https://randomuser.me/api/portraits/men/35.jpg>",
//     "isOnline": true,
//     "hasStory": true,
//     "message": "Got to go!! Bye!!",
//     "time": "yesterday"
//   },
//   {
//     "name": "Gracy",
//     "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
//     "isOnline": false,
//     "hasStory": false,
//     "message": "Sorry, I forgot!",
//     "time": "2nd Feb"
//   },
//   {
//     "name": "Robert",
//     "imageUrl": "<https://randomuser.me/api/portraits/men/36.jpg>",
//     "isOnline": false,
//     "hasStory": true,
//     "message": "No, I won't go!",
//     "time": "28th Jan"
//   },
//   {
//     "name": "Lucy",
//     "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
//     "isOnline": false,
//     "hasStory": false,
//     "message": "Hahahahahaha",
//     "time": "25th Jan"
//   },
//   {
//     "name": "Emma",
//     "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
//     "isOnline": false,
//     "hasStory": false,
//     "message": "Been a while!",
//     "time": "15th Jan"
//   }
// ];

// _conversations(BuildContext context) {
//   return Column(
//     children: List.generate(conversationList.length, (index) {
//       return InkWell(
//         child: Padding(
//           padding: const EdgeInsets.only(bottom: 20),
//           child: Row(
//             children: <Widget>[
//               Container(
//                 width: 60,
//                 height: 60,
//                 child: Stack(
//                   children: <Widget>[
//                     conversationList[index]['hasStory']
//                         ? Container(
//                             decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                     color: Colors.blueAccent, width: 3)),
//                             child: Padding(
//                               padding: const EdgeInsets.all(3.0),
//                               child: Container(
//                                 width: 75,
//                                 height: 75,
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     image: DecorationImage(
//                                         image: NetworkImage(
//                                             conversationList[index]
//                                                 ['imageUrl']),
//                                         fit: BoxFit.cover)),
//                               ),
//                             ),
//                           )
//                         : Container(
//                             width: 70,
//                             height: 70,
//                             decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 image: DecorationImage(
//                                     image: NetworkImage(
//                                         conversationList[index]['imageUrl']),
//                                     fit: BoxFit.cover)),
//                           ),
//                     conversationList[index]['isOnline']
//                         ? Positioned(
//                             top: 38,
//                             left: 42,
//                             child: Container(
//                               width: 20,
//                               height: 20,
//                               decoration: BoxDecoration(
//                                   color: Color(0xFF66BB6A),
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                       color: Color(0xFFFFFFFF), width: 3)),
//                             ),
//                           )
//                         : Container()
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     conversationList[index]['name'],
//                     style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width - 135,
//                     child: Text(
//                       conversationList[index]['message'] +
//                           " - " +
//                           conversationList[index]['time'],
//                       style: TextStyle(
//                           fontSize: 15,
//                           color: Color(0xFF000000).withOpacity(0.7)),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       );
//     }),
//   );
// }
