import 'package:flutter/material.dart';

class Type4 extends StatefulWidget {
  const Type4({Key? key}) : super(key: key);

  @override
  State<Type4> createState() => _Type4State();
}

class _Type4State extends State<Type4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        subItem(),
        subItem(),
        subItem(),
        subItem(),
        subItem(),
      ],
    );
  }

  Widget subItem() {
    return InkWell(
      onTap: () {
        debugPrint('***** [JHC_DEBUG] 선택');
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text('넥스트', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 4),
                        Icon(Icons.person, size: 14),
                        SizedBox(width: 4),
                        Text('5', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 4),
                        Icon(Icons.info_outline, size: 14),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '대형 RV의 쾌적한 이동',
                      style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_upward, size: 12, color: Colors.grey.withOpacity(0.8)),
                    Text('2.0배', style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.8))),
                  ],
                ),
                const SizedBox(height: 2),
                const Text('예상 17,200원', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 2),
                Text(
                  '예상 23,200원',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 14,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
