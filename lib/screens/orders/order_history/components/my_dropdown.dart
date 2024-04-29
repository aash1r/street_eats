// import 'package:street_eats_vendor/helpers/utils/export.dart';

// class MyDropDown extends StatelessWidget {
//   const MyDropDown({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => showPopover(
//           context: context,
//           bodyBuilder: (context) => const MenuItems(),
//           width: 120,
//           height: 50,
//           direction: PopoverDirection.bottom),
//       child: Container(
//         width: Get.width * 0.3,
//         decoration: BoxDecoration(
//             color: const Color(0xffFFAA00),
//             borderRadius: BorderRadius.circular(10)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Preparing',
//               style: AppDecoration.mediumStyle(
//                   fontFamily: 'Nunito',
//                   fontSize: 7.h,
//                   color: AppColors.whiteColor),
//             ),
//             10.horizontalSpace,
//             const Icon(
//               Icons.arrow_drop_down_circle_sharp,
//               color: Colors.white,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MenuItems extends StatelessWidget {
//   const MenuItems({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: Get.width * 0.3,
//           decoration: BoxDecoration(
//               color: const Color(0xffFFAA00),
//               borderRadius: BorderRadius.circular(10)),
//           child: Text(
//             'hello',
//             style: AppDecoration.mediumStyle(
//                 fontFamily: 'Nunito',
//                 fontSize: 7.h,
//                 color: AppColors.whiteColor),
//           ),
//         ),
//         Container(
//           width: Get.width * 0.3,
//           decoration: BoxDecoration(
//               color: const Color(0xffFFAA00),
//               borderRadius: BorderRadius.circular(10)),
//           child: Text(
//             'Preparing',
//             style: AppDecoration.mediumStyle(
//                 fontFamily: 'Nunito',
//                 fontSize: 7.h,
//                 color: AppColors.whiteColor),
//           ),
//         ),
//       ],
//     );
//   }
// }
