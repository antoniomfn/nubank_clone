import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final bool visibility;

  const CreditCard({
    Key key,
    @required this.visibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 180,
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
                Icons.credit_card,
                size: 28,
                color: Colors.grey,
              ),
              SizedBox(width: 20),
              Text(
                'Cartão de crédito',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            'Fatura atual',
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
                    color: Colors.blue[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text('Limite disponível '),
                    Text(
                      'R\$ 1.299,99',
                      style: TextStyle(
                        color: Colors.green[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
