import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/core/domain/entities/media.dart';
import 'package:movies_app/core/resources/app_router.dart';
import 'package:movies_app/core/services/service_locator.dart';
import 'package:movies_app/core/resources/app_strings.dart';
import 'package:movies_app/core/resources/app_theme.dart';
import 'package:movies_app/watchlist/presentation/controllers/watchlist_bloc/watchlist_bloc.dart';

void main() async {
  await dotenv.load(fileName: 'api_config.env');
  await Hive.initFlutter();
  Hive.registerAdapter(MediaAdapter());
  await Hive.openBox('items');
  ServiceLocator.init();

  runApp(
    BlocProvider(
      create: (context) => sl<WatchlistBloc>(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: AppRouter().router,
    );
  }
}
