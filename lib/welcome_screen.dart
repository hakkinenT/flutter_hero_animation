import 'package:flutter/material.dart';
import 'package:flutter_hero_animation/widgets/user_avatar.dart';

import 'login_screen.dart';
import 'widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WelcomeMessage(),
            const SizedBox(
              height: 65,
            ),
            Hero(
              tag: 'avatarImage',
              flightShuttleBuilder: (flightContext, animation, direction,
                  fromContext, toContext) {
                return const UserAvatar(
                  radius: 50,
                );
              },
              child: const UserAvatar(),
            ),
            const SizedBox(
              height: 35,
            ),
            const ToEnterButton()
          ],
        ),
      ),
    );
  }
}

class ToEnterButton extends StatelessWidget {
  const ToEnterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      labelText: "Entrar",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const LoginScreen(),
          ),
        );
      },
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Bem-vindo, John!',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
