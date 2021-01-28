import 'package:flutter/material.dart';

class OthersCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const OthersCard({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 200,
      padding: EdgeInsets.all(25),
      color: Colors.white,
      highlightColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Icon(
                    icon,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                  color: Colors.purple[700],
                  fontSize: 22,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15),
          OutlineButton(
            splashColor: Colors.purple,
            highlightedBorderColor: Colors.purple,
            color: Colors.purple,
            child: Text('Conhecer'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
