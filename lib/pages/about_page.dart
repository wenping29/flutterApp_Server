import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('关于我们'), elevation: 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/app_logo.png', // 替换为你的APP logo路径
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 24),
            const Text(
              'ChatApp',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              '版本号：v1.0.0',
             // style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            const Text(
              '© 2026 ChatApp 版权所有',
             // style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('隐私政策查看中...')));
              },
              child: const Text('隐私政策'),
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('用户协议查看中...')));
              },
              child: const Text('用户协议'),
            ),
          ],
        ),
      ),
    );
  }
}
