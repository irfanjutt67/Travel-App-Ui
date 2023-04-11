import '../const/consts.dart';

Widget textFields({type, icon, label, hint, isDesc = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextFormField(
      textInputAction: TextInputAction.next,
      autocorrect: true,
      keyboardType: type,
      validator: (v) {
        if (v!.length < 5) {
          return 'should be greater than 5';
        }
        return null;
      },
      decoration: InputDecoration(
        icon: Icon(
          icon,
          size: 25,
        ),
        labelText: label,
        labelStyle: const TextStyle(color: subtextColor),
        hintText: hint,
        hintStyle: const TextStyle(fontFamily: semibold),
        isDense: true,
        border: const OutlineInputBorder(),
      ),
    ),
  );
}
// Widget applyTextField({String? hint, label, isDesc = false, type, icon}) {
//   return TextFormField(
//     // autofocus: true,
//     autocorrect: true,
//     textInputAction: TextInputAction.next,
//     validator: (value) {
//       if (value!.isEmpty) {
//         return '*Required';
//       } else {
//         return null;
//       }
//     },
//     keyboardType: type,
//     decoration: InputDecoration(
//       border: const OutlineInputBorder(
//         borderSide: BorderSide(color: labelColor),
//       ),
//       focusedBorder: const OutlineInputBorder(
//         borderSide: BorderSide(color: labelColor),
//       ),
//       suffixIcon: Icon(
//         icon,
//         size: 25,
//       ),
//       labelText: label,
//       labelStyle: const TextStyle(color: subtextColor),
//       hintText: hint,
//       hintStyle: const TextStyle(fontFamily: semibold),
//       isDense: true,
//     ),
//   );
// }
