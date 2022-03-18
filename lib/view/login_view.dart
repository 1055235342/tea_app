import 'package:flutter/material.dart';
import 'package:fluttertemplate/utils/rsa/rsa_utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    test();
  }

  void test() async {
    String result = await encodeString('1231312');
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1111"),
      ),
    );
  }
}
