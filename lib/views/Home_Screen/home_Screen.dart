import 'dart:ui';
import 'package:get/get.dart';
//
import '../../const/consts.dart';
import '../../widgets/searchField.dart';
import '../Details_Screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    textField(),
                    30.widthBox,
                    Image.asset(imgProfile).box.shadowMd.roundedFull.make()
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      areasTitle.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: areasTitle[index]
                                .text
                                .makeCentered()
                                .box
                                .shadowSm
                                .rounded
                                .size(80, 40)
                                .white
                                .rounded
                                .make(),
                          )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: placeImages.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            mainAxisExtent: 200),
                    itemBuilder: (context, index) {
                      return Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    placeImages[index],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                          ).box.rounded.shadowMd.make(),
                          ClipRRect(
                              child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 1.5, sigmaY: 1.5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      placeTitle[index]
                                          .text
                                          .size(18)
                                          .bold
                                          .color(whiteColor)
                                          .make(),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_pin,
                                            size: 16,
                                            color: whiteColor,
                                          ),
                                          placeSubTitle[index]
                                              .text
                                              .size(12)
                                              .color(whiteColor)
                                              .make()
                                        ],
                                      ),
                                    ],
                                  )
                                      .px8()
                                      .box
                                      .bottomRounded()
                                      .color(Colors.black.withOpacity(0.3))
                                      .size(double.maxFinite, 50)
                                      .make()))
                        ],
                      ).box.make().onTap(() {
                        Get.to(
                          () => DetailsScreen(
                            placeimg: placeImages[index],
                            title: placeTitle[index],
                            subtitle: placeSubTitle[index],
                            desc: placeDescription[index],
                          ),
                        );
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
