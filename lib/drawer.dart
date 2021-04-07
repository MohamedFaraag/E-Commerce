import 'package:ecommerce/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Draw extends StatelessWidget {
  Draw({
    @required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  'images/shopping.png',
                  fit: BoxFit.contain,
                  height: size.height * 0.1,
                ),
                Text(
                  'E-Commerce',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: size.height * 0.04, color: Colors.black),
                ),
              ],
            )),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Lt(
            size: size,
            function: () {},
            title: 'Men',
            iconData: FontAwesomeIcons.male,
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Lt(
            size: size,
            function: () {},
            title: 'Women',
            iconData: FontAwesomeIcons.female,
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Lt(
            size: size,
            function: () {},
            title: 'Devices',
            iconData: Icons.devices_other_rounded,
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Lt(
            size: size,
            function: () {},
            title: 'Gadgets',
            iconData: Icons.watch_outlined,
          ),
        ],
      ),
    );
  }
}
