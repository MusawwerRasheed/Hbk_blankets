import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/sized_box.dart';

   
 

class BlueCardsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlueCards(),
    );
  }
}

class BlueCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScrollableCardsContainer(),
      ),
    );
  }
}

class ScrollableCardsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 0,
            childAspectRatio: 1.3
          ),
          itemCount: cardData.length,
          itemBuilder: (context, index) {
            return CardItem(
              color: AppColors.primaryColor,
              text1: cardData[index].upperText,
              text2: cardData[index].lowerText,
            );
          },
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;

  const CardItem({
    required this.color,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:0.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: (MediaQuery.of(context).size.width - 40) / 4,
        height: 60, // Adjust the height as desired (reduced height)
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                text2,
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardData {
  final String upperText;
  final String lowerText;

  CardData({required this.upperText, required this.lowerText});
}

final List<CardData> cardData = [
  CardData(upperText: 'Credit limit', lowerText: 'Rs 1,000,000'),
  CardData(upperText: 'Grace limit(0%)', lowerText: 'Rs 1,000'),
  CardData(upperText: 'Special deal', lowerText: 'Rs 0'),
  CardData(upperText: 'Max limit', lowerText: 'Rs 1,000'),
  CardData(upperText: 'Over limit', lowerText: 'Rs 0'),
  CardData(upperText: 'Available limit', lowerText: 'Rs 0'),
];









 

// class BlueCardsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlueCards(),
//     );
//   }
// }

// class BlueCards extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ScrollableCardsContainer(),
//       ),
//     );
//   }
// }

// class ScrollableCardsContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               CardItem(
//                 color: Colors.blue,
//                 text1: 'Credit limit',
//                 text2: 'Rs 1,000,000',
//               ),
//               CardItem(
//                 color: Colors.blue,
//                 text1: 'Grace limit(0%)',
//                 text2: 'Rs 1,000',
//               ),
//               CardItem(
//                 color: Colors.blue,
//                 text1: 'Special deal',
//                 text2: 'Rs 0',
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               CardItem(
//                 color: Colors.blue,
//                 text1: 'Max limit',
//                 text2: 'Rs 1,000',
//               ),
//               CardItem(
//                 color: Colors.blue,
//                 text1: 'Over limit',
//                 text2: 'Rs 0',
//               ),
//               CardItem(
//                 color: Colors.blue,
//                 text1: 'Available limit',
//                 text2: 'Rs 0',
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CardItem extends StatelessWidget {
//   final Color color;
//   final String text1;
//   final String text2;

//   const CardItem({
//     required this.color,
//     required this.text1,
//     required this.text2,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 10),
//       width: 150,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               text1,
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//             SizedBox(height: 5),
//             Text(
//               text2,
//               style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
















// class BlueCardsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlueCards(),
//     );
//   }
// }

// class BlueCards extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ScrollableCardsContainer(),
//       ),
//     );
//   }
// }

// class ScrollableCardsContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               for (int i = 0; i < 3; i++)
//                 CardItem(
//                   color: AppColors.primaryColor,
//                   text1: 'Title $i',
//                   text2: 'Subtitle $i',
//                 ),
//             ],
//           ),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               for (int i = 3; i < 6; i++)
//                 CardItem(
//                   color: AppColors.primaryColor,
//                   text1: 'Title $i',
//                   text2: 'Subtitle $i',
//                 ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CardItem extends StatelessWidget {
//   final Color color;
//   final String text1;
//   final String text2;

//   const CardItem({
//     required this.color,
//     required this.text1,
//     required this.text2,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 10),
//       width: 150,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               text1,
//               style: TextStyle(color: Colors.white, fontSize: 18),
//             ),
//             SizedBox(height: 5),
//             Text(
//               text2,
//               style: TextStyle(color: Colors.white, fontSize: 14),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


















//    class BlueCards extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,

//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: 0, // Adjust this value for the desired spacing
//         mainAxisSpacing: 0,
//       ),
      
//       scrollDirection: Axis.horizontal,
//       itemCount: 6,
//       itemBuilder: (BuildContext context, int index) {
//         return Wrap(
//           runSpacing: 10.h,
//           spacing: 10,
//           children: [
//             CardWidget(),
//           ],
//         );
//       },
//     );
//   }
// }

// class CardWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Card(
//         color: AppColors.primaryColor,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'Credit Limit',
//                 style: TextStyle(color: Colors.white),
//               ),
//               Text(
//                 'Rs 1,000,000',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





 