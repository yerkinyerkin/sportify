import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/screens/login/screens/login_screen.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({super.key});

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.kLightPurple,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppConst.kDarkPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Аккаунт",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Тренер аккаунты",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginSceen()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppConst.kDarkPurple,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    padding:
                        const EdgeInsets.all(8).copyWith(left: 20, right: 20),
                    child: const Text(
                      "Кіру",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Text(
                  "Қараңғы режим",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.nightlight_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Тренер аккаунты",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                CupertinoSwitch(
                  value: switchValue,
                  onChanged: (bool? value) {
                    setState(() {
                      switchValue = value ?? false;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  "Тіл",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Тілді ауыстыру",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Text(
                  "Қазақ тілі",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OtherScreenToken extends StatefulWidget {
  const OtherScreenToken({super.key});

  @override
  State<OtherScreenToken> createState() => _OtherScreenTokenState();
}

class _OtherScreenTokenState extends State<OtherScreenToken> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.kLightPurple,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppConst.kDarkPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Аккаунт",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Тренер аккаунты",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppConst.kDarkPurple,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    padding:
                        const EdgeInsets.all(8).copyWith(left: 20, right: 20),
                    child: const Text(
                      "Шығу",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Text(
                  "Қараңғы режим",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.nightlight_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Тренер аккаунты",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                CupertinoSwitch(
                  value: switchValue,
                  onChanged: (bool? value) {
                    setState(() {
                      switchValue = value ?? false;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  "Тіл",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Тілді ауыстыру",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Text(
                  "Қазақ тілі",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
