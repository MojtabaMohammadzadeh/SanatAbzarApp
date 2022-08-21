import 'package:flutter/cupertino.dart';

class RessponsiveButtom extends StatelessWidget {
  bool? isResponsive;
  double? width;
  RessponsiveButtom({Key? key, this.isResponsive= false, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: width,
      height: 60,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
       color:const Color(0xFF5d69b3),
        ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("img/6399624.png")
        ],
      ),
    );
  }
}
