import 'package:comatecs/core/utils/image_asset.dart';
import 'package:comatecs/features/on_boarding/data/models/on_boarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  const OnBoardingModel(
    title: "أختر منتجك",
    image: ImageAssets.cart,
    body: "لدينا 100 ألف منتج\n اختر منتجك من \n Comatecs",
  ),
  const OnBoardingModel(
    title: "دفع سهل وآمن",
    image: ImageAssets.payment,
    body:
        "سهولة الدفع وطريقة الدفع الآمنة\n موثوق به من قبل عملائنا من \n  جميع أنحاء العالم",
  ),
  const OnBoardingModel(
    title: "أتبع طلب",
    image: ImageAssets.deliveryMap,
    body:
        "تم استخدام أفضل متتبع\n لتتبع طلبك ستعرف أين يوجد منتجك\n في الوقت الحالي",
  ),
  const OnBoardingModel(
    title: "توصيل سريع",
    image: ImageAssets.dliveryVan,
    body: "تسليم موثوق وسريع\n نقوم بتسليم منتجك بأسرع طريقة ممكنة",
  ),
];
