import 'dart:io';
import 'dart:typed_data';
import 'package:comatecs/core/utils/functions/custom_error_snack_bar.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart ' as pw;
import 'package:share_plus/share_plus.dart';
import 'dart:io' as io;

final _pdf = pw.Document();
Future<void> createPdf(Uint8List screenShot) async {
  _pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Image(
          pw.MemoryImage(screenShot),
          fit: pw.BoxFit.contain,
        );
      },
    ),
  );
}

savePdf(context,String pdfName) async {
  try {
    Directory dir = await getApplicationDocumentsDirectory();
    String pdfFile = '${dir.path}/$pdfName.pdf';
    print(pdfFile);
    await io.File(pdfFile).writeAsBytes(await _pdf.save());

    // var xFile = XFile(pdfFile.readAsStringSync());
    // var result = await Share.shareXFiles([xFile]);
    // print(result);
    buildSuccessSnackBar(context, 'تم حفظ الفاتورة بنجاح');
    await OpenFile.open(pdfFile,
    
    );
  } on Exception catch (e) {
    if (e.toString() == ' The document has already been saved.') {
      buildErrorSnackBar(context, 'تم حفظ الملف بالفعل');
    } else {
      buildErrorSnackBar(context, 'خطاء في حفظ الملف');
    }
  }
}
