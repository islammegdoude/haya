import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF46C2CB),
        appBar: AppBar(
          backgroundColor: const Color(0xFF66A6FF),
          automaticallyImplyLeading: false,
          actions: const [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 21, 21, 21),
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
          title: const Text(
            'Favorite',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
          toolbarHeight: 66,
          elevation: 2,
        ),
        body: ListView(
          children: [
            ...List.generate(
              4,
              (index) => postCard(context),
            ),
          ],
        ));
  }

  Container postCard(context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            children: [
              // head part
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/islam.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Islam Salah',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF090F13),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.keyboard_control,
                          color: Colors.black,
                          size: 28,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // content
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: Text(
                  'Explore your app with Talkback using these instructions. Swipe right to navigate through screen elements in sequence, and swipe left to go in the opposite direction.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // image part
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'assets/images/islam.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // last part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_upward_rounded,
                          size: 30,
                          color: Colors.black,
                          weight: 2,
                        ),
                      ),
                      const Text(
                        'Up',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '12.548',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const FaIcon(
                    FontAwesomeIcons.solidBookmark,
                    color: Colors.black,
                    size: 24,
                  )
                ],
              )
            ],
          ),
        ),
      );
}
