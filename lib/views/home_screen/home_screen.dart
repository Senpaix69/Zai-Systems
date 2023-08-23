import 'package:zaisystems/consts/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: CustomScrollView(
        slivers: <Widget>[
          myAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(title: Text('Item $index'));
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar myAppBar() {
    return SliverAppBar(
      elevation: 10.0,
      expandedHeight: 200,
      floating: true,
      pinned: true,
      snap: true,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.fadeTitle,
          StretchMode.zoomBackground,
        ],
        title: appname.text.bold.make(),
        background: Image.asset(
          decoration,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
