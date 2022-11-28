import 'package:flutter/material.dart';

class Type2 extends StatefulWidget {
  const Type2({Key? key}) : super(key: key);

  @override
  State<Type2> createState() => _Type2State();
}

class _Type2State extends State<Type2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(16),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back_ios, size: 18),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(child: Text('강남역[2호선]', textAlign: TextAlign.center)),
                    Icon(Icons.arrow_right_alt),
                    Expanded(child: Text('남산서울타워', textAlign: TextAlign.center)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
