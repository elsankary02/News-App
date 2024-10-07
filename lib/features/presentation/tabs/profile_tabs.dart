import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/linkes_profile_widget.dart';

class ProfileTabs extends StatelessWidget {
  const ProfileTabs({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 25),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            'assets/images/news.png',
            color: theme.primaryColor,
          ),
          const SizedBox(
            height: 220,
          ),
          const LinkesProfileWidget(),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'App Version : 1.0.0',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
