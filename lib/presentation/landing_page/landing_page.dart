import 'package:flutter/material.dart';
import 'package:simply_delivery/presentation/widgets/background_image_layout.dart';
import 'package:simply_delivery/presentation/widgets/company_text_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: const [
          Icon(Icons.menu),
          SizedBox(
            width: 4,
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const BackgroundImageCover(imagePath: 'assets/images/background_image.jpg'),
          Column(children: [
            const SizedBox(
              height: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CompanyTextWidget(),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 04.0, horizontal: 36.0),
                  child: SizedBox(
                    height: 250,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 10,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/weather.png',
                                  fit: BoxFit.contain,
                                  width: 60,
                                  height: 60,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '27℃',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(Radius.circular(10)),
                                            color: Colors.grey[300]),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/truck.png',
                                              fit: BoxFit.contain,
                                              width: 50,
                                              height: 50,
                                            ),
                                            const Text('Touren'),
                                          ],
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(Radius.circular(10)),
                                            color: Colors.grey[300]),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/bottles.png',
                                              fit: BoxFit.contain,
                                              width: 50,
                                              height: 50,
                                            ),
                                            const Text('Pfandrückgabe'),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                )
              ],
            ),
          ])
        ],
      ),
    );
  }
}
