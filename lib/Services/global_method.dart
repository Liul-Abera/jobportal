import 'package:flutter/material.dart';
class GlobalMethod {
  static void showErrorDialog({
    required String error,
    required BuildContext context,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.logout,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text('Error Occurred'),
              ),
            ],
          ),
          content: Text(
            error,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.canPop(context) ? Navigator.pop(context) : null;
              },
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
