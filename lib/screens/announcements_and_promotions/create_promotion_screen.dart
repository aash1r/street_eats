import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/helpers/widgets/multi_select_dialog_field.dart';

class CreatePromotionScreen extends StatefulWidget {
  const CreatePromotionScreen({super.key});

  @override
  State<CreatePromotionScreen> createState() => _CreatePromotionScreenState();
}

class _CreatePromotionScreenState extends State<CreatePromotionScreen> {
  final List<MultiSelectItem<String>> _items = [
    MultiSelectItem('Zinger Burger', 'Zinger Burger'),
    MultiSelectItem('Beef Burger', 'Beef Burger'),
    MultiSelectItem('Cheese Burger', 'Cheese Burger')
  ];
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.secondaryBg), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(
                Icons.keyboard_backspace_rounded,
                color: Colors.white,
              )),
        ),
        body: Column(
          children: [
            SizedBox(
              height: Get.height * 0.15,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Promotion',
                      style: AppDecoration.mediumStyle(
                          fontFamily: 'Nunito',
                          fontSize: 9.h,
                          color: AppColors.blackColor),
                    ),
                    10.verticalSpace,
                    Container(
                      height: 2.h,
                      width: 84.w,
                      decoration: BoxDecoration(
                          color: AppColors.purpleColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    10.verticalSpace,
                    InputField(
                      heightt: 25.h,
                      isPassword: false,
                      hint: "Promotion Name",
                    ),
                    10.verticalSpace,
                    multiSelectDialogField(context, onConfirm: (values) {
                      setState(() {
                        selectedItems = values;
                      });
                    }, text: 'Select Product/Menu', items: _items)
                  ],
                ),
              ),
            ),
            const Spacer(),
            CustomButton(
              onTap: () => Get.back(),
              height: 21.h,
              title: 'Add',
              fontFamily: 'Nunito',
              fontsize: 8.h,
              color: Colors.white,
              gradient: AppColors.gradient,
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
