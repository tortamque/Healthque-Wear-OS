import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:healthque_wear_os/config/config.dart';
import 'package:healthque_wear_os/config/routes/router.dart';
import 'package:healthque_wear_os/firebase_options.dart';

import 'core/localization/generated/l10n.dart';
import 'features/authorization/authorization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(HealthqueWearOSApp());
}

class HealthqueWearOSApp extends StatelessWidget {
  const HealthqueWearOSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (_) => AuthCubit()),
      ],
      child: MaterialApp.router(
        //TODO: Change from backend
        theme: themeData(color: Colors.greenAccent),
        routerConfig: router,
        localizationsDelegates: [
          Strings.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: Strings.delegate.supportedLocales,
        locale: Locale('en'),
      ),
    );
  }
}
