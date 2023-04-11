import 'package:get/get.dart';
import 'package:new_travel/views/Auth_Screens/login_screen.dart';
//
import '../../const/consts.dart';
import '../../widgets/custome_textfield.dart';
import '../../widgets/our_button.dart';
import '../Home_Screen/home.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginFormKey = GlobalKey<FormState>(); //key
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(imgBanner),
                  fit: BoxFit.fill,
                )),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 250,
              bottom: 0,
              child: Form(
                key: loginFormKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      20.heightBox,
                      hello.text.bold.size(22).color(btnColor).make(),
                      createnew.text.size(8).color(subtextColor).make(),
                      customTextField(
                        isPass: false,
                        hint: email,
                        label: emailHint,
                      ),
                      customTextField(
                        isPass: true,
                        hint: password,
                        label: passHint,
                      ),
                      customTextField(
                        isPass: true,
                        hint: password,
                        label: confirmpass,
                      ),
                      10.heightBox,
                      ourButton(
                          color: btnColor,
                          title: signup,
                          textColor: whiteColor,
                          onPress: () {
                            if (loginFormKey.currentState!.validate()) {
                              Get.to(() => const Homes());
                            }
                          }),
                      5.heightBox,
                      signupwith.text.size(8).color(subtextColor).make(),
                      5.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3,
                            (index) => Image.asset(
                                  socialIconList[index],
                                  width: 30,
                                ).box.roundedFull.p12.make()),
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          alreadyacc.text.color(labelColor).make(),
                          logins.text.color(btnColor).make().onTap(() {
                            Get.to(Get.to(const LoginScreen()));
                          })
                        ],
                      )
                    ],
                  ).box.p12.white.roundedLg.make(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
