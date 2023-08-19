
import 'package:hbk/Data/DataSource/Static/assets.dart';
import 'package:hbk/Domain/Models/Cart/cart_item.dart';
import 'package:hbk/Domain/Models/HomeScreen/category_model.dart';

class Utils {
 static List<String> textList = [
    'Discover Warmth',
    'Effortless Shopping Experience',
    'Secure Checkout & Fast Delivery',
    // Add more texts...
  ];

static List<String> textSubtitles = [
   'Start your journey with us and discover a wide selection of high-quality blankets that will keep you and your loved ones warm and cozy during chilly nights.',
   'Experience hassle-free shopping with our intuitive app interface. Browse through a wide variety of blankets, filter by size and material, and find the perfect match for your needs.',
   'Rest easy knowing your payments are safe and secure. Our speedy delivery service ensures your cozy blanket will arrive at your doorstep in no time, ready to envelop you in warmth.',
 ];

 // Add your image and content data here for different steps of the onboarding.
static List<String> imageList = [
   Assets.onboarding1,
   Assets.onboarding2,
   Assets.onboarding3,
   // Add more images...
 ];

static List<CategoryProduct> categoryDummyProduct=[

  CategoryProduct(productId: "1",productImage: "assets/images/dummy.png",productName: "General Product"),
  CategoryProduct(productId: "2",productImage: "assets/images/dummy2.png",productName: "Baby Blanket"),
  CategoryProduct(productId: "3",productImage: "assets/images/dummy3.png",productName: "Flannel Blanket"),
  CategoryProduct(productId: "4",productImage: "assets/images/dummy2.png",productName: "Baby Blanket"),
  CategoryProduct(productId: "5",productImage: "assets/images/dummy.png",productName: "General Product")

];

static List<CartItem> cartItems = [
  CartItem('1',  'assets/images/applogo.png', 'Belpla Teenagers 1 Ply Single Bed Blanket', 5, 5490),
  CartItem('2',  'assets/images/borjan.png', 'Burjjan 1 ply Double bed embossed blanket', 5, 5490),
];

}