import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onTap;

  const BottomCard({
    Key key,
    @required this.name,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 12),
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: 110,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: name.contains(' ')
                      ? (name.split(' ')[1].length > 10 ? 14 : 16)
                      : (name.length > 10 ? 14 : 16)),
            ),
          ],
        ),
      ),
    );
  }
}
