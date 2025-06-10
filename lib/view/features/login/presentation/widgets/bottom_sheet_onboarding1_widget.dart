import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:flutterthemetest/view/features/login/presentation/widgets/bottom_sheet_container_widget.dart';


class BottomSheetOnboarding1Widget extends StatelessWidget {
  const BottomSheetOnboarding1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      height: 624.0.sp(context),
      padding: EdgeInsets.symmetric(
        vertical: 40.0.sp(context),
        horizontal: 24.0.sp(context),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Stack: image with bottom-right circle inside image bounds
          Stack(
            clipBehavior: Clip.none,
            children: [
              /// Background Circle (behind image, bottom-right)
              Positioned(
                bottom: 0,
                right: 10,
                child: Container(
                  width: 248.0.sp(context),
                  height: 248.0.sp(context),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              /// Foreground Image
              Image.asset(
                IconAssets.onboarding1,
                width: 287.0.sp(context),
                height: 287.0.sp(context),
                fit: BoxFit.contain,
              ),
            ],
          ),

          SizedBox(height: 50.0.sp(context)),

          /// NEXT text
          Text(
            'NEXT',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 30.0.sp(context),
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20.0.sp(context)),

          /// SVG arrow
          SvgPicture.asset(
            IconAssets.next1,
            width: 42.0.sp(context),
            height: 13.0.sp(context),
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
