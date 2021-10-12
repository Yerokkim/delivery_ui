import 'package:flutter/material.dart';
import 'package:simply_delivery/presentation/landing_page/landing_page.dart';
import 'package:simply_delivery/presentation/widgets/background_image_layout.dart';
import 'package:simply_delivery/presentation/widgets/company_text_widget.dart';

import 'package:simply_delivery/presentation/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const BackgroundImageCover(imagePath: 'assets/images/background_image.jpg'),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [
                    0.6,
                    0.8,
                  ],
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.2),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain,
                      width: 150,
                      height: 150,
                    ),
                    const CompanyTextWidget(),
                    const SizedBox(
                      height: 70,
                    ),
                    CustomTextField(
                      labelText: 'Name',
                      onChanged: (e) {},
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextField(
                      labelText: 'Passwort',
                      onChanged: (e) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Passwort vergessen?',
                              style: Theme.of(context).textTheme.caption!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            )),
                      ],
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(width: 200, height: 55),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LandingPage()),
                          );
                        },
                        child: const Text('ANMELDEN'),
                        style: ElevatedButton.styleFrom(shape: const StadiumBorder()).copyWith(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.all(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
