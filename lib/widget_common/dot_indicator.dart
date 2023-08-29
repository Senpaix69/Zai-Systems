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
        bool isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: isActive ? 8 : 6,
          height: isActive ? 8 : 6,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? activeColor : inactiveColor,
          ),
        );
      }),
    ).box.color(backColor).padding(const EdgeInsets.all(4)).roundedLg.make();
  }
}
