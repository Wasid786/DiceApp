import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
// //// Alignment? startAlignment;   this will help to put null value initially and give it value when we assign it again in widget build.
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // //// const GradientContainer({super.key, required.this.colors});
  // ////const GradientContainer({Key? key, this.colors = const []}) : super(key: key);          // c
  const GradientContainer(this.color1, this.color2, {super.key});
  // const GradientContainer(this.color1, this.color2, {Key? key})
  // : super(key: key); /// c

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    // //// vatiable redefine
    // //// startAlignment = Alignment.topLeft;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}


// //// variable can reassign them if we want to
// class GradientContainer extends StatelessWidget {
//   // //// const GradientContainer({super.key, required.this.colors});
//   const GradientContainer({Key? key, this.colors = const []}) : super(key: key);


//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     // //// vatiable redefine
//     // //// startAlignment = Alignment.topLeft;
//     return Container(
//       decoration:  BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(child: StyledText('Hello World!!')),
//     );
//   }
// }
