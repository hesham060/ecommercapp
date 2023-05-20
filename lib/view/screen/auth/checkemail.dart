// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../../core/constants/colors.dart';
// import '../../../controller/forgetpassword/check_email_controller.dart';
// import '../../../core/fuctions/validinputs.dart';
// import '../../widget/auth/CustomButtomAuth.dart';
// import '../../widget/auth/CustomTextBodyAuth.dart';
// import '../../widget/auth/CustomTextTitleAuth.dart';
// import '../../widget/auth/customtextformauth.dart';
// import '../../widget/auth/textsignup.dart';

// class CheckEmail extends StatelessWidget {
//   const CheckEmail({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: AppColor.backgroundColor,
//         elevation: 0.0,
//         title: Text('Check Email',
//             style: Theme.of(context)
//                 .textTheme
//                 .headline1!
//                 .copyWith(color: AppColor.grey)),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//         child: Form(
//           key: controller.formState,
//           child: ListView(children: [
//             const SizedBox(height: 20),
//             const CustomTextTitleAuth(text: "Sucess SignUp"),
//             const SizedBox(height: 10),
//             const CustomTextBodyAuth(
//                 text:
//                     "please Enter Your Email Address To Recive A verification code"),
//             const SizedBox(height: 15),
//             CustomTextFormAuth(
//             isNumber: false,
//               myController: controller.email,
//               hinttext: "Enter Your Email",
//               iconData: Icons.email_outlined,
//               labelText: "Email",
//               valid: (val) {
//                 return validInput(val!, 5, 100, "email");
//               },
//               // mycontroller: ,
//             ),
//             const Text(
//               "Forget Password",
//               textAlign: TextAlign.end,
//             ),
//             CustomButtomAuth(
//                 text: "Check",
//                 onPressed: () {
//                   controller.checkemail();
//                 }),
//             const SizedBox(height: 40),
//             CustomTextSignUpOrSignIn(
//               textOne: " have an account ? ",
//               textTwo: " SignIn ",
//               onTap: () {
//                 controller.checkemail();
//               },
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }
