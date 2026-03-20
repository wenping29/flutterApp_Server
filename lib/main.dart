import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/main_nav_page.dart';
import 'pages/message_page.dart';
import 'pages/friend_page.dart';
import 'pages/moments_page.dart';
import 'pages/mine_page.dart';
import 'pages/forgot_pwd_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

// build/app/outputs/ios/ipa/app-release-ios.ipa. No artifacts will be uploaded.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'NotoSansSC',
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      title: 'Chat App1111',
      // 初始页面
      initialRoute: '/login',
      // 命名路由表1111111
      routes: {
        '/login': (context) => const LoginPage(),
        '/main': (context) => const MainNavPage(),
        '/message': (context) => const MessagePage(),
        '/mine': (context) => const MinePage(),
        '/friend': (context) => const FriendPage(),
        '/moments': (context) => const MomentPage(),
        '/forgot_pwd_page': (context) => const ForgotPwdPage(),
      },
      // 未知路由处理
      onUnknownRoute: (settings) {
        print("未知路由处理");
        return MaterialPageRoute(builder: (context) => const LoginPage());
      },
    );
  }
}
