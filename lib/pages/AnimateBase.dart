import 'package:flutter/material.dart';

class AnimateSwitchers extends StatelessWidget {
  const AnimateSwitchers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('动画开关'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 5000),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.orange, Colors.white],
                stops: [0.2, 0.3]),
            boxShadow: const [BoxShadow(spreadRadius: 25, blurRadius: 25)],
            borderRadius: BorderRadius.circular(150),
          ),
          // child: const Center(child: CircularProgressIndicator()),
          child: AnimatedSwitcher(
            transitionBuilder: ((child, animation) {
              return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(scale: animation, child: child));
            }),
            duration: const Duration(seconds: 2),
            // child: Image.network(
            //     'https://img.tukuppt.com/bg_grid/00/24/07/mxgEB6Lqhj.jpg!/fh/350')
            child: Text(
              'hi',
              key: UniqueKey(),
              style: const TextStyle(fontSize: 100),
            ),
          ),
        ),
      ),
    );
  }
}
