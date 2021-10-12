import 'package:flutter/material.dart';

enum NavIconType { before, after }

class NavButton extends StatelessWidget {
  final bool isClicked;
  final NavIconType iconType;
  final VoidCallback? onPressed;

  const NavButton({
    required this.iconType,
    this.isClicked = false,
    this.onPressed,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
      child: IconButton(
        icon: Icon(iconType == NavIconType.before ? Icons.navigate_before : Icons.navigate_next,
            color: isClicked ? Colors.grey : Colors.blue),
        color: Colors.white,
        onPressed: onPressed,
      ),
    );
  }
}
