import 'package:flutter/material.dart';
import 'package:flutter_bank/shared/theme.dart';
import 'package:flutter_bank/ui/widgets/button.dart';
import 'package:flutter_bank/ui/widgets/form.dart';

class SignUpSetProfilePage extends StatelessWidget {
  const SignUpSetProfilePage({Key?key}) : super(key: key);

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
              'Join Us to Unlock\nYour Growth',
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
                children: [
                  // Container(
                  //   width: 120,
                  //   height: 120,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color: lightBackgroundColor,
                  //   ),
                  //   child: Center(
                  //     child: Image.asset(
                  //       'assets/fi_upload-cloud.png',
                  //       width: 32,
                  //      ),
                  //      ),
                  //    ),
                     Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit:BoxFit.cover,
                        image: AssetImage(
                          'assets/photo1.png',
                      ),
                      ), 
                    ),                   
                     ),                     
                     const SizedBox(
                      height: 16,
                     ),
                     Text(
                      'Shayna Hanna',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                      ),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomFormField(
                      title: 'Set PIN (6 digit number)', 
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                     CustomFilledButton(
                      title: 'Continue',
                      onPressed: (){},
                      ),
                ],
                ),
            ),
            const SizedBox(
              height: 50,
            ),
           
        ],
      ),
    ); 
  }
}