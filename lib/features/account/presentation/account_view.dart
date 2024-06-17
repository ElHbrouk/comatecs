import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('عمر محمد'),
        const Text('Omar.M@gmail.com'),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          alignment: Alignment.center,
          height: 40,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text('500 نقطة'),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.edit),
                        SizedBox(
                          width: 10,
                        ),
                        Text('تعديل الملف الشخصي'),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
