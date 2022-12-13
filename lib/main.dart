import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:luckypet/app_styles.dart';
import 'package:luckypet/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/nav_icon.svg",
                  width: 18,
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: kRed,
                  backgroundImage: NetworkImage(
                      "https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png"),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Image.asset(
                    "assets/welcome_message.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: SizeConfig.blockSizeHorizontal! * 38,
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Hello",
                                style: kSourceSansProlight.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 5.5,
                                  color: kBlack,
                                )),
                            const SizedBox(
                              width: 6,
                            ),
                            Text("Michael",
                                style: kSourceSansProMedium.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 5.5,
                                  color: kBlack,
                                )),
                            const SizedBox(
                              width: 4,
                            ),
                            Text("👋",
                                style: kSourceSansProMedium.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.5,
                                  color: kBlack,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Ready for an amazing and lucky experience 🐈 🐕",
                          style: kSourceSansProregular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            color: kBlack,
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(children: [
              Text(
                "Dogs",
                style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 6),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "🐕",
                style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3),
              ),
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              height: 169,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 169,
                      width: 150,
                      margin: EdgeInsets.only(
                        left: index == 0 ? 30 : 15,
                        right: index == 10 - 1 ? 30 : 0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadiusList),
                        color: kRed,
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
