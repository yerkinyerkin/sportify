import 'package:flutter/material.dart';
import 'package:sportify/core/custom/custom_button.dart';
import 'package:sportify/core/custom/custom_textfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/screens/login/logic/bloc/login_bloc.dart';
import 'package:sportify/screens/main/screens/main_screen.dart';

class LoginSceen extends StatefulWidget {
  const LoginSceen({super.key});

  @override
  State<LoginSceen> createState() => _LoginSceenState();
}

class _LoginSceenState extends State<LoginSceen> {
  final _loginTextField = TextEditingController();
  final _passwordTextField = TextEditingController();
  @override
  void dispose() {
    _loginTextField.dispose();
    _passwordTextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MainScreen(index: 0,)));
          }
          if (state is LoginFailure) {
            switch (state.response.statusCode) {
              case 400:
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Неправильно ввели логин или пароль")));
                break;
              case 401:
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Неправильно ввели логин или пароль")));
                break;
              case 409:
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("409")));
                break;
              case 500:
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("500")));
                break;
              case 502:
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Server drop down")));
                break;
              default:
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("ERROR")));
                break;
            }
          }
        },
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sportify",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              CustomTextField(controller: _loginTextField, hintText: "Login"),
              const SizedBox(height: 16),
              CustomTextField(
                controller: _passwordTextField,
                hintText: "Password",
              ),
              const SizedBox(height: 16),
              CustomButton(
                  color: Colors.black,
                  text: "Войти",
                  onTap: () {
                    context.read<LoginBloc>().add(
                          GetToken(
                              _loginTextField.text, _passwordTextField.text),
                        );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
