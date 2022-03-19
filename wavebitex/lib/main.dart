import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:oktoast/oktoast.dart';
import 'package:wavebitex/data/auth/repository/auth_repo.dart';
import 'package:wavebitex/data/core/di/service_locator.dart';
import 'package:wavebitex/presentation/auth/cubit/auth_cubit.dart';
import 'package:wavebitex/presentation/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpLocator();
  runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AuthRepo _authRepo = sl.get<AuthRepo>();
    return OKToast(
      child: BlocProvider(
        create: (context) => AuthCubit(_authRepo),
        child: MaterialApp(
          title: 'Wavebit Exchange',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
