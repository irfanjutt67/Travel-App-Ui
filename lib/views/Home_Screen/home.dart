import 'package:get/get.dart';
//
import '../../const/consts.dart';
import '../../controller/home_controller.dart';
import '../Calender_Screens/calender_Screen.dart';
import '../Departure_Screens/departure_Screen.dart';
import '../Exit_Screen/exit_screen.dart';
import 'home_Screen.dart';

class Homes extends StatefulWidget {
  const Homes({Key? key}) : super(key: key);

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  /// for bottom nav start
  var controller = Get.put(HomeController());

  var navScreens = [
    const HomeScreen(),
    const ClandarScreen(),
    const DepartureScreen(),
    const ExitScreen()
  ];

  @override
  Widget build(BuildContext context) {
    DateTime backPressedTime = DateTime.now();
    var bottomNavbarItem = [
      BottomNavigationBarItem(
        icon: Image.asset(icHome, width: 26.0),
        label: home,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icDate, width: 24.0),
        label: calender,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icDeparture, width: 24.0),
        label: departure,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icExit, width: 24.0),
        label: exit,
      ),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(() => ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: btnColor,
              currentIndex: controller.currentnavIndex.value,
              onTap: (index) {
                controller.currentnavIndex.value = index;
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: fontGrey,
              selectedLabelStyle: const TextStyle(fontFamily: semibold),
              unselectedItemColor: whiteColor,
              items: bottomNavbarItem,
            ),
          )),
      body: Column(
        children: [
          Obx(() => Expanded(
                child: navScreens.elementAt(controller.currentnavIndex.value),
              )),

          /// for bottom nav end
        ],
      ),
    );
  }
}
