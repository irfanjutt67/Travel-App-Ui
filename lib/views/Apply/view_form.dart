import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
//
import '../../const/consts.dart';
import '../Home_Screen/home_Screen.dart';
import 'component/summary.dart';

class SummaryForm extends StatelessWidget {
  const SummaryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.network(
                  'https://assets1.lottiefiles.com/packages/lf20_ogx9s7qo.json',
                  animate: true,
                  height: 272),
              15.heightBox,
              summary.text.color(btnColor).bold.size(23).make(),
              orderPlaceDetails(
                title1: "From",
                d1: "Pakistan",
                title2: "To",
                d2: "Never",
              ),
              orderPlaceDetails(
                title1: "From",
                d1: "Fr 6 Mar",
                title2: "To",
                d2: "Fr 6 Apr",
              ),
              orderPlaceDetails(
                title1: "Passenger",
                d1: "2 Adults",
                title2: "Stay",
                d2: "30 Nights",
              ),
              orderPlaceDetails(
                title1: "",
                d1: "Total Cost",
                title2: "",
                d2: '40000',
              ),
              10.heightBox,
              Image.asset(
                qr,
                fit: BoxFit.fill,
                height: 150,
                width: 150,
              ),
              10.heightBox,
              "Done"
                  .text
                  .white
                  .bold
                  .makeCentered()
                  .box
                  .roundedLg
                  .size(100, 40)
                  .color(btnColor)
                  .make()
                  .onTap(() {
                Get.to(() => const HomeScreen());
              })
            ],
          ),
        ),
      ),
    );
  }
}
