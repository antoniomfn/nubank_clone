import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final bool visibility;

  const AccountCard({
    Key key,
    @required this.visibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 150,
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
              Icon(
                Icons.monetization_on_outlined,
                size: 28,
                color: Colors.grey,
              ),
              SizedBox(width: 20),
              Text(
                'Conta',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            'Saldo disponível',
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 15),
          Visibility(
            visible: this.visibility,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'R\$ 1.299,99',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            replacement: Expanded(
              child: Container(
                color: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
