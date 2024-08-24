// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noxblog/core/common/error_text.dart';
import 'package:noxblog/core/common/loader.dart';
import 'package:noxblog/features/auth/controlller/auth_controller.dart';
import 'package:noxblog/firebase_options.dart';
import 'package:noxblog/models/user_model.dart';
import 'package:noxblog/router.dart';
import 'package:noxblog/theme/pallete.dart';
import 'package:routemaster/routemaster.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(authStateChangeProvider).when(
          data: (user) {
            if (user != null) {
              return ref.watch(getUserDataProvider(user.uid)).when(
                    data: (userModel) {
                      // Safely update the user provider outside the build method
                      Future.microtask(() {
                        ref
                            .read(userProvider.notifier)
                            .update((state) => userModel);
                      });

                      return MaterialApp.router(
                        debugShowCheckedModeBanner: false,
                        title: 'noxblog',
                        theme: ref.watch(themeNotifierProvider),
                        routerDelegate: RoutemasterDelegate(
                          routesBuilder: (context) => loggedInRoute,
                        ),
                        routeInformationParser: const RoutemasterParser(),
                      );
                    },
                    loading: () => const Loader(),
                    error: (error, stackTrace) =>
                        ErrorText(error: error.toString()),
                  );
            } else {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: 'noxblog',
                theme: ref.watch(themeNotifierProvider),
                routerDelegate: RoutemasterDelegate(
                  routesBuilder: (context) => loggedOutRoute,
                ),
                routeInformationParser: const RoutemasterParser(),
              );
            }
          },
          loading: () => const Loader(),
          error: (error, stackTrace) => ErrorText(error: error.toString()),
        );
  }
}
