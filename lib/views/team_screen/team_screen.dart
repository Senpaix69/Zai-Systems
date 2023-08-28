import 'package:url_launcher/url_launcher.dart';
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/drawer_screen/menu_screen.dart';
import 'package:zaisystems/views/team_screen/widgets/member_card.dart';
import 'package:zaisystems/views/team_screen/widgets/member_details.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> launchCustomURL({
      required String url,
      String message = 'Hi, $appname',
      int platform = 0,
    }) async {
      if (url.isEmpty) return;

      final uri = platform == 0
          ? Uri.parse('https://wa.me/$url/?text=${Uri.parse(message)}')
          : Uri.parse(url);

      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }

    return Scaffold(
      backgroundColor: lightGrey,
      appBar: navAppBar(title: team),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: teamList.length,
        itemBuilder: (context, index) {
          final member = teamList[index];
          return memberCard(
            member: member,
            onBtnClick: (platform) => launchCustomURL(
              url: platform == 0 ? member.contact : member.profile,
              platform: platform,
            ),
            onCardClick: () => memberDetailModel(
              context: context,
              member: member,
            ),
          );
        },
      ).box.padding(const EdgeInsets.symmetric(horizontal: 10)).make(),
      drawer: const MenuScreen(),
    );
  }
}
