import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
    this.onTap,
    this.isLoading = false,
  });
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width, //all width of screen
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurpleAccent,
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 3.5,
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
        ),
      ),
    );
  }
}
