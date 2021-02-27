import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Function() onPressed;
  final String title;

  const AppButton({
    Key key,
    @required this.onPressed,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          color: Colors.redAccent,
          onPressed: onPressed,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
