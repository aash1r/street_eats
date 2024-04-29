import '../utils/export.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({
    super.key,
    required this.size,
  });
  final double size;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: size,
      glow: false,
      unratedColor: AppColors.grayColor.withOpacity(.5.r),
      initialRating: 5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemBuilder: (context, _) => Icon(
        Icons.star_rate_rounded,
        color: Colors.amber,
        size: 9.r,
      ),
      onRatingUpdate: (rating) {
        // ignore: avoid_print
        print(rating);
      },
    );
  }
}
