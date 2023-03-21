import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../components/components.dart';
import '../../layout/layoutScreen.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  double borderm = 0;
  double borderf = 0;
  double prof = 0;
  double student = 0;
  double inves = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF46C2CB),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // are you ?
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Text(
                      'Are you?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // male
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black, width: borderm),
                color: const Color(0xFFE7F9FF),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    if ((borderf == 2 && borderm == 0) ||
                        (borderf == 0 && borderm == 0)) {
                      borderm = 2;
                      borderf = 0;
                    } else {
                      borderm = 0;
                    }
                  });
                },
                child: const Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // femal
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black, width: borderf),
                color: const Color(0xFFE7F9FF),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    if ((borderm == 2 && borderf == 0) ||
                        (borderm == 0 && borderf == 0)) {
                      borderf = 2;
                      borderm = 0;
                    } else {
                      borderf = 0;
                    }
                  });
                },
                child: const Text(
                  'Femal',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          // are you ?
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Text(
                      'Are you ?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // prof
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black, width: prof),
                color: const Color(0xFFE7F9FF),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    if ((student == 2 && inves == 0 && prof == 0)) {
                      prof = 2;
                      student = 0;
                    } else if (student == 0 && inves == 2 && prof == 0) {
                      prof = 2;
                      inves = 0;
                    } else if (student == 0 && inves == 0 && prof == 2) {
                      prof = 0;
                    } else if (student == 0 && inves == 0 && prof == 0) {
                      prof = 2;
                    }
                  });
                },
                child: const Text(
                  'Prof',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // prof
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black, width: student),
                color: const Color(0xFFE7F9FF),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    if ((student == 0 && inves == 0 && prof == 2)) {
                      prof = 0;
                      student = 2;
                    } else if (student == 0 && inves == 2 && prof == 0) {
                      student = 2;
                      inves = 0;
                    } else if (student == 2 && inves == 0 && prof == 0) {
                      student = 0;
                    } else if (student == 0 && inves == 0 && prof == 0) {
                      student = 2;
                    }
                  });
                },
                child: const Text(
                  'Student',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Investor
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black, width: inves),
                color: const Color(0xFFE7F9FF),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    if ((student == 2 && inves == 0 && prof == 0)) {
                      inves = 2;
                      student = 0;
                    } else if (student == 0 && inves == 2 && prof == 0) {
                      inves = 0;
                    } else if (student == 0 && inves == 0 && prof == 2) {
                      prof = 0;
                      inves = 2;
                    } else if (student == 0 && inves == 0 && prof == 0) {
                      inves = 2;
                    }
                  });
                },
                child: const Text(
                  'Investor',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // register
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 25, 16, 0),
            child: Container(
              width: double.infinity,
              height: 53.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xFFECFFFE),
              ),
              child: MaterialButton(
                onPressed: () {
                  navigateAndFinish(context, const LayoutScreen());
                },
                child: const Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
