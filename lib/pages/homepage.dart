import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utilities/card_button.dart';
import 'package:wallet_app/utilities/credit_card.dart';
import 'package:wallet_app/utilities/my_list_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on,size:30,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ))
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Cards',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[400],
                      ),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  children: [
                    CreditCard(
                      balance: 5250.20,
                      cardNum: 54546536,
                      expiryMonth: 10,
                      expiryYear: 24,
                      color: Colors.deepPurple[400],
                    ),
                    CreditCard(
                      balance: 250.50,
                      cardNum: 950503409,
                      expiryMonth: 5,
                      expiryYear: 26,
                      color: Colors.deepOrange[400],
                    ),
                    CreditCard(
                      balance: 840.50,
                      cardNum: 5959405,
                      expiryMonth: 1,
                      expiryYear: 25,
                      color: Colors.green[300],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardButton(
                      iconImagePath: 'icons/send-money.png',
                      buttonText: 'Send',
                    ),
                    CardButton(
                      iconImagePath: 'icons/credit-card.png',
                      buttonText: 'Pay',
                    ),
                    CardButton(
                      iconImagePath: 'icons/bill.png',
                      buttonText: 'Bills',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Expanded(
                  child: Column(
                    children: [
                      MyListTile(
                          iconImagePath: 'icons/statistics.png',
                          tileDesc: 'Payments and Income',
                          tileTitle: 'Statistics'),
                      MyListTile(
                          iconImagePath: 'icons/transaction.png',
                          tileDesc: 'Transaction History',
                          tileTitle: 'Transactions')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
