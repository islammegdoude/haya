import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../components/components.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF46C2CB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF66A6FF),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 0, 8),
          child: Container(
            width: 50,
            height: 50,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/islam.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
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
          'Chat',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        toolbarHeight: 66,
        elevation: 2,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
            child: defultFormField(
              controller: textController,
              keyboardType: TextInputType.text,
              prefixIcon: Icons.search,
              textlabel: 'Search',
              validator: (value) {
                if (value!.isEmpty) {
                  return null;
                }
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 10,
              separatorBuilder: ((context, index) => const SizedBox(
                    height: 20,
                  )),
              itemBuilder: (context, index) => chatCard(),
            ),
          ),
        ],
      ),
    );
  }

  Widget chatCard() {
    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(19, 0, 13, 0),
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                child: Container(
                  width: 50,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/islam.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Jake Austin',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                    ),
                  ),
                  Text(
                    'Really? That’s great..',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFFB9A6A6),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Text(
            '9:54Pm',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
            ),
          ),
          
        ],
      ),
    );
  }
}
