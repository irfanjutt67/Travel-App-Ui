import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
//
import '../../const/consts.dart';
import '../../widgets/apply_field.dart';
import 'view_form.dart';

class ApplyForm extends StatefulWidget {
  const ApplyForm({Key? key}) : super(key: key);

  @override
  State<ApplyForm> createState() => _ApplyFormState();
}

class _ApplyFormState extends State<ApplyForm> {
  bool valuefirst = false;

  late DateTime selectedDate;
  var dobC = TextEditingController();
  var fromdobC = TextEditingController();
  var toDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              5.heightBox,
              Lottie.network(
                  'https://assets1.lottiefiles.com/datafiles/AtGF4p7zA8LpP2R/data.json',
                  height: 272),
              10.heightBox,
              bookForm.text.color(btnColor).bold.size(23).make(),
              15.heightBox,
              textFields(
                label: "Full Name",
                hint: "Enter Name",
                icon: Icons.person,
                type: TextInputType.name,
              ),
              15.heightBox,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  onFieldSubmitted: (v) {
                    dobC.text = v;
                  },
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1970),
                            lastDate: DateTime.now())
                        .then((value) {
                      if (value == null) {
                        return;
                      } else {
                        selectedDate = value;
                        dobC.text = selectedDate.toString().substring(0, 10);
                      }
                    });
                  },
                  controller: dobC,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.date_range),
                    labelText: 'Date of birth',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              15.heightBox,
              textFields(
                label: "Enter Phone Number",
                hint: "Phone Number",
                type: TextInputType.number,
                icon: Icons.phone,
              ),
              15.heightBox,
              textFields(
                label: " Enter Email Address",
                hint: "Email Address",
                type: TextInputType.emailAddress,
                icon: Icons.email,
              ),
              15.heightBox,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  onFieldSubmitted: (v) {
                    fromdobC.text = v;
                  },
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1970),
                            lastDate: DateTime.now())
                        .then((value) {
                      if (value == null) {
                        return;
                      } else {
                        selectedDate = value;
                        fromdobC.text =
                            selectedDate.toString().substring(0, 10);
                      }
                    });
                  },
                  controller: fromdobC,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.date_range),
                    labelText: 'From',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              15.heightBox,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  onFieldSubmitted: (v) {
                    toDate.text = v;
                  },
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1970),
                            lastDate: DateTime.now())
                        .then((value) {
                      if (value == null) {
                        return;
                      } else {
                        selectedDate = value;
                        toDate.text = selectedDate.toString().substring(0, 10);
                      }
                    });
                  },
                  controller: toDate,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.date_range),
                    labelText: 'To',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              15.heightBox,
              textFields(
                label: "Adults",
                hint: "01",
                type: TextInputType.number,
                icon: Icons.person_2,
              ),
              15.heightBox,
              textFields(
                label: "Nights",
                hint: "01",
                type: TextInputType.number,
                icon: Icons.night_shelter,
              ),
              15.heightBox,
              textFields(
                label: "Enter Address",
                hint: "Address",
                type: TextInputType.text,
                icon: Icons.streetview,
              ),
              15.heightBox,
              textFields(
                label: "Enter Messages",
                hint: "Messages",
                type: TextInputType.text,
                isDesc: true,
                icon: Icons.message,
              ),
              15.heightBox,
              "Confirm"
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
                Get.to(() => const SummaryForm());
              })
            ],
          ),
        ),
      ),
    );
  }
}
