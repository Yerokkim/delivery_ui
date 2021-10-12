import 'package:flutter/material.dart';
import 'package:simply_delivery/presentation/landing_page/landing_page.dart';
import 'package:simply_delivery/presentation/widgets/bottom_nav_bar.dart';
import 'package:simply_delivery/presentation/widgets/check_button.dart';
import 'package:simply_delivery/presentation/widgets/nav_button.dart';

class OrderInfoPage extends StatefulWidget {
  const OrderInfoPage({Key? key}) : super(key: key);

  @override
  State<OrderInfoPage> createState() => _OrderInfoPageState();
}

class _OrderInfoPageState extends State<OrderInfoPage> {
  List<Map<String, dynamic>> listItems = [
    {'productName': 'coca cola', 'orderAmount': '2', 'unit': '12 x 1,0L(PET)', 'isSelected': true},
    {
      'productName': 'Orange Juice',
      'orderAmount': '3',
      'unit': '6 x 1,0L(Glas)',
      'isSelected': true
    },
    {
      'productName': 'Apple Juice',
      'orderAmount': '3',
      'unit': '6 x 1,0L(Glas)',
      'isSelected': true
    },
    {'productName': 'Red bull', 'orderAmount': '3', 'unit': '6 x 1,0L(Can)', 'isSelected': false},
    {'productName': 'Red bull', 'orderAmount': '3', 'unit': '6 x 1,0L(Can)', 'isSelected': false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[100],
        floatingActionButton: SizedBox(
          height: 60,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              child: const Icon(Icons.check),
              onPressed: () {},
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomNavBar(),
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.grey,
          title: const Text(
            'TOUR 1',
            style: TextStyle(color: Colors.black),
          ),
          leading: const Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
          actions: const [
            Icon(Icons.menu, color: Colors.black),
          ],
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavButton(
                    iconType: NavIconType.before,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LandingPage()),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'BESTELLUNG: 1 VON 2',
                        style: TextStyle(
                            color: Colors.grey[700], fontSize: 17.0, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Anzahl Positionen: 18',
                        style: TextStyle(
                            color: Colors.grey[700], fontSize: 14.0, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const NavButton(
                    isClicked: true,
                    iconType: NavIconType.after,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 340,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  elevation: 3,
                  child: ListView.builder(
                    itemCount: listItems.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Card(
                          color: listItems[index]['isSelected'] as bool
                              ? Colors.lime[100]
                              : Colors.grey[300],
                          elevation: 10,
                          shape:
                              const Border(left: BorderSide(color: Colors.purpleAccent, width: 7)),
                          child: ListTile(
                            trailing: CheckButton(isClicked: listItems[index]['isSelected']),
                            title: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.grey[700]),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '${listItems[index]['orderAmount']} x ',
                                    style: const TextStyle(
                                        fontSize: 15.0, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                      text: listItems[index]['productName'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15.0)),
                                  TextSpan(
                                    text: ' ${listItems[index]['unit']}',
                                    style: const TextStyle(
                                        fontSize: 12.0, fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
