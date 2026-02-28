import 'package:flutter/material.dart';

import '../../common/l10n/localization_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocalizationsUtils.l10n.homeScreenTitle)),
      body: Container(),
    );
  }
}
