import 'package:flutter/material.dart';
import 'package:login_page/cart.dart';
import 'package:login_page/detail.dart';
import 'package:login_page/detailSpinach.dart';
import 'package:login_page/favorite.dart';
import 'package:login_page/loginPage.dart';
import 'package:login_page/notfound.dart';
import 'package:login_page/profile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff335b39),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "VegetableBox",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            fontSize: 14,
            color: Color(0xffffffff),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.logout,
            color: Color(0xffffffff),
            size: 24,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => loginPage()),
            );
          },
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: Color(0xffffffff),
                  size: 24,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Favorite(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Color(0xffffffff),
                  size: 24,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 170,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (context, position) {
                      return SizedBox(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(28.0),
                            bottomRight: Radius.circular(28.0),
                          ),
                          child: Image.asset(
                            "pp.jpg",
                            height: 300,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 1,
                        axisDirection: Axis.horizontal,
                        effect: const WormEffect(
                          dotColor: Color(0x009e9e9e),
                          activeDotColor: Color(0x003a57e8),
                          dotHeight: 16,
                          dotWidth: 16,
                          radius: 16,
                          spacing: 8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 25),
                    child: GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman yang diinginkan saat gambar ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Profile(), // Ganti dengan halaman yang diinginkan
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("ppp.jpeg", fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: ListTile(
                        tileColor: Color(0x1f7bcf5d),
                        title: Text(
                          "Hello,",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(
                          "What vegetables will you buy today?",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        dense: false,
                        contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10),
                        selected: false,
                        selectedTileColor: Color(0x42000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              padding: const EdgeInsets.all(0),
              width: 450,
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0xffffffff), width: 1),
              ),
              child: TextField(
                controller: TextEditingController(),
                obscureText: false,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        const BorderSide(color: Color(0xff000000), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        const BorderSide(color: Color(0xff000000), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        const BorderSide(color: Color(0xff000000), width: 1),
                  ),
                  labelText: "Search vegetables",
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  filled: true,
                  fillColor: const Color(0x00ffffff),
                  isDense: false,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  prefixIcon: const Icon(Icons.search,
                      color: Color(0xff212435), size: 24),
                  suffixIcon: const Icon(Icons.arrow_forward,
                      color: Color(0xff212435), size: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(11, 70, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "Just For You",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(95, 0, 0, 0),
                    child: MaterialButton(
                      onPressed: () {},
                      color: const Color(0xffffffff),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(
                            color: Color(0xff67ea4a), width: 1),
                      ),
                      textColor: const Color(0xff000000),
                      height: 0,
                      minWidth: 100,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _buildVegetableCard(
                        "Lettuce", "selada.jpg", Detail(), context),
                    _buildVegetableCard(
                        "ButterHead", "lettuce.jpg", notfound(), context),
                    _buildVegetableCard(
                        "Pakcoy", "pakcoy.jpg", notfound(), context),
                    _buildVegetableCard(
                        "Romaine", "romaine.jpg", notfound(), context),
                    _buildVegetableCard(
                        "Spinach", "spinach.jpg", Detailspinach(), context),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: 400,
                    height: 390,
                    decoration: BoxDecoration(
                      color: const Color(0x00000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0),
                      border:
                          Border.all(color: const Color(0xff9e9e9e), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 260,
                          width: 400,
                          child: Stack(
                            children: [
                              PageView.builder(
                                controller: pageController,
                                scrollDirection: Axis.horizontal,
                                itemCount: 1,
                                itemBuilder: (context, position) {
                                  return SizedBox(
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "pp.jpg",
                                        height: 300,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 15),
                                  child: SmoothPageIndicator(
                                    controller: pageController,
                                    count: 1,
                                    axisDirection: Axis.horizontal,
                                    effect: const WormEffect(
                                      dotColor: Color(0x009e9e9e),
                                      activeDotColor: Color(0x003a57e8),
                                      dotHeight: 16,
                                      dotWidth: 16,
                                      radius: 16,
                                      spacing: 8,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                          child: Text(
                            "If you eat vegetables every day, you will live healthy. By eating vegetables you will get the benefits, namely: Preventing and reducing excessive stress, Preventing heart disease and cancer, Cleaning toxins in the body (Detoxification).",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVegetableCard(String title, String imagePath,
      Widget halamanTujuan, BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(4),
      color: const Color(0x40aee421),
      shadowColor: const Color(0xff000000),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: const BorderSide(color: Color(0xff9e9e9e), width: 1),
      ),
      child: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        width: 100,
        height: 177,
        decoration: BoxDecoration(
          color: const Color(0x41aee421),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: const Color(0x4dffffff), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text(
                title,
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Image.asset(
                imagePath,
                height: 94,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => halamanTujuan),
                );
              },
              color: const Color(0xff335b39),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(16),
              textColor: const Color(0xffffffff),
              height: 40,
              minWidth: 140,
              child: const Text(
                "Buy Now",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}