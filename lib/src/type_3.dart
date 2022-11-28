import 'package:flutter/material.dart';

class Type3 extends StatefulWidget {
  const Type3({Key? key}) : super(key: key);

  @override
  State<Type3> createState() => _Type3State();
}

class _Type3State extends State<Type3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: subItem(Icons.card_membership, '결제수단', '카카오뱅크 **8354 개인')),
              Container(
                width: 1,
                height: 24,
                color: Colors.grey.withOpacity(0.2),
              ),
              Expanded(child: subItem(Icons.airplane_ticket_rounded, '쿠폰 / 크레딧', '할인 적용됨')),
            ],
          ),

          /// 버튼
          Ink(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF1B264A),
              borderRadius: BorderRadius.circular(4),
            ),
            child: InkWell(
              onTap: () {
                debugPrint('***** [JHC_DEBUG] 버튼 선택');
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  '넥스트 선택',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget subItem(IconData icon, String title, String content) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 16),
              const SizedBox(width: 4),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(width: 4),
              const Icon(Icons.keyboard_arrow_right_outlined, size: 14)
            ],
          ),
          const SizedBox(height: 8),
          Text(content)
        ],
      ),
    );
  }
}
