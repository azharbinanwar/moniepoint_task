import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:moniepoint_test/core/animations/sliding_animation.dart';
import 'package:moniepoint_test/features/dashboard/pages/home/presentation/widgets/image_viewer.dart';
import 'package:moniepoint_test/gen/assets.gen.dart';

class ListingItems extends StatelessWidget {
  const ListingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAnimation(
      beginOffset: const Offset(0.0, 1.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: ImageViewer(
                path: Assets.images.image1.path,
                address: 'Lagos Nigeria',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: ImageViewer(path: Assets.images.image2.path, address: 'Lagos'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: ImageViewer(
                path: Assets.images.image3.path,
                address: 'Nigeria',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: ImageViewer(
                path: Assets.images.image4.path,
                address: 'Lahore',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: ImageViewer(
                path: Assets.images.image2.path,
                address: 'Karachi',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: ImageViewer(
                path: Assets.images.image4.path,
                address: 'Islamabad',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: ImageViewer(
                path: Assets.images.image2.path,
                address: 'Nigeria',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: ImageViewer(
                path: Assets.images.image2.path,
                address: 'Nigeria',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: ImageViewer(
                path: Assets.images.image2.path,
                address: 'Nigeria',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: ImageViewer(
                path: Assets.images.image2.path,
                address: 'Nigeria',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
