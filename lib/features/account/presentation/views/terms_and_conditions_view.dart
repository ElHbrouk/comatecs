import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/account/data/models/about_comactes_model.dart';
import 'package:comatecs/features/account/presentation/views/widgets/about_comactes_item_list_view.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({super.key});
  final List<AboutComactesModel> aboutComactesItems = const [
    AboutComactesModel(
      title: 'الموافقة على الشروط:',
      body:
          'باستخدام تطبيقنا، فإنك توافق على الامتثال لجميع الشروط والأحكام المدرجة هنا. إذا كنت غير موافق على هذه السياسات والشروط، فيرجى عدم استخدام خدماتنا.',
    ),
    AboutComactesModel(
      title: 'السرية و الخصوصية:',
      body:
          'نحن نحترم خصوصية معلوماتك الشخصية ونلتزم بحمايتها وعدم مشاركتها مع أطراف ثالثة دون إذنك.',
    ),
    AboutComactesModel(
      title: 'حقوق الملكية الفكرية:',
      body:
          'جميع حقوق الملكية الفكرية المتعلقة بالمحتوى والعلامات التجارية على موقعنا وتطبيقنا محفوظة. يجب أن يتم استخدام المواد المنشورة هنا بموافقتنا الصريحة.',
    ),
    AboutComactesModel(
      title: 'الاستخدام القانوني:',
      body:
          'يجب على المستخدمين استخدام خدماتنا بما يتوافق مع القوانين واللوائح المعمول بها في مكان إقامتهم. يمنع استخدام خدماتنا لأي أغراض غير قانونية أو غير أخلاقية.',
    ),
    AboutComactesModel(
      title: 'تغييرات في الشروط:',
      body:
          'نحتفظ بحق تحديث وتعديل هذه الشروط والسياسات من وقت لآخر. يتوجب على المستخدمين مراجعة هذه الصفحة بشكل دوري لمعرفة أحدث التحديثات',
    ),
    AboutComactesModel(
      title: 'التواصل:',
      body:
          'إذا كان لديك أي استفسار أو ملاحظة حول سياسات وشروط الاستخدام، فلا تتردد في الاتصال بفريق دعم العملاء.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              bottom: 40.0, top: 20.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              const CustomTitleWithBackButton(
                title: 'شروط و سياسة الاستخدام',
              ),
              Image.asset(
                height: MediaQuery.sizeOf(context).height * 0.09,
                ImageAssets.comactesWord,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:24.0),
                child: Text(
                  'مرحبًا بك في تطبيقنا. من فضلك، قم بقراءة هذه السياسات والشروط بعناية قبل استخدام خدماتنا.',
                  style: AppFonts.regular16.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: AboutComactesItemListView(
                  aboutComactesItems: aboutComactesItems,
                ),
              ),
              Text(
                'شكرًا لاستخدامك خدماتنا!',
                style: AppFonts.regular16.copyWith(
                  color: Colors.black,
                ),
              ),
              Text(
                'تحيات فريقنا.',
                style: AppFonts.regular16.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
