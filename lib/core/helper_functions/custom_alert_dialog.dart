  import 'package:flutter/material.dart';

Future<dynamic> customAlertDialog({
    required BuildContext context,
    required Widget child,
  }) {
    return showDialog(
      context: context,
      builder: (context) => Dialog(
        elevation: 5.0,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }

