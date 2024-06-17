import 'package:flutter/material.dart';
import 'package:moniepoint_test/core/animations/fade_in_animation.dart';
import 'package:moniepoint_test/core/animations/sliding_animation.dart';
import 'package:moniepoint_test/core/animations/zoom_animation.dart';
import 'package:moniepoint_test/core/extensions/build_context_extension.dart';
import 'package:moniepoint_test/core/widgets/app_image.dart';
import 'package:moniepoint_test/gen/assets.gen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SlideAnimation(
              beginOffset: const Offset(0.2, 0.0),
              child: FadeInAnimation(
                child: Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: context.cardColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppImage.svg(Assets.svgs.location, color: context.bodyLarge.color),
                      const SizedBox(width: 10.0),
                      Flexible(
                        child: Text(
                          'Lagos, Nigeria',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 6.0),
                    ],
                  ),
                ),
              ),
            ),
            ZoomInAnimation(
              child: AppImage.network(
                fit: BoxFit.cover,
                height: 40.0,
                width: 40.0,
                borderRadius: BorderRadius.circular(50.0),
                placeholder: (_, __) => CircleAvatar(
                  backgroundColor: context.primary.withOpacity(0.3),
                  child: AppImage.svg(Assets.svgs.person, color: context.onPrimary),
                ),
                imageUrl:
                    'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.webp?b=1&s=170667a&w=0&k=20&c=TXCiY7rYEvIBd6ibj2bE-VbJu0rRGy3MlHwxt2LHt9w=',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
