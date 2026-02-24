import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_html/screens/settings_screen/widgets/change_theme_button_widget.dart';
import 'package:master_html/screens/settings_screen/widgets/font_family_dropdown_button.dart';
import 'package:master_html/screens/settings_screen/widgets/font_size_dropdown_button.dart';
import 'package:master_html/screens/settings_screen/widgets/header_container.dart';
import 'package:master_html/screens/settings_screen/widgets/my_list_tile.dart';
import 'package:master_html/services/reminder_service.dart';

import '../../constants/consts.dart';
import '../../cubits/theme_cubit/theme_cubit.dart';

class SettingScreen extends StatefulWidget {
  static const routeName = "/setting-screen";

  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _reminderEnabled = true;

  @override
  void initState() {
    super.initState();
    _loadReminderSetting();
  }

  Future<void> _loadReminderSetting() async {
    final enabled = await ReminderService.isReminderEnabled();
    setState(() {
      _reminderEnabled = enabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return true ;
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerContainer(context: context, text: "App Theme"),
                myListTile(
                    onTap: () {
                      final themeCubit = BlocProvider.of<ThemeCubit>(context);
                      final bool isOn = themeCubit.themeMode == ThemeMode.dark;
                      themeCubit.toggleTheme(!isOn , ctx: context);
                    },
                    context: context,
                    title: "Dark Mode",
                    trailing: const ChangeThemeButtonWidget()),
                headerContainer(context: context, text: "Font"),
                myListTile(
                    onTap: () {},
                    context: context,
                    title: "Font size",
                    trailing: const FontSizeDropDownButton()),
                const Divider(thickness: 1, height: 1),
                myListTile(
                    onTap: () {},
                    context: context,
                    title: "Font family",
                    trailing: const FontFamilyDropDownButton()),
                headerContainer(context: context, text: "Notifications"),
                myListTile(
                    onTap: () async {
                      setState(() {
                        _reminderEnabled = !_reminderEnabled;
                      });
                      await ReminderService.setReminderEnabled(_reminderEnabled);
                    },
                    context: context,
                    title: "Study Reminders",
                    trailing: Switch(
                      value: _reminderEnabled,
                      onChanged: (value) async {
                        setState(() {
                          _reminderEnabled = value;
                        });
                        await ReminderService.setReminderEnabled(value);
                      },
                    )),
                headerContainer(context: context, text: "About us"),
                myListTile(
                    onTap: () {
                      //Open twitter page
                    },
                    context: context,
                    title: "Follow us on twitter",
                    trailing: const Icon(Icons.people_alt_sharp)),
                const Divider(thickness: 1, height: 1),
                myListTile(
                    onTap: () {
                      //Open play store
                    },
                    context: context,
                    title: "Visit our website",
                    trailing: const Icon(Icons.web)),
                const Divider(thickness: 1, height: 1),
                myListTile(
                    onTap: () {
                      //Open play store
                    },
                    context: context,
                    title: "Get Master CSS App",
                    trailing: const Icon(Icons.css)),
                const Divider(thickness: 1, height: 1),
                myListTile(
                    onTap: () {
                      //Open play store
                    },
                    context: context,
                    title: "Get Master JavaScript App",
                    trailing: const Icon(Icons.javascript)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
