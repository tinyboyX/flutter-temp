import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Container(
      color: Colors.yellow,
    );
    // return BlocConsumer<LoginBloc, LoginState>(
    //   listener: (context, state) {
    //     switch (state.runtimeType) {
    //       case LoginSuccessState:
    //         LoadingDialog.hideLoadingDialog;
    //         Navigator.pushNamed(context, RouteDefine.HomeScreen.name);
    //         break;
    //       case LoginErrorState:
    //         print("Login error");
    //         LoadingDialog.hideLoadingDialog;
    //         break;
    //       case LoginLoadingState:
    //         LoadingDialog.showLoadingDialog(context);
    //         break;
    //     }
    //   },
    //   builder: (context, state) {
    //     return Scaffold(
    //       body: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Center(
    //             child: Text(
    //               "Login Screen ${S.current.home} ${Intl.getCurrentLocale()} ${AppConfig.getInstance()!.appFlavor}",
    //               style: Theme.of(context).textTheme.headline5,
    //             ),
    //           ),
    //           MaterialButton(
    //             onPressed: () {
    //               context.read<LoginBloc>().add(
    //                     LoginPressed(
    //                       "userName",
    //                       "password",
    //                       false,
    //                     ),
    //                   );
    //             },
    //             color: Colors.green,
    //             padding: const EdgeInsets.all(8),
    //             child: Text(
    //               "Login",
    //               style: Theme.of(context).textTheme.headline6,
    //             ),
    //           ),
    //           const SizedBox(
    //             height: 10,
    //           ),
    //           MaterialButton(
    //             onPressed: () {
    //               context.read<LoginBloc>().add(
    //                     LoginPressed(
    //                       "userName",
    //                       "password",
    //                       true,
    //                     ),
    //                   );
    //             },
    //             color: Colors.red,
    //             padding: const EdgeInsets.all(8),
    //             child: Text(
    //               "Login Error",
    //               style: Theme.of(context).textTheme.bodyText2,
    //             ),
    //           ),
    //           const SizedBox(
    //             height: 10,
    //           ),
    //           MaterialButton(
    //             onPressed: () async {
    //               await S.load(const Locale('vi'));
    //               print("Result : ${Intl.getCurrentLocale()}");
    //               setState(() {});
    //             },
    //             color: Colors.blue,
    //             padding: const EdgeInsets.all(8),
    //             child: Text(
    //               "Change Locale to Viet Nam",
    //               textAlign: TextAlign.center,
    //               style: Theme.of(context).textTheme.bodyText2,
    //             ),
    //           ),
    //           Assets.images.cashIcon1.svg(),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
