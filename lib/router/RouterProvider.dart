import 'package:blueberry_flutter_template/feature/onboarding/OnboardingScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../core/SplashScreen.dart';
import '../core/TopScreen.dart';
import '../utils/ResponsiveLayoutBuilder.dart';
import '../utils/Talker.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: kIsWeb ? '/' : '/splash',
    observers: [TalkerRouteObserver(talker)],
    routes: [
      GoRoute(
        path: '/splash',
        name: SplashScreen.routeName,
        builder: (context, state) => ResponsiveLayoutBuilder(
          context,
          const SplashScreen(),
        ),
      ),
      GoRoute(
        path: '/',
        name: TopScreen.name,
        builder: (context, state) =>
            ResponsiveLayoutBuilder(context, const TopScreen()),
        routes: [],
      ),
      GoRoute(
        path: '/onboarding',
        name: OnboardingScreen.name,
        builder: (context, state) =>
            ResponsiveLayoutBuilder(context, const OnboardingScreen()),
      )
    ],
  );
});
