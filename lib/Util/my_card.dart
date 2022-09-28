import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balancemoney;
  final String accnum;
  final String expirymonth;
  final String expiryyear;
  final colors;

  MyCard(this.balancemoney, this.accnum, this.expirymonth, this.expiryyear,
      this.colors);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colors,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balance',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'images/visa.png',
                      height: 50,
                    ),
                  ],
                ),
                // SizedBox(height: 15),
                Text(
                  '\$' + balancemoney.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      accnum,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      expirymonth + '/' + expiryyear,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ]),
        ));
  }
}
