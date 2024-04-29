import 'package:street_eats_vendor/controllers/filter_container_controller.dart';

import '../utils/export.dart';

class ContainerSelectionRow extends StatelessWidget {
  const ContainerSelectionRow(
      {super.key,
      required this.containerTexts,
      this.right,
      this.padding,
      this.selectedColor,
      this.borderRadius});
  final double? right;
  final List<String> containerTexts;
  final double? padding;
  final Color? selectedColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: FilterContainerController(),
      builder: (controller) {
        return Row(
          children: List.generate(
            containerTexts.length,
            (index) => GestureDetector(
              onTap: () {
                controller.setFilterIndex(index);
                print('thisss iss indexxxx ${controller.filterIndex}');
              },
              child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: padding ?? 0),
                decoration: BoxDecoration(
                  color:
                      // selectedStates![index]
                      controller.filterIndex == index
                          ? selectedColor
                          : AppColors.grayColor.withOpacity(0.4),
                  borderRadius: borderRadius,
                ),
                child: Text(
                  containerTexts[index],
                  style: TextStyle(
                    color: controller.filterIndex == index
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ).paddingOnly(right: right ?? 0.0),
            ),
          ),
        );
      },
    );
  }
}
