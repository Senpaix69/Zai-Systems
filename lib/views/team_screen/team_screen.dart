import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/team_screen/widgets/member_card.dart';
import 'package:zaisystems/views/team_screen/widgets/member_details.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: teamList.length,
      itemBuilder: (context, index) {
        final member = teamList[index];
        return memberCard(
          member: member,
          onBtnClick: (platform) => () {},
          onCardClick: () => memberDetailModel(
            context: context,
            member: member,
          ),
        );
      },
    ).box.padding(const EdgeInsets.symmetric(horizontal: 10)).make();
  }
}
