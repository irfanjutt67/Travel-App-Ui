import '../const/consts.dart';

Widget customTextField(
    {String? title, String? hint, label, isPass, type, fillcolor}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      5.heightBox,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          // autofocus: true,
          autocorrect: true,
          textInputAction: TextInputAction.next,
          keyboardType: type,
          obscureText: isPass,
          validator: (value) {
            if (value!.isEmpty) {
              return '*Required';
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(color: subtextColor),
            hintText: hint,
            hintStyle: const TextStyle(fontFamily: semibold),
            isDense: true,
          ),
        ),
      ),
      5.heightBox,
    ],
  );
}
