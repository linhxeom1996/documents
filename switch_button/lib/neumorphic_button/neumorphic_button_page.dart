import 'dart:developer';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NeumorphicButton extends StatefulWidget {
  const NeumorphicButton({super.key});

  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool swipeMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Neumorphic",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 66,
          width: 100,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, right: 2),
            child: Neumorphic(
              style: NeumorphicStyle(
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                color: const Color(0xFF767676),
                lightSource: LightSource.topLeft,
                depth: -5,
                intensity: 5,
                shadowLightColor: Colors.black38,
                shadowLightColorEmboss: Colors.white38,
                shadowDarkColor: Colors.black54,
                shadowDarkColorEmboss: Colors.black54,
                border: const NeumorphicBorder(color: Colors.black, width: 2),
              ),
              padding: const EdgeInsets.all(5),
              child: CustomAnimatedToggleSwitch(
                current: swipeMode,
                values: const [true, false],
                indicatorSize: const Size(54, 46),
                animationDuration: const Duration(milliseconds: 200),
                animationCurve: Curves.linear,
                iconBuilder: (context, local, global) {
                  return local.index == 0 ? toggleRemote() : toggleSwipe();
                },
                onChanged: (value) {
                  log("change: $value");
                  //value is current
                  setState(() {
                    swipeMode = value;
                  });
                },
                defaultCursor: SystemMouseCursors.allScroll,
                onTap: () {
                  log("tab");
                  setState(() {
                    swipeMode = !swipeMode;
                  });
                },
                iconsTappable: false,
                backgroundIndicatorBuilder: (context, global) => Neumorphic(
                  style: NeumorphicStyle(
                    color: const Color(0xFF29282B),
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(16),
                    ),
                    depth: -2,
                    intensity: 2,
                    lightSource: LightSource.topLeft,
                    shadowLightColor: Colors.white38,
                    shadowLightColorEmboss: Colors.white38,
                    shadowDarkColor: Colors.black45,
                    shadowDarkColorEmboss: Colors.black45,
                    border:
                        const NeumorphicBorder(color: Colors.black, width: 2),
                  ),
                  child: const SizedBox(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget toggleRemote() {
    return SvgPicture.asset(
      swipeMode
          ? "assets/images/ic_toggle_remote.svg"
          : "assets/images/ic_toggle_remote_selected.svg",
      width: 24,
      height: 24,
    );
  }

  Widget toggleSwipe() {
    return SvgPicture.asset(
      "assets/images/ic_toggle_trackpad.svg",
      width: 24,
      height: 24,
      color: swipeMode ? Colors.white : const Color(0xFF1B2426),
    );
  }
}
