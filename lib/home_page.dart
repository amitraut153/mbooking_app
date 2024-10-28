import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageList = [
    "assets/images/avengers.svg",
    "assets/shoes.svg",
    "assets/images/avengers.svg",
    "assets/images/avengers.svg",
    "assets/images/avengers.svg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
            child: Container(
              width: 398,
              height: 115,
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Core2web 👋",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color.fromRGBO(242, 242, 242, 1),
                              ),
                            ),
                            Text(
                              "Welcome back",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                color: const Color.fromRGBO(242, 242, 242, 1),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 36,
                          width: 36,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_on_rounded,
                              size: 30,
                              color: Color.fromRGBO(242, 242, 242, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 398,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(28, 28, 28, 1),
                    ),
                    child: TextField(
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(242, 242, 242, 1),
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 28,
                          color: Color.fromRGBO(242, 242, 242, 1),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(140, 140, 140, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 398,
            height: 747,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        children: [
                          Text(
                            "Now Playing",
                            style: GoogleFonts.roboto(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(242, 242, 242, 1)),
                          ),
                          const Spacer(),
                          GestureDetector(
                            child: Row(
                              children: [
                                Text(
                                  "See all",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(252, 196, 52, 1),
                                  ),
                                ),
                                const Icon(
                                  Icons.navigate_next_outlined,
                                  color: Color.fromRGBO(252, 196, 52, 1),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        // color: Colors.white60,
                        width: 832,
                        // height: 518,
                        child: Container(
                          child: CarouselSlider.builder(
                            itemCount: imageList.length,
                            options: CarouselOptions(
                              enlargeCenterPage: true,
                              height: 400,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              reverse: false,
                              aspectRatio: 5,
                            ),
                            itemBuilder: (context, i, index) {
                              return GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: SvgPicture.asset(
                                      imageList[i],
                                      width: 290,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  // var url = imageList[i];
                                },
                              );
                            },
                          ),
                        ),
                        // ListView.builder(
                        //   itemCount: 3,
                        //   scrollDirection: Axis.horizontal,
                        //   itemBuilder: (context, index) {
                        //     return Column(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         Padding(
                        //           padding: const EdgeInsets.only(
                        //               left: 44.0, right: 22),
                        //           child: Container(
                        //             width: 290,
                        //             height: 400,
                        //             decoration: const BoxDecoration(
                        //                 color:
                        //                     Color.fromARGB(255, 239, 191, 57)),
                        //             child: Column(
                        //               children: [
                        //                 Container(),
                        //                 const SizedBox(
                        //                   child: Column(
                        //                     children: [
                        //                       Text(
                        //                         "",
                        //                       ),
                        //                       Text(
                        //                         "",
                        //                       ),
                        //                       Text(
                        //                         "",
                        //                       ),
                        //                     ],
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     );
                        //   },
                        // ),
                        // NowplayingCard(),
                        // ListView.builder(
                        //   scrollDirection: Axis.horizontal,
                        //   itemCount: 1,
                        //   itemBuilder: (context, index) {
                        //     return ;
                        //     // Container(
                        //     //   alignment: Alignment.center,
                        //     //   width: 310,
                        //     //   height: 440,
                        //     //   // color: const Color.fromARGB(255, 255, 255, 255),
                        //     //   child: Column(
                        //     //     children: [Image.asset("assets/shoes.jpg")],
                        //     //   ),
                        //     // );
                        //   },
                        // ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class NowplayingCard extends StatelessWidget {
//   const NowplayingCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
