import 'package:flutter/material.dart';
import '../controllers/theme_controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() showSearchAppbar;

  final TabController controller;

  const CustomAppBar(
      {Key? key, required this.controller, required this.showSearchAppbar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: showSearchAppbar),
          PopupMenuButton(onSelected: (value) {
            if (value == 6) {
              ThemeController.themeMode.value =
                  ThemeController.themeMode.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
            }
          }, itemBuilder: (_) {
            return [
              PopupMenuItem(
                child: Text('Novo grupo'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('Nova Transmisão'),
                value: 2,
              ),
              PopupMenuItem(
                child: Text('WhatsApp Web'),
                value: 3,
              ),
              PopupMenuItem(
                child: Text('Mensagens favoritas'),
                value: 4,
              ),
              PopupMenuItem(
                child: Text('Configurações'),
                value: 5,
              ),
              PopupMenuItem(
                child: Text('Alterar tema'),
                value: 6,
              ),
            ];
          })
        ],
        bottom: TabBar(
            controller: controller,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: <Widget>[
              Tab(
                text: 'CONVERSAS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CHAMADAS',
              ),
            ]));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 49);
}
