import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';
import 'package:pokedex/app/widgets/top/top_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: AppColors.pokeballRedBottom),
        child: Stack(
          children: [
            TopWidget(),
          ],
        ),
      ),
    );
  }
}
