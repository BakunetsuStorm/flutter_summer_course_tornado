import 'package:flutter/material.dart';
import 'dart:math' as Math;

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Transform.rotate(
          angle: 180 / Math.pi,
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: _buildShinyCircle(),
            ),
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.purple,
                boxShadow: [
                  BoxShadow(
                      color: Colors.deepPurple.withAlpha(120),
                      spreadRadius: 4,
                      blurRadius: 15,
                      offset: Offset.fromDirection(1.0, 30))
                ],
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),

        // child: Container(
        //   color: Colors.purple,
        //   child: Padding(
        //     padding: EdgeInsets.all(10),
        //     child: Container(
        //       color: Colors.blue,
        //     ),
        //   ),
        // ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            center: Alignment(-0.3, -0.5),
          ),
          boxShadow: [BoxShadow(blurRadius: 20)]),
    );
  }
}
