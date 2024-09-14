import 'package:flutter/material.dart';

Future<dynamic> customShowBottomSheet({
  required BuildContext context,
  required Widget child,
}) {
  return showModalBottomSheet(
    isScrollControlled: true,
    barrierColor: Colors.black.withOpacity(0.7),
    backgroundColor: Colors.white,
    context: context,
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: child,
    ),
  );
}
