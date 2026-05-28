import 'package:flutter/material.dart';
import 'views/login_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
    runApp(const Gestor360App());
    }

    class Gestor360App extends StatelessWidget {
      const Gestor360App({Key? key}) : super(key: key);

        @override
          Widget build(BuildContext context) {
              return MaterialApp(
                    title: 'Gestor 360',
                          debugShowCheckedModeBanner: false,
                                theme: ThemeData(
                                        brightness: Brightness.dark,
                                                primaryColor: const Color(0xFF22C55E),
                                                        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
                                                              ),
                                                                    home: const LoginView(),
                                                                        );
                                                                          }
                                                                          }