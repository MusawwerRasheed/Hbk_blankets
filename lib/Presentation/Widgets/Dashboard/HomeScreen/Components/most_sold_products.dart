 import 'package:flutter/material.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';

 import 'package:flutter/material.dart';
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Data/DataSource/Static/strings.dart';
import 'package:hbk/Presentation/Common/app_buttons.dart';
import 'package:hbk/Presentation/Common/image_widgets.dart';
import 'package:hbk/Presentation/Widgets/Dashboard/HomeScreen/Components/product_added_dialog_box.dart';

class MostSoldProducts extends StatelessWidget {
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
            // Add more ProductCard widgets here as needed
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



  // decoration: BoxDecoration( boxShadow: BoxShadow(

  //                 color: Colors.grey.withOpacity(0.5), // Shadow color
  //                 spreadRadius: 2, // How far the shadow spreads
  //                 blurRadius: 5,   // How blurry the shadow is
  //                 offset: Offset(0, 3), // Offset in (x,y) from the container
  //               ),
  // @override
  Widget build(BuildContext context) {
    return Card(
      child: Container( 
       
        width: 200, // Adjust the width as needed
        margin: EdgeInsets.all(10),
        
        child: Column(
          
          children: [
           AssetImageWidget(url: image,  scale:2, width: 150, height: 100, ), 
          
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

                return ProductAddedToCart(); 
              });


            }, text: AppStrings.addedtocart, leadingIcon: 'assets/images/Bag.svg',),
          ],
        ),
    
    
      ),
    );
  }
}








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
