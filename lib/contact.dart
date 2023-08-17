import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:html' as html;

import 'package:url_launcher/url_launcher_string.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  final Uri facebookUrl = Uri.parse('https://www.facebook.com/profile.php?id=100004454659215');
  final Uri instagramUrl = Uri.parse('https://www.instagram.com/hamzamehar222/');
  final Uri githubUrl = Uri.parse('https://github.com/akahamzidollar');
  final Uri whatsappUrl =
      Uri.parse('https://api.whatsapp.com/send/?phone=923151084010&text&type=phone_number&app_absent=0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                            text: 'Ali Hamza\n    ',
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                            children: [
                              TextSpan(
                                text: 'aka  ',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              const TextSpan(
                                text: 'HamzaDollar',
                              ),
                            ]),
                      )),
                  const SizedBox(height: 20),
                  const MySeparator(color: Colors.grey),
                  const SizedBox(height: 20),
                  Wrap(
                    children: [
                      GestureDetector(
                        onTap: () {
                          launchUrlString('mailto:alihamzan295@gmail.com?subject=Hamza%20Dollar&body=Hey!%20Hamza',
                              mode: LaunchMode.externalApplication);
                        },
                        child: DottedBorder(
                          color: Colors.white,
                          strokeWidth: 1,
                          radius: const Radius.circular(10),
                          dashPattern: const [5, 5],
                          borderType: BorderType.RRect,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                  size: 70,
                                ),
                                Text(
                                  'Email',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () => html.window.open(facebookUrl.toString(), 'ali hamza'),
                        child: DottedBorder(
                          color: Colors.white,
                          strokeWidth: 1,
                          radius: const Radius.circular(10),
                          dashPattern: const [5, 5],
                          borderType: BorderType.RRect,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.facebook_outlined,
                                  color: Colors.white,
                                  size: 70,
                                ),
                                Text(
                                  'Facebook',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () => html.window.open(instagramUrl.toString(), 'ali hamza'),
                        child: DottedBorder(
                          color: Colors.white,
                          strokeWidth: 1,
                          radius: const Radius.circular(10),
                          dashPattern: const [5, 5],
                          borderType: BorderType.RRect,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                SvgPicture.asset('assets/images/insta.svg', height: 70, color: Colors.white),
                                Text(
                                  'Instagram',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () => html.window.open(githubUrl.toString(), 'ali hamza'),
                        child: DottedBorder(
                          color: Colors.white,
                          strokeWidth: 1,
                          radius: const Radius.circular(10),
                          dashPattern: const [5, 5],
                          borderType: BorderType.RRect,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/github-mark.svg',
                                  height: 70,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Github',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () => html.window.open(whatsappUrl.toString(), 'ali hamza'),
                        child: DottedBorder(
                          color: Colors.white,
                          strokeWidth: 1,
                          radius: const Radius.circular(10),
                          dashPattern: const [5, 5],
                          borderType: BorderType.RRect,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/wtps.svg',
                                  height: 70,
                                  color: Colors.white,
                                ),
                                Text(
                                  'WhatsApp',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black}) : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
