import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Colors.black);
    final styleHint = TextStyle(color: Colors.black54);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(

      height: 42,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(25),

        color: Colors.white,
        border: Border.all(color: Colors.black26),

        // **************Shadow*****************
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(
              1.0,
              5.0,
            ),
            spreadRadius: 1,
            blurRadius: 6,
          ) //BoxShadow
           //BoxShadow
        ],
        // *****************End Shadow************
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),

      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          TextField(
            textDirection: TextDirection.rtl,
            controller: controller,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                icon: Icon(Icons.search, color: style.color),
                contentPadding: EdgeInsets.only(right: 20),



                suffixIcon: widget.text.isNotEmpty
                    ? GestureDetector(
                    child: Icon(Icons.close, color: style.color),
                     onTap: () {
                      controller.clear();
                      widget.onChanged('');
                       FocusScope.of(context).requestFocus(FocusNode());
                      },
                       )
                            : null,
                        hintText: widget.hintText,
                         hintStyle: style,
                           border: InputBorder.none,
            ),
            style: style,
            onChanged: widget.onChanged,
          ),
          // IconButton(onPressed: (){}, icon: Icon(Icons.search, color: style.color)),
        ],
      ),
      // child: TextField(
      //
      //   textDirection: TextDirection.rtl,
      //   controller: controller,
      //
      //   // decoration: InputDecoration(
      //   //
      //   //   icon: Icon(Icons.search, color: style.color),
      //   //   suffixIcon: widget.text.isNotEmpty
      //   //       ? GestureDetector(
      //   //     child: Icon(Icons.close, color: style.color),
      //   //     onTap: () {
      //   //       controller.clear();
      //   //       widget.onChanged('');
      //   //       FocusScope.of(context).requestFocus(FocusNode());
      //   //     },
      //   //   )
      //   //       : null,
      //   //   hintText: widget.hintText,
      //   //   hintStyle: style,
      //   //   border: InputBorder.none,
      //   // ),
      //   style: style,
      //   onChanged: widget.onChanged,
      // ),
    );
  }
}