 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hbk/Application/NavigationService/navigation.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/Dialogs/successfull_dialog.dart';
import 'package:hbk/Presentation/Common/app_buttons.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Common/image_widgets.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/HomeScreen/Components/modal_product_added.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/HomeScreen/Components/product_added_dialog_box.dart';

class NewArrivals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
         
          children: [
            ProductCard(
              image: 'assets/images/hbkproduct.jpg',
              title: 'Belpla Teenagers 1 ply single Beb Blanket',
              price: 'Rs 5490',
            ),
            ProductCard(
              image: 'assets/images/hbkproduct.jpg',
              title: 'Belpla Teenagers 1 ply single Beb Blanket',
              price: 'Price: \$29.99',
            ),
      
          ],
        ),
      ),
    );
  }
}





class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  ProductCard({required this.image, required this.title, required this.price});

 
  Widget build(BuildContext context) {
    return Card(
      child: Container( 
       
        width: 200, // Adjust the width as needed
        margin: EdgeInsets.all(10),
        
        child: Column(
          
          children: [
            Image.asset(image, height: 150, width: 200, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(AppStrings.Producttitle, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: [
                Column(
                  children: [Text('Rs')],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Text(
                        '5490',
                        style: TextStyle(
                          color: Color.fromARGB(255, 31, 117, 187),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),
            
            CustomButton(onTap: (){

           
           showDialog(context: context, builder: (context){
           
             return   ProductAddedToCart(); 
           
           
            }); 
           
         }, text: AppStrings.addedtocart, leadingIcon: 'assets/images/Bag.svg',),
          ],
        ),
    
    
      ),
    );
  }



  
}
 
//                 Text('Here is some additional data...'),
//                 SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       child: Text('Close'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }









 

class ProductListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
     
      decoration: BoxDecoration(color:Colors.red, borderRadius:BorderRadius.circular(20),

       
      ),

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length, 
        itemBuilder: (context, index) {
    
          return ProductCard(
            
            image: productList[index].image,
            title: productList[index].title,
            price: productList[index].price,
          );
        },
      ),
    );
  }
}

 

class Product {
  final String image;
  final String title;
  final String price;

  Product({required this.image, required this.title, required this.price});
}


 
 
List<Product> productList = [
  Product(
    image: 'assets/images/hbkproduct.jpg',
    title: 'Belpla Teenagers 1 ply single Beb Blanket',
    price: 'Rs 5490',
  ),
  Product(
    image: 'assets/images/hbkproduct.jpg',
    title: 'Belpla Teenagers 1 ply single Beb Blanket',
    price: 'Price: \$29.99',
  ),
  
];










 
 
 







 
