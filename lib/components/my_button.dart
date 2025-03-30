import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTapfunc;
  final String buttontext;

  const MyButton(
      {super.key, required this.buttontext, required this.onTapfunc});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapfunc,
      child: Container(
        // padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttontext,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
