import 'dart:ui';
import 'package:get/get.dart';
//
import '../../const/consts.dart';
import '../../widgets/our_button.dart';
import '../Apply/apply_form.dart';

class DetailsScreen extends StatelessWidget {
  final String? placeimg;
  final String? title;
  final String? subtitle;
  final String? desc;
  const DetailsScreen(
      {Key? key,
      required this.placeimg,
      required this.title,
      required this.subtitle,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade300,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              placeimg!,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                title!.text.white.size(30).makeCentered(),
                10.heightBox,
                subtitle!.text.white.makeCentered(),
                10.heightBox,
                desc!.text.white.makeCentered(),
                10.heightBox,
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Icon(Icons.bed, color: whiteColor).box.px8.make(),
                  const Icon(Icons.food_bank, color: whiteColor).box.px8.make(),
                  const Icon(Icons.wifi, color: whiteColor).box.px8.make(),
                  const Icon(Icons.bus_alert, color: whiteColor).box.px8.make(),
                ]),
                10.heightBox,
                ourButton(
                    color: btnColor,
                    title: bookNow,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => ApplyForm());
                    }),
              ],
            )
                .box
                .size(300, 300)
                .p8
                .color(Colors.black.withOpacity(0.3))
                .rounded
                .make(),
          ),
        ),
      ),
    );
  }
}
