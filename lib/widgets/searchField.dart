import '../const/consts.dart';

Expanded textField() {
  return Expanded(
      child: TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      filled: true,
      fillColor: whiteColor,
      hintText: searchDesti,
      hintStyle: const TextStyle(color: labelColor),
    ),
  ).box.shadowSm.rounded.make());
}
