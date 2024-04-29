import 'package:signature/signature.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/agreement_screen/components/contact_details_section.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/agreement_screen/components/event_detaild_section.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/agreement_screen/components/food_details_section.dart';
import 'package:street_eats_vendor/screens/orders/service_orders/service_order_screen.dart';
import '../../../../helpers/utils/export.dart';

class CreateAgreementScreen extends StatefulWidget {
  const CreateAgreementScreen({super.key});
  static const routeName = 'create-agreement-screen';

  @override
  State<CreateAgreementScreen> createState() => _CreateAgreementScreenState();
}

class _CreateAgreementScreenState extends State<CreateAgreementScreen> {
  late SignatureController signatureController;

  @override
  void initState() {
    super.initState();
    signatureController =
        SignatureController(penColor: Colors.black, penStrokeWidth: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.backgroundGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(Icons.keyboard_backspace_rounded)),
          title: Text(
            'Catering Contract Form',
            style: AppDecoration.boldStyle(
                fontFamily: 'Nunito',
                fontSize: 8.5.h,
                color: AppColors.blackColor),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contactDetailsSection(),
              5.verticalSpace,
              eventDetailsSection(),
              5.verticalSpace,
              foodDetailsSection(),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InputField(
                    heightt: 25.h,
                    widthh: Get.width * 0.42,
                    isPassword: false,
                    hint: 'Customer Name',
                  ),
                  InputField(
                    widthh: Get.width * 0.42,
                    heightt: 25.h,
                    isPassword: false,
                    hint: 'Date',
                  ),
                ],
              ),
              5.verticalSpace,
              const Text('Your Signature below:'),
              5.verticalSpace,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.grayColor)),
                child: Column(
                  children: [
                    Signature(
                      backgroundColor: Colors.transparent,
                      controller: signatureController,
                      height: 110,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: () {
                              signatureController.clear();
                            },
                            child: const Icon(Icons.clear))
                      ],
                    ),
                  ],
                ),
              ),
              10.verticalSpace,
              const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500),
                  'Congratulations on your event; what happens now? The food truck will now be hard at work getting your meal prepped and ready. Feel free to stay in contact with the food truck through the chat feature if you have any further questions. You\'re in good hands!'),
              10.verticalSpace,
              CustomButton(
                gradient: AppColors.gradient,
                height: 22.h,
                fontFamily: 'Nunito',
                color: AppColors.whiteColor,
                title: 'Submit',
                onTap: () {
                  secondaryDialogue(context,
                      title: 'Congratulations',
                      message:
                          'You have successfully\nsubmitted the agreement.',
                      actionText: 'Continue', onAction: () {
                    Get.off(() => const ServiceOrdersScreen());
                  });
                },
                fontsize: 8.h,
              ),
            ],
          ).paddingAll(20),
        ),
      ),
    );
  }
}
