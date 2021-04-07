import 'package:flutter/material.dart';

class Lt extends StatelessWidget {
  Lt({
    @required this.size,
    @required this.function,
    @required this.title,
    @required this.iconData,
  });

  final Size size;
  final Function function;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: function,
      title: Text(
        title,
        style: TextStyle(
          fontSize: size.height * 0.020,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(
        iconData,
        size: size.height * 0.04,
      ),
      trailing: Icon(
        Icons.navigate_next_outlined,
        size: size.height * 0.04,
      ),
    );
  }
}
