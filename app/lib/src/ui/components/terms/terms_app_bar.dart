import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/terms/terms_content.dart';

class TermsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TermsAppBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Terms and Policies',
        style: Theme.of(context).textTheme.headline2,
      ),
      bottom: TabBar(
        indicatorColor: Colors.transparent,
        controller: tabController,
        isScrollable: true,
        tabs: [
          ...(categories.map((e) => Tab(text: e.name)).toList()),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SizeConfig.safeBlockVertical! * 12);
}
