import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';
import 'package:pokedex/app/core/components/component.dart';
import 'package:pokedex/app/home/page/home_page.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with Component, SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animateSlide;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    animationController.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    animateSlide =
        Tween(begin: 0.0, end: (MediaQuery.of(context).size.height * .5) + 76)
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    ));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColors.background,
            child: const HomePage(), // chama tela
          ),
          //TopPokeball
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedBuilder(
              animation: animateSlide,
              child: topPokeballBackground(Size(size.width, size.height * .5)),
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, -animateSlide.value),
                  child: child,
                );
              },
            ),
          ),
          //BottomPokeball
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedBuilder(
              animation: animateSlide,
              child:
                  bottomPokeballBackground(Size(size.width, size.height * .5)),
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, animateSlide.value),
                  child: child,
                );
              },
            ),
          ),
          //Borders
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: animateSlide,
                child: borderTopSide(),
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, -animateSlide.value),
                    child: child,
                  );
                },
              ),
              // borderTopSide(),
              AnimatedBuilder(
                animation: animateSlide,
                child: borderBottomSide(),
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, animateSlide.value),
                    child: child,
                  );
                },
              ),
              // borderBottomSide(),
            ],
          ),
          //Button
          AnimatedBuilder(
            animation: animateSlide,
            child: openButton(const Size(100, 100)),
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, -animateSlide.value),
                child: child,
              );
            },
          ),
        ],
      ),
    );
  }
}
