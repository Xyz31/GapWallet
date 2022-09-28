import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:wallet/Util/my_card.dart';
import 'package:wallet/Util/mybuttons.dart';
import 'package:wallet/Util/my_list_tile.dart';

class HomePage extends StatelessWidget {
  // PageController
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // app bar
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.pink,
          child: Icon(Icons.monetization_on_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Color(0xffe2eff9),
          child: Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                    color: Color(0xffe74c7f),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                    iconSize: 40,
                    color: Colors.grey,
                  )
                ]),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Cards',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[400],
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              //Atm cards

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: _controller,
                      children: [
                        MyCard(5400.90, '456789455', '10', '24',
                            Colors.deepPurple),
                        MyCard(6400.90, '686707687', '10', '23', Colors.blue),
                        MyCard(3500.90, '7586969868', '10', '24',
                            Colors.cyan[200]),
                      ]),
                ),
              ),

              // Smooth page Indicator
              SizedBox(
                height: 10,
              ),

              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xff0c43a4),
                  dotColor: Colors.blueGrey.shade400,
                  dotHeight: 12,
                  dotWidth: 12,
                ),
              ),

              SizedBox(height: 20),
              // Buttons
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCustomButton('images/sendmoney.png', 'Send'),
                      MyCustomButton('images/pay.png', 'Pay'),
                      MyCustomButton('images/bill.png', 'Bills'),
                    ],
                  )),
              SizedBox(height: 15),

              // Column -> stats + transactions
              Column(children: [
                MyCustomListTile('images/Statistics.png', 'Statistics',
                    'Payments and Income'),
                MyCustomListTile('images/transaction.png', 'Transactoins',
                    'All Your Transactions'),
              ])
            ],
          ),
        ));
  }
}
