//@dart=2.9
import 'package:cryptoplaymate1dm/Clientes/cryptactoe.dart';
import 'package:cryptoplaymate1dm/Clientes/cryptactoe_game.dart';
import 'package:cryptoplaymate1dm/Clientes/cryptactoe_instructions.dart';
import 'package:cryptoplaymate1dm/Clientes/cryptactoe_lobby.dart';
import 'package:cryptoplaymate1dm/Clientes/cryptactoe_settings.dart';
import 'package:cryptoplaymate1dm/Clientes/home.dart';
import 'package:cryptoplaymate1dm/Clientes/juegos_principal.dart';
import 'package:cryptoplaymate1dm/Clientes/nft_members.dart';
import 'package:cryptoplaymate1dm/Clientes/nft_power_cards.dart';
import 'package:cryptoplaymate1dm/Clientes/roadmap.dart';
import 'package:cryptoplaymate1dm/Clientes/whitepaper.dart';
import 'package:cryptoplaymate1dm/Modelo/agentes_modelo.dart';
import 'package:cryptoplaymate1dm/olvidecontra.dart';
import 'package:cryptoplaymate1dm/team.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:location_permissions/location_permissions.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();
  // Initialize a new Firebase App instance
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {

        '/home': (BuildContext context) => home(),
        '/nft_members': (BuildContext context) => nft_members(),
        '/nft_power_cards': (BuildContext context) => nft_power_cards(),
        '/whitepaper': (BuildContext context) => whitepaper(),
        '/roadmap': (BuildContext context) => roadmap(),
        '/team': (BuildContext context) => team(),
        '/cryptactoe': (BuildContext context) => cryptactoe(),
        '/cryptactoe_settings': (BuildContext context) => cryptactoe_settings(),
        '/cryptactoe_game': (BuildContext context) => cryptactoe_game(),
        '/cryptactoe_lobby': (BuildContext context) => cryptactoe_lobby(),
        '/cryptactoe_instructions': (BuildContext context) => cryptactoe_instructions(),
        '/juegos_principal': (BuildContext context) => juegos_principal(),

      },
      title: 'Crypto Playmate',
      theme: ThemeData(

      ),
      home:
      //Inicio(),
      home(),
      // <--- App Clientes


    );
  }
}
