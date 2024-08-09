import 'package:flutter/material.dart';

class InputIdPage extends StatelessWidget {
  const InputIdPage({
    super.key,
    required this.hintText,
    required this.onInput,
  });

  final String hintText;
  final void Function(String Id) onInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: hintText,
              ),
              onSubmitted: (Id) {
                onInput(Id);
              }
            ),
          ],
        ),
      ),
    );
  }
}
