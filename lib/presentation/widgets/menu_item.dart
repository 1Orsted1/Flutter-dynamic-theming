import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.title,
    this.iconD,
    this.content,
    required this.onPressed,
  });
  final String title;
  final IconData? iconD;
  final Widget? content;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        if (iconD != null)
          IconButton(onPressed: () => onPressed(), icon: Icon(iconD)),
        if (content != null)
          TextButton(
            onPressed: () => onPressed(),
            child: content ?? SizedBox(),
          ),
      ],
    );
  }
}
