import '../../../const/consts.dart';

Widget orderPlaceDetails({title1, title2, d1, d2, d1color}) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "$title1".text.fontFamily(semibold).color(labelColor).make(),
            "$d1".text.color(d1color).bold.make(),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            "$title2".text.fontFamily(semibold).color(labelColor).make(),
            "$d2".text.color(d1color).bold.make(),
          ],
        )
      ],
    ),
  );
}
