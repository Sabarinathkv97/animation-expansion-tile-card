import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class newapp extends StatefulWidget {
  const newapp({super.key});

  @override
  State<newapp> createState() => _newappState();
}

class _newappState extends State<newapp> {
  final bool _customicon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 156, 29),
      appBar: AppBar(title: Text('Expanstin animation')),
      body: Container(
        color: Color.fromARGB(255, 19, 112, 166),
        child: ExpansionTile(
          title: Text('Expansion tyle'),
          trailing: Icon(_customicon
              ? Icons.arrow_drop_down_circle
              : Icons.arrow_drop_down),
          children: [
            Lottie.network(
              'https://assets1.lottiefiles.com/private_files/lf30_QLsD8M.json',
              height: 200.0,
              repeat: true,
              reverse: true,
              animate: true,
            ),
            Container(
              width: 380,
              height: 200,
              color: Colors.white,
              child: Lottie.network(
                  'https://assets1.lottiefiles.com/private_files/lf30_QLsD8M.json'),
            ),
          ],
          onExpansionChanged: (bool expanded) {},
        ),
      ),
    );
  }
}
