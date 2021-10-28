import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      // Imagen
      const Image(
        image: AssetImage('assets/landscape.jpg'),
      ),

      // Title
      const Title(),

      // Button Section
      const ButtonSection(),

      // Description
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: const Text(
            'Cupidatat laborum laboris quis laboris deserunt nostrud irure nulla exercitation adipisicing esse minim consectetur. Commodo consequat non sunt exercitation Lorem id duis est proident culpa consectetur occaecat esse consectetur. Sint quis ea aute nulla consequat cillum proident exercitation sunt laboris incididunt cillum.'),
      ),
    ]));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('kanderster, Switzeland',
                style: TextStyle(color: Colors.black45)),
          ],
        ),
        Expanded(child: Container()),
        const Icon(Icons.star, color: Colors.red),
        const Text('41'),
      ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.map_sharp, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}
