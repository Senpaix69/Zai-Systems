import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zaisystems/consts/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: CustomScrollView(
        slivers: <Widget>[
          myAppBar(context),
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

  SliverAppBar myAppBar(context) {
    return SliverAppBar(
      elevation: 10.0,
      expandedHeight: 200,
      floating: true,
      pinned: true,
      snap: true,
      leading: IconButton(
        onPressed: () => ZoomDrawer.of(context)!.toggle(),
        icon: const Icon(Icons.menu),
      ),
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
