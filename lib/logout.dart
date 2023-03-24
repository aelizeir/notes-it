// import 'package:application_1/auth_controller.dart';
// import 'package:flutter/material.dart';
//
// class LogOutPage extends StatelessWidget {
//   String email;
//
//   LogOutPage({Key? key, required this.email}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           const SizedBox(height: 200),
//           Text(email),
//           GestureDetector(
//             onTap: (){
//               AuthController.instance.logout();
//             },
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 gradient: const LinearGradient(
//                   colors: [
//                     Colors.blue,
//                     Colors.blueGrey,
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.centerRight,
//                 ),
//               ),
//               child: const Center(
//                 child: Text(
//                   "Log out",
//                   style: TextStyle(
//                     fontSize: 36,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//         ),
//       );
//   }
// }
