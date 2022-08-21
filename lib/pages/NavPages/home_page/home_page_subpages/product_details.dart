import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('product details'),
        centerTitle: true,
        backgroundColor: const Color(0xff0F1B6D),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.orange])
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,

            itemCount: 10,
            itemBuilder: (context,index){
              return Center(
                child: BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    margin: EdgeInsets.only(right: 10.w),
                    width: 80.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: Color(0xff182f41).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [

                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          width: 70.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),

                            image: const DecorationImage(
                              image: AssetImage('assets/img/tools.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),

                        ),

                        const Text('اینورت جوشکاری 250 سری تاپ لاین مدلRH-4000', style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),textDirection: TextDirection.rtl,textAlign: TextAlign.center,),

                        SizedBox(
                          width: 60.w,
                          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae ultricies leo integer malesuada nunc vel. Accumsan tortor posuere ac ut consequat. Eget mauris pharetra et ultrices neque ornare aenean. Ac auctor augue mauris augue neque gravida in',style: const TextStyle(fontSize: 12,color:Colors.white ),textDirection: TextDirection.rtl,),

                        ),

                        ElevatedButton.icon(onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color(0xff182f41)),


                            elevation: MaterialStateProperty.all(10),
                            padding:MaterialStateProperty.all(const EdgeInsets.only(right: 20, left: 20,top: 5,bottom: 5)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25))),
                          ),
                          icon: const Icon(Icons.pin_invoke),
                          label: const Text("افزودن به علاقه مندی ها"),
                        ),


                        // Container(
                        //   margin: EdgeInsets.only(top: 15),
                        //   padding: EdgeInsets.only(right: 25,left: 15),
                        //
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_left_outlined,size:40,)),
                        //       IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_outlined,size:40,)),
                        //
                        //     ],
                        //   ),
                        // ),


                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
