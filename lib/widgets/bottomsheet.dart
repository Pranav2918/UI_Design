// Widget smallBottomSheet(
//     BuildContext context, TextEditingController controller) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 18),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Row(
//           children: <Widget>[
//             IconButton(
//                 onPressed: () => Navigator.pop(context),
//                 icon: Icon(Icons.arrow_back)),
//             Text('Location',
//                 style: TextStyle(
//                     color: Colors.blueGrey[900],
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18))
//           ],
//         ),
//         Padding(
//           padding:
//               EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//           child: Container(
//             margin: EdgeInsets.only(top: 8, left: 8, right: 8),
//             decoration:
//                 BoxDecoration(border: Border.all(color: Colors.blue, width: 2)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(left: 15),
//                   width: MediaQuery.of(context).size.width / 2,
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: 'Search', border: InputBorder.none),
//                     autofocus: true,
//                     controller: controller,
//                   ),
//                 ),
//                 IconButton(
//                     onPressed: () => clearText(controller),
//                     icon: Icon(Icons.close))
//               ],
//             ),
//           ),
//         ),
//         SizedBox(height: 10),
//       ],
//     ),
//   );
// }
