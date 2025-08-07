import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) => const Icon(Icons.broken_image),
        ),
      ),
    );
  }
}
// class CustomBookImage extends StatelessWidget {
//   const CustomBookImage({super.key, required this.imageUrl});
//   final String imageUrl;

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 2.6 / 4,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 8),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(17),
//           child: Image.network(
//             imageUrl,
//             fit: BoxFit.cover,
//             errorBuilder: (context, error, stackTrace) {
//               return Container(
//                 color: Colors.grey[300],
//                 child: const Icon(Icons.broken_image, size: 40),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
