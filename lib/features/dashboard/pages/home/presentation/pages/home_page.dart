import 'package:flutter/material.dart';
import 'package:moniepoint_test/core/animations/fade_in_animation.dart';
import 'package:moniepoint_test/core/animations/sliding_animation.dart';
import 'package:moniepoint_test/core/constants/app_strings.dart';
import 'package:moniepoint_test/core/extensions/build_context_extension.dart';
import 'package:moniepoint_test/core/extensions/widget_extension.dart';
import 'package:moniepoint_test/core/widgets/scaffold/app_scaffold.dart';
import 'package:moniepoint_test/features/dashboard/pages/home/presentation/widgets/buy_and_rent_item.dart';
import 'package:moniepoint_test/features/dashboard/pages/home/presentation/widgets/home_app_bar.dart';
import 'package:moniepoint_test/features/dashboard/pages/home/presentation/widgets/listing_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 450.0,
            pinned: true,
            elevation: 0.0,
            title: const HomeAppBar(),
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: kToolbarHeight),
                  SlideAnimation(
                    beginOffset: const Offset(0.2, 0.0),
                    child: FadeInAnimation(
                      child: Text.rich(
                        TextSpan(
                          text: 'Hi, John',
                          style: context.bodyLarge.copyWith(fontSize: 24.0, fontWeight: FontWeight.normal),
                          children: [
                            const TextSpan(text: '\n'),
                            TextSpan(
                              text: AppStrings.letsSelectYourPerfectPlace,
                              style: context.headlineLarge.copyWith(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ).paddingAll(16.0),
                    ),
                  ),
                  BuyAndRentItem(),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: ListingItems())
        ],
      ).safeArea(),
    );
  }
}
