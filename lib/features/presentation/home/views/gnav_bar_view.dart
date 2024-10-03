import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/features/presentation/tabs/global_tabs.dart';
import 'package:news_app/features/presentation/tabs/home_tabs.dart';
import 'package:news_app/features/presentation/tabs/profile_tabs.dart';
import 'package:news_app/features/presentation/tabs/search_tabs.dart';


class GNavBarView extends StatefulWidget {
  const GNavBarView({super.key});

  @override
  State<GNavBarView> createState() => _GNavBarViewState();
}

class _GNavBarViewState extends State<GNavBarView> {
  int _currentIndex = 0;
  List<Widget> listOptions = <Widget>[
    const HomeTabs(),
    const GlobalTabs(),
    const SearchTabs(),
    const ProfileTabs()
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: listOptions.elementAt(_currentIndex),
        bottomNavigationBar: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GNav(
                selectedIndex: _currentIndex,
                onTabChange: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                activeColor: theme.hintColor,
                color: Colors.grey,
                tabBackgroundColor: theme.primaryColor,
                padding: const EdgeInsets.all(8),
                gap: 8,
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.language,
                    text: 'Global',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.person_outline_rounded,
                    text: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
