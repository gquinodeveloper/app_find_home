import 'package:flutter/material.dart';

import 'widgets/content.dart';
import 'widgets/footer.dart';
import 'widgets/header.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /* Header(), */
          Content(),
          Footer(),
        ],
      ),
    );
  }
}
