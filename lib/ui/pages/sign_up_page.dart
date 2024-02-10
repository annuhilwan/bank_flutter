import 'package:flutter/material.dart';
import 'package:flutter_bank/shared/theme.dart';
import 'package:flutter_bank/ui/widgets/button.dart';
import 'package:flutter_bank/ui/widgets/form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50, 
            margin: const EdgeInsets.only(
              top: 100, 
              bottom: 100,             
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage( 
                  'assets/image_logo_light.png'
                ),
                ),
            ),
          ),
            Text(
              'Sign in &\nGrow Your Finance',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //NOTE: EMAIL INPUT
                   const CustomFormField(
                    title: 'Email Address',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  //NOTE PASSWORD INPUT
                  const CustomFormField(
                    title: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(                  
                    'Forgot Password',
                    style: blueTextStyle,
                    ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                     CustomFilledButton(
                      title: 'Sign In',
                      onPressed: (){},
                      ),
                ],
                ),
            ),
            const SizedBox(
              height: 50,
            ),
           CustomTextButton(
            title: 'Create New Account',
            onPressed: (){},
            )
        ],
      ),
    ); 
  }
}