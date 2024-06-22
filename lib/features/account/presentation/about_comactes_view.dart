import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/account/data/models/about_comactes_model.dart';
import 'package:comatecs/features/account/presentation/widgets/about_comactes_item_list_view.dart';
import 'package:comatecs/features/account/presentation/widgets/custom_title_with_back_button.dart';
import 'package:flutter/material.dart';

class AboutComactesView extends StatelessWidget {
  const AboutComactesView({super.key});
  final List<AboutComactesModel> aboutComactesItems = const [
    AboutComactesModel(
      title: 'من نحن:',
      body:
          'نحن متجر إلكتروني متخصص في بيع معدات وأدوات البناء. تأسس متجرنا برؤية واحدة وهي توفير حلاً شاملاً لاحتياجات مقاولي البناء والحرفيين.',
    ),
    AboutComactesModel(
      title: 'رسالتنا:',
      body:
          'نهدف إلى تسهيل عملك في مشاريع البناء وتوفير أدوات عالية الأداء التي تحتاجها. نعتبر أدوات البناء جزءًا حاسمًا من نجاح أي مشروع بناء، وهذا هو السبب في أننا نسعى جاهدين لتوفير منتجات موثوقة وعالية الجودة.',
    ),
    AboutComactesModel(
      title: 'ما نقدمه:',
      body:
          'نقدم مجموعة متنوعة من معدات البناء والأدوات اليدوية عبر منصتنا الإلكترونية. يمكنك العثور على كل ما تحتاجه من مثاقب كهربائية إلى مولدات الكهرباء وأدوات اللحام وغيرها الكثير.',
    ),
    AboutComactesModel(
      title: 'جودتنا:',
      body:
          'فريق خدمة العملاء لدينا دائمًا مستعد لمساعدتك. إذا كنت بحاجة إلى استشارة أو توجيه، فلا تتردد في الاتصال بنا. رضاء عملائنا هو أمر لا يقدر بثمن.',
    ),
    AboutComactesModel(
      title: 'خدمة العملاء:',
      body:
          'فريق خدمة العملاء لدينا دائمًا مستعد لمساعدتك. إذا كنت بحاجة إلى استشارة أو توجيه، فلا تتردد في الاتصال بنا. رضاء عملائنا هو أمر لا يقدر بثمن.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: 40.0, top: 20.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                const CustomTitleWithBackButton(
                  title: 'عن  Comatecs',
                ),
                Image.asset(
                  height: MediaQuery.sizeOf(context).height * 0.09,
                  ImageAssets.comactesWord,
                ),
                Expanded(
                  child: AboutComactesItemListView(
                    aboutComactesItems: aboutComactesItems,
                  ),
                ),
                Text(
                  'شكرًا لزيارتك لمتجرنا، ونأمل أن تجد لدينا كل ما تحتاجه لتنفيذ مشاريعك بنجاح.',
                  style: AppFonts.regular14.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
