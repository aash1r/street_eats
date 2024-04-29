import 'package:signature/signature.dart';

import '../../../helpers/utils/export.dart';

class CateringContractFormScreen extends StatefulWidget {
  const CateringContractFormScreen({super.key});
  static const routeName = 'catering-contract-form-screen';

  @override
  State<CateringContractFormScreen> createState() =>
      _CateringContractFormScreenState();
}

class _CateringContractFormScreenState
    extends State<CateringContractFormScreen> {
  late SignatureController signatureController;

  @override
  void initState() {
    super.initState();
    signatureController =
        SignatureController(penColor: Colors.black, penStrokeWidth: 3);
  }

  @override
  void dispose() {
    signatureController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(Icons.keyboard_backspace_rounded)),
          centerTitle: true,
          title: Text(
            'Catering Contract Form',
            style: AppDecoration.boldStyle(
                fontFamily: 'Nunito',
                fontSize: 9.h,
                color: AppColors.blackColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Details (Business Info)',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 7.h,
                    color: AppColors.blackColor),
              ),
              10.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Business Name:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text(
                    'Food Restaurant',
                  )
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Contact Name:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('James Robert')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Billing Address',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('James Robert')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Email:', style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Jamesrobert@gmail.com')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Phone Number:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('+45 34 34342243')
                ],
              ),
              13.verticalSpace,
              Text(
                'Contact Details (Customer Info)',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 7.h,
                    color: AppColors.blackColor),
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Name:', style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('James Robert')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Email:', style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Jamesrober123@gmail.com')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Phone Number:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('+45 34 34342243')
                ],
              ),
              10.verticalSpace,
              const Divider(),
              10.verticalSpace,
              Text(
                'Event Details',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 7.h,
                    color: AppColors.blackColor),
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date:', style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('September 23, 2023')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Start Time:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('5:30 pm')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('End Time:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('9:30 pm')
                ],
              ),
              10.verticalSpace,
              Text(
                'Extra Details:',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 6.h,
                    color: AppColors.blackColor),
              ),
              7.verticalSpace,
              Text(AppString.dummytext2),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Types of Catering:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Pickup')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Banglore Australia 3rd Street')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ocassion:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Wedding')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'What types of event are\nyou requesting a food truck for:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Catered Event')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Expected Number of People:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('150')
                ],
              ),
              10.verticalSpace,
              const Divider(),
              10.verticalSpace,
              Text(
                'Food Details',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 7.h,
                    color: AppColors.blackColor),
              ),
              10.verticalSpace,
              Text(
                'Full Menu:',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 6.h,
                    color: AppColors.blackColor),
              ),
              7.verticalSpace,
              const Text('Dessert, Chicken, Sushi'),
              7.verticalSpace,
              Text(
                'Partial Menu:',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 6.h,
                    color: AppColors.blackColor),
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Main Dish:',
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  Text('Chicken')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Amount:',
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  Text('2')
                ],
              ),
              10.verticalSpace,
              Text(
                'Extra Details:',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 6.h,
                    color: AppColors.blackColor),
              ),
              7.verticalSpace,
              Text(AppString.dummytext3),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Side Dish:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Chicken')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Amount:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('2')
                ],
              ),
              10.verticalSpace,
              Text(
                'Extra Details:',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 6.h,
                    color: AppColors.blackColor),
              ),
              7.verticalSpace,
              Text(AppString.dummytext3),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Drinks:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Chicken')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Amount:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('2')
                ],
              ),
              10.verticalSpace,
              Text(
                'Other Notes:',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 6.h,
                    color: AppColors.blackColor),
              ),
              7.verticalSpace,
              Text(AppString.dummytext3),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount:',
                    style: AppDecoration.semiBoldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 7.h,
                        color: AppColors.blackColor),
                  ),
                  Text(
                    '\$ 600',
                    style: AppDecoration.boldStyle(
                        fontFamily: 'Nunito',
                        fontSize: 10.h,
                        color: AppColors.blackColor),
                  )
                ],
              ),
              10.verticalSpace,
              const Text(
                '(Thank you for your business. Please make your payment at this time.)',
                style: TextStyle(
                    color: Color(0xffFF0E0E), fontWeight: AppColors.bold),
              ),
              10.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Customer Name:',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('James Robert')
                ],
              ),
              7.verticalSpace,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date:', style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('September 23, 2023')
                ],
              ),
              7.verticalSpace,
              const Text('Your signature below:',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              10.verticalSpace,
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
                  'Congratulations on your event; what happens now? The food truck will now be hard at work getting your meal prepped and ready. Feel free to stay in contact with the food truck through the chat feature if you have any further questions. You\'re in good hands!')
            ],
          ).paddingAll(20),
        ),
      ),
    );
  }
}
