import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ImageWithShimmer extends StatelessWidget {
  const ImageWithShimmer({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
  });

  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: BoxFit.cover,
      placeholder: (_, __) => Shimmer.fromColors(
        // baseColor: Colors.grey[850]!,
        baseColor: Theme.of(context).colorScheme.secondaryContainer,
        // highlightColor: Colors.grey[800]!,
        highlightColor: Theme.of(context).colorScheme.onSecondary,
        child: Container(
          height: height,
          color: AppColors.secondaryText,
        ),
      ),
      errorWidget: (_, __, ___) => const Icon(
        Icons.error,
        color: AppColors.error,
      ),
    );
  }
}
