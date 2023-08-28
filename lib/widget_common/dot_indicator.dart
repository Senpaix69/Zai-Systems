import 'package:zaisystems/consts/imports.dart';

class DotIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  final Color activeColor;
  final Color backColor;
  final Color inactiveColor;

  const DotIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
    this.backColor = darkFontGrey,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex ? activeColor : inactiveColor,
          ),
        );
      }),
    ).box.color(backColor).padding(const EdgeInsets.all(4)).roundedLg.make();
  }
}
