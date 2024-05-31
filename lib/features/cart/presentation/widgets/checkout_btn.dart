import 'package:flutter/material.dart';

class CheckoutBtn extends StatelessWidget {
  final VoidCallback onPressed;

  const CheckoutBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          'Checkout',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
