import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() hideSearchAppbar;

  const SearchAppBar({Key? key, required this.hideSearchAppbar})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: hideSearchAppbar,
      ),
      title: TextField(
        decoration:
            InputDecoration(border: InputBorder.none, hintText: 'Pesquisar...'),
      ),
    );
  }
}
