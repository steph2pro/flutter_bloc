
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../theme.dart';


class ThemePage extends StatelessWidget{
  const ThemePage({Key? Key}) : super(key:  Key);
  @override
  Widget build(BuildContext context){
    //le BlocBuilder contient la connexion avec le cubit et il se recharge a chaque changement d'etat
    return BlocBuilder<ThemeCubit,ThemeData>(
      builder: (context, themeState){
        //le themeState est le theme envoyer et qui est dynamique
        return MaterialApp(
          theme: themeState,
          debugShowCheckedModeBanner: false,
          home:  ThemeView(),
        );
      }
      );
  }
} 