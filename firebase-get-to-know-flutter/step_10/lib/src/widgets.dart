import 'package:flutter/material.dart';

class GTKHeader extends StatelessWidget {
  const GTKHeader(this.heading);
  final String heading;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          heading,
          style: TextStyle(fontSize: 24),
        ),
      );
}

class GTKParagraph extends StatelessWidget {
  const GTKParagraph(this.content);
  final String content;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          content,
          style: TextStyle(fontSize: 18),
        ),
      );
}

class GTKIconAndDetail extends StatelessWidget {
  const GTKIconAndDetail(this.icon, this.detail);
  final IconData icon;
  final String detail;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 8),
            Text(
              detail,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      );
}

class GTKButton extends StatelessWidget {
  const GTKButton({@required this.child, @required this.onPressed});
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => OutlineButton(
        borderSide: BorderSide(color: Colors.deepPurple),
        onPressed: this.onPressed,
        child: this.child,
      );
}
