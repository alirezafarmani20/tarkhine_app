import 'package:flutter/widgets.dart';
import 'package:tarkhineh_app/core/theme/color.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.1 ,end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Text(
                ".",
                style: TextStyle(fontSize: 40 , color: ColorApp.white),
              ),
            );
          },
        ),
        SizedBox(width: 15),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Text(
                ".",
                style: TextStyle(fontSize: 40, color: ColorApp.white),
              ),
            );
          },
        ),
        SizedBox(width: 15),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Text(
                ".",
                style: TextStyle(fontSize: 40 , color: ColorApp.white),
              ),
            );
          },
        ),
      ],
    );
  }
}
