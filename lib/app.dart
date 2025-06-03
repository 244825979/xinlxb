import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'constants/app_colors.dart';
import 'screens/main_screen.dart';
import 'screens/splash_screen.dart';
import 'providers/home_provider.dart';
import 'providers/notification_provider.dart';
import 'providers/plaza_provider.dart';
import 'providers/chat_provider.dart';
import 'providers/profile_provider.dart';

class VoiceDiaryApp extends StatelessWidget {
  const VoiceDiaryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 设置状态栏为黑色
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => NotificationProvider()..initialize()),
        ChangeNotifierProvider(create: (_) => PlazaProvider()),
        ChangeNotifierProvider(create: (_) => ChatProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()..initialize()),
      ],
      child: MaterialApp(
        title: '心情日记',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: MaterialColor(
            AppColors.primary.value,
            <int, Color>{
              50: AppColors.primaryLight,
              100: Color(0xFFFFD6D6),
              200: Color(0xFFFFBDBD),
              300: Color(0xFFFFA4A4),
              400: Color(0xFFFF8B8B),
              500: AppColors.primary,
              600: AppColors.primaryDark,
              700: Color(0xFFD35451),
              800: Color(0xFFBE4A47),
              900: Color(0xFFA8403D),
            },
          ),
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background,
          colorScheme: ColorScheme.light(
            primary: AppColors.primary,
            secondary: AppColors.primaryDark,
            surface: AppColors.cardBackground,
            background: AppColors.background,
            error: AppColors.error,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: AppColors.textPrimary),
            titleTextStyle: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            systemOverlayStyle: SystemUiOverlayStyle.dark, // 设置 AppBar 的状态栏样式
          ),
          cardTheme: CardThemeData(
            color: AppColors.cardBackground,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            shadowColor: AppColors.primary.withOpacity(0.1),
          ),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            bodyLarge: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
            ),
            bodyMedium: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14,
            ),
            bodySmall: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 12,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        home: SplashScreen(),
      ),
    );
  }
} 