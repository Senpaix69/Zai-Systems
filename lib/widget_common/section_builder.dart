import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/models/card_item.dart';
import 'package:zaisystems/widget_common/section.dart';

ListView hcmSectionBuilder({required List<CardItem> list}) {
  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: list.length,
    itemBuilder: (context, index) {
      final item = list[index];
      return section(
        title: "-> ${item.title}",
        description: item.subText,
        image: item.image,
      );
    },
  );
}
