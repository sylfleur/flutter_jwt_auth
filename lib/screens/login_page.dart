import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF2A3A4A),
      resizeToAvoidBottomInset: true,

      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Spacer(),
            Expanded(
              flex: 3,
              // child: Image.asset("assets/images/forexPiPsHome_logo.png"),
              child: Image.network(
                  "https://cdn.iconscout.com/icon/free/png-256/free-logo-3446031-2882300.png"),
            ),
            Expanded(
              flex: 3,
              child: Container(),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: "Username or email",
                        ),
                        // style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Password",
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const SizedBox(
                        height: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('username : ${_emailController.text}');
                          print('password : ${_passwordController.text}');
                        },
                        child: const Text("Login"),
                      ),
                      GestureDetector(
                        onTap: () {
                          //TODO
                        },
                        child: const Text(
                          "Need Help ? ",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //TODO
                        },
                        child: const Text(
                          " Register now",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
