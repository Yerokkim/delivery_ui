import 'package:flutter/material.dart';

class CompanyTextWidget extends StatelessWidget {
  const CompanyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Simply',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
          ),
          TextSpan(text: 'Pick', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
        ],
      ),
    );
  }
}
