import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TechnicalSupportDialog extends StatelessWidget {
  const TechnicalSupportDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 110,
          width: 270,
          child: Column(
            children: [
              SvgPicture.asset(
                ImageAssets.smile,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                textAlign: TextAlign.center,
                'شكراً لتوصلك بفريق الدعم الفني. سنعمل على الرد على استفسارك في أقرب وقت ممكن. نشكرك على صبرك وتفهمك.',
                style: AppFonts.regular12.copyWith(
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
