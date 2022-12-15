import 'package:flutter/material.dart';

import '/screens/sign_in_options_screen.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showModalBottomSheet(context),
        tooltip: 'Bottom Sheet',
        child: const Icon(Icons.add),
      ),
    );
  }
}

void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 0.4,
      maxChildSize: 0.9,
      minChildSize: 0.32,
      expand: false,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: const SignInOptionsScreen(),
        );
      },
    ),
  );
}
