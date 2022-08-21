import 'package:flutter/material.dart';
import 'package:untitled/Widgets/App_Large_Text.dart';
import 'package:untitled/Widgets/App_Text.dart';
import 'package:untitled/Widgets/Responsive_bottom.dart';

class WellcomePage extends StatefulWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  State<WellcomePage> createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
  List Images = [
    "01.jpg",
    "02.jpg",
    "03.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Images.length,
          itemBuilder: (_,index){
          return Container(

            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'img/'+ Images[index]
                ),
                    fit: BoxFit.cover
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top:150 , left: 20, right: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips",color: Colors.white, ),
                      AppText(text: "Mountain", size: 25, color: Colors.white, ),
                      Container(
                        width: 250,
                        margin: const EdgeInsets.only(top: 20),
                        child: AppText(text: 'Mountains are full of energy and will give you the feel of freedome',color: Colors.white,),
                      ),
                      SizedBox(height: 40),
                      RessponsiveButtom(width: 100,),
                    ],
                  ),
                  Column(
                    children:List.generate(3, (indexDots){
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        width: 8,
                        height: index == indexDots?25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:index ==indexDots? Colors.red: Colors.white54,

                        ),
                      );
                    }),
                  )

                ],
              ),
            ),
          );
      }),
    );
  }
}
