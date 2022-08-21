import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LastPrices extends StatelessWidget {
  const LastPrices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: 100.w,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('آخرین قیمت ها',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700 ),textAlign:TextAlign.right,),
          Divider(
            height: 2,
            thickness: 1,
            indent: 10,

            endIndent: 10,

          ),
          Container(
            height: 10.h,
            width: 100.w,
            
            child: ListView.builder(
              reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(right: 5),
                    width:25.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                  border: Border(
                  right: BorderSide( //                   <--- right side
                  color: Colors.black12,
                  width: 1,
                  ),
                    ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('عنوان',style: TextStyle(fontSize: 12),),
                        SizedBox(height: 5,),
                        Divider(
                          height: 2,
                          thickness: 1,
                          indent: 10,

                          endIndent: 10,
                          color: Colors.black12,
                        ),
                        SizedBox(height: 5,),
                        Directionality(textDirection: TextDirection.rtl,
                            child:Text('40000 تومان', style: TextStyle(fontSize: 12),),),

                      ],
                    ),
                  );
                }),
          )

        ],
      ),
    );
  }
}
