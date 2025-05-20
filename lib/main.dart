import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'features/add_offer/logic/brand_type_cubit.dart';
import 'features/favorite/logic/favorites_provider.dart';
import 'features/rating/logic/rating_provider.dart';
import 'firebase_options.dart';
import 'souq_marhaf.dart';
import 'core/routing/app_router.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  timeago.setLocaleMessages('ar', timeago.ArMessages());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RatingProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
        BlocProvider<AddOfferCubit>(create: (_) => AddOfferCubit()),
      ],
      child: SouqMorhaf(appRouter: AppRouter()),
    ),
  );
}
