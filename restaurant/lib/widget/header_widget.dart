import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text("Yummie"),
        
        SizedBox(
          height: 25,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://graphicsfamily.com/wp-content/uploads/edd/2021/07/Restaurant-Logo-Design-Template-scaled.jpg"),
          radius: 70,
        )
      ],
    );
  }
}
