import '../utils/export.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.height,
    required this.width,
    required this.shape,
    required this.gradient,
  });

  final double? height;
  final double? width;
  final Function(bool val) isChecked;
  final BoxShape shape;
  final Gradient? gradient;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            checked = !checked;
            widget.isChecked.call(checked);
            setState(() {});
          },
          child: Row(
            children: [
              Container(
                  height: widget.height,
                  width: widget.width,
                  decoration: BoxDecoration(
                    gradient: widget.gradient,
                    shape: widget.shape,
                  ),
                  // borderRadius: BorderRadius.circular(50)),
                  child: checked
                      ? Icon(
                          size: 22.r,
                          Icons.check,
                          color: AppColors.whiteColor,
                        )
                      : null),
            ],
          ),
        ),
      ],
    );
  }
}
