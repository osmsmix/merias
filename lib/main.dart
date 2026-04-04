import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:testmerias/pages/game_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'providers/player1_provider.dart';
import 'providers/player2_provider.dart';
import 'providers/player3_provider.dart';
import 'providers/user_provider.dart';

Future<void> main() async{
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
    url: dotenv.env['url']!,
    anonKey: dotenv.env['anonKey']!,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => Player1Provider()),
        ChangeNotifierProvider(create: (context) => Player2Provider()),
        ChangeNotifierProvider(create: (context) => Player3Provider()), 
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MERIAS',
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const GamePage(),
      ),
    );
  }
}

