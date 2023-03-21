import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../components/components.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  var textController = TextEditingController();
  List<String> names = ['All', 'technologie', 'informatique', 'Business'];
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
              child: Image.network(
                'https://picsum.photos/seed/960/600',
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
            'M.Islam',
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
            Container(
              height: 36,
              margin: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                separatorBuilder: ((context, index) => const SizedBox(
                      width: 10,
                    )),
                itemBuilder: (context, index) =>
                    categoryCard(names[index], index),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: names.length,
                separatorBuilder: ((context, index) => const SizedBox(
                      height: 20,
                    )),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 15, 0, 15),
                      child: Text(
                        'Search',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Container categoryCard(String name, int index) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 36,
        decoration: BoxDecoration(
          color: index == 0 ? Colors.white : const Color(0xFFDBE2E7),
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: const AlignmentDirectional(0, 0),
        child: Text(
          name,
          style: const TextStyle(
            fontFamily: 'Outfit',
            color: Color(0xFF14181B),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      );
}
