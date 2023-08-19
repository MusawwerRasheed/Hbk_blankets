// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hbk/Application/NavigationService/navigation.dart';
// import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
// import 'package:hbk/Data/DataSource/Static/sized_box.dart';
// import 'package:hbk/Data/DataSource/Static/text_styles.dart';
// import 'package:hbk/Data/DataSource/Static/utils.dart';
// import 'package:hbk/Presentation/Common/app_buttons.dart';
// import 'package:hbk/Presentation/Common/app_text.dart';
// import 'package:hbk/Presentation/Common/image_widgets.dart';
// import 'package:hbk/Presentation/Widgets/Auth/Login/login_screen.dart';
//
// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});
//
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final List<String> onboardingImageList = Utils.imageList;
//   final List<String> onboardingTextList = Utils.textList;
//   final List<String> onboardingSubtitlesList = Utils.textSubtitles;
//
//   final ValueNotifier<int> pageValueNotifier = ValueNotifier(0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         automaticallyImplyLeading: false,
//         actions: [
//           TextButton(
//               onPressed: () {
//                 // Handle skip button tap
//                 _goToLoginScreen();
//               },
//               child: AppText(
//                   style: Styles.circularStdRegular(context,
//                       color: AppColors.greyColor),
//                   'Skip')),
//         ],
//       ),
//       body: ValueListenableBuilder<int>(
//         builder: (context, notifier, child) {
//           return Padding(
//             padding: EdgeInsets.all(16.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Expanded(
//                         child: PageView.builder(
//                           itemCount: Utils.imageList.length,
//                           itemBuilder: (context, index) {
//                             return Column(
//                               children: [
//                                 AssetImageWidget(
//                                   url: Utils.imageList[pageValueNotifier.value],
//                                   width: 300.w,
//                                   height: 230.h,
//                                 ),
//                                 CustomSizedBox.height(16.h),
//                                 AppText(Utils.textList[pageValueNotifier.value],
//                                     style: Styles.circularStdBold(
//                                       context,
//                                       fontSize: 18.sp,
//                                     )),
//                                 CustomSizedBox.height(8.0),
//                                 Text(
//                                   Utils.textSubtitles[pageValueNotifier.value],
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(fontSize: 16.sp),
//                                 ),
//                               ],
//                             );
//                           },
//                           onPageChanged: (x) {
//                             pageValueNotifier.value = x;
//                           },
//                         ),
//                       ),
//
//                       CustomSizedBox.height(20.h),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: List.generate(
//                           Utils.imageList.length,
//                           (index) => _buildDotIndicator(index),
//                         ),
//                       ),
//
//                       // CustomSizedBox.height(.h),
//                       Padding(
//                         padding: EdgeInsets.only(top: 80.h),
//                         child: CustomButton(
//                           onTap: () {
//                             if (pageValueNotifier.value <
//                                 Utils.imageList.length - 1) {
//                               pageValueNotifier.value++;
//                             } else {
//                               // Show the "Get Started" button when the last content is shown.
//                               _showGetStartedButton();
//                             }
//                           },
//                           text: pageValueNotifier.value <
//                                   Utils.imageList.length - 1
//                               ? "Next"
//                               : "Get Started",
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//         valueListenable: pageValueNotifier,
//       ),
//     );
//   }
//
//   // Build the dot indicator for the horizontal menu.
//   Widget _buildDotIndicator(int index) {
//     bool isActive = index == pageValueNotifier.value;
//
//     Color color =
//         index == pageValueNotifier.value ? AppColors.primaryColor : Colors.grey;
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 4.w),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 200),
//         curve: Curves.easeInOut,
//         width: isActive ? 30.w : 15.w,
//         height: 5.h,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           // shape: BoxShape.circle,
//           color: color,
//         ),
//       ),
//     );
//   }
//
//   // Navigate to the login screen.
//   void _goToLoginScreen() {
//     Navigate.to(context, const LoginScreen());
//   }
//
//   // Show the "Get Started" button.
//   void _showGetStartedButton() {
//     // Navigate.toReplace(context, const LoginScreen());
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Application/NavigationService/navigation.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:hbk/Data/DataSource/Static/text_styles.dart';
import 'package:hbk/Presentation/Common/app_buttons.dart';
import 'package:hbk/Presentation/Common/app_text.dart';
import 'package:hbk/Presentation/Widgets/Auth/Login/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
         currentPageIndex==2?const SizedBox(): TextButton(
            onPressed: () {
              introKey.currentState?.animateScroll(2);
            },
            child: AppText(
              'Skip',
              style:
                  Styles.circularStdMedium(context, color: AppColors.greyColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Stack(
          children: [
            IntroductionScreen(
              key: introKey,
              pages: [
                PageViewModel(
                  title: "Discover Warmth",
                  body:
                      "Start your journey with us and discover a wide selection of high-quality blankets that will keep you and your loved ones warm and cozy during chilly nights.",
                  image: Image.asset('assets/images/onboarding1.png'),
                  decoration: pageDecoration(),
                ),
                PageViewModel(
                  title: "Effortless Shopping Experience",
                  body:
                      "Experience hassle-free shopping with our intuitive app interface. Browse through a wide variety of blankets, filter by size and material, and find the perfect match for your needs.",
                  image: Image.asset('assets/images/onboarding2.png'),
                  decoration: pageDecoration(),
                ),
                PageViewModel(
                  title: "Secure Checkout & Fast Delivery",
                  body:
                      "Rest easy knowing your payments are safe and secure. Our speedy delivery service ensures your cozy blanket will arrive at your doorstep in no time, ready to envelop you in warmth.",
                  image: Image.asset('assets/images/onboarding3.png'),
                  // Replace with your image
                  decoration: pageDecoration(),
                ),
              ],
              onChange: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              onDone: () {
                // Handle the "Get Started" button press
              },
              done: ElevatedButton(
                onPressed: () {
                  // Handle the "Done" button press
                },
                child: const Text("Get Started"),
              ),
              showNextButton: false,
              showBackButton: false,
              showSkipButton: false,
              showBottomPart: false,
            ),
            Positioned(
                bottom: 1.sh /6,
                left: 0,
                right: 0,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      List.generate(3, (index) => _buildDotIndicator(index)),
                )),
            Positioned(
                bottom: 10.h,
                left: 10.w,
                right: 10.w,
                child: CustomButton(
                  onTap: () {
                    if (currentPageIndex == 0) {
                      introKey.currentState?.animateScroll(1);
                    } else if (currentPageIndex == 1) {
                      introKey.currentState?.animateScroll(2);
                    } else {
                      Navigate.toReplace(context, const LoginScreen());
                    }
                  },
                  text: currentPageIndex == 2 ? "Get Started" : "Next",
                ))
          ],
        ),
      ),
    );
  }

  Widget _buildDotIndicator(int index) {
    bool isActive = index == currentPageIndex;

    Color color =
        index == currentPageIndex ? AppColors.primaryColor : Colors.grey;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: isActive ? 30.w : 15.w,
        height: 5.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }

  pageDecoration() {
    return PageDecoration(
        titleTextStyle: Styles.circularStdBold(context, fontSize: 24.sp),
        imageFlex: 1,
        imagePadding: EdgeInsets.only(top: 20.h),
        bodyTextStyle: Styles.circularStdMedium(context, fontSize: 16.sp));
  }
}
