import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

SnackBar customErrorSnackBar(String message) {
  return SnackBar(
    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'خطأ',
      message: message,

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.failure,
    ),
  );
}

void buildErrorSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      customErrorSnackBar(message),
    );
}

SnackBar customSuccessSnackBar(String message) {
  return SnackBar(
    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'نجاح',
      message: message,

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.success,
    ),
  );
}

void buildSuccessSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      customSuccessSnackBar(message),
    );
}
