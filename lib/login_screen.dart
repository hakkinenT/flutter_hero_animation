import 'package:flutter/material.dart';
import 'package:flutter_hero_animation/widgets/custom_elevated_button.dart';
import 'package:flutter_hero_animation/widgets/user_avatar.dart';

import 'widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Hero(
                tag: 'avatarImage',
                child: UserAvatar(
                  radius: 65,
                )),
            SizedBox(
              height: 60,
            ),
            EmailInput(),
            SizedBox(
              height: 16,
            ),
            PasswordInput(),
            SizedBox(
              height: 16,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: LoginButton()),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {},
      width: double.maxFinite,
      labelText: 'Fazer Login',
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextFormField(
      hintText: 'Digite sua senha',
      label: 'Senha',
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextFormField(
      hintText: 'Digite seu e-mail',
      label: 'E-mail',
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
    );
  }
}
