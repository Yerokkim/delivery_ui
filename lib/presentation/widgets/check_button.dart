import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  final bool isClicked;

  const CheckButton({
    this.isClicked = false,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  color: isClicked ? Colors.green : Colors.transparent,
                  border: Border.all(
                    width: 2.0,
                    color: isClicked ? Colors.green : Colors.grey,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Icon(
                isClicked ? Icons.check : null,
                color: Colors.white,
              )),
        ));
  }
}
