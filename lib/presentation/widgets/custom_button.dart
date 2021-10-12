import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    required this.text,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => Container(
        width: 150.0,
        decoration: const ShapeDecoration(shape: StadiumBorder(), color: Colors.blue),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                text,
              ),
            ),
          ),
        ),
      );
}
